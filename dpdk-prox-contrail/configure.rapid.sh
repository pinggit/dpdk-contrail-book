#!/bin/bash
mkdir -p /root/.ssh
sed -i -e 's#/home/centos#/root#' /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/runrapid.py
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/basicrapid.test << EOF
[DEFAULT]
name = BasicSwapTesting
number_of_tests = 2
total_number_of_test_machines = 2
prox_socket = true
prox_launch_exit = true
lat_percentile = 99
tasks=[0]

[TestM1]
name = Generator
config_file = gen.cfg
dest_vm = 2
gencores = [%gen_list%]
latcores = [%lat_list%]

[TestM2]
name = Swap
config_file = swap.cfg
cores = [%swap_list%]

[BinarySearchParams]
drop_rate_threshold = %drop_rate%
lat_perc_threshold = 300
lat_avg_threshold = 1000
lat_max_threshold = 20000
accuracy = 0.1
startspeed = %start_speed%

[test1]
test=warmuptest
flowsize=512
packetsize=64
warmupspeed=1
warmuptime=2
[test2]

test=flowsizetest
packetsizes=[%packet_sizes%]
# the number of flows in the list need to be powers of 2, max 2^20
# Select from following numbers: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65535, 131072, 262144, 524280, 1048576
flows=[%flows%]
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/l2zeroloss.test << EOF
[DEFAULT]
name = L2BasicSwapTesting
number_of_tests = 2
total_number_of_test_machines = 2
prox_socket = true
prox_launch_exit = true
lat_percentile = 99
tasks=[0]

[TestM1]
name = Generator
config_file = l2gen.cfg
dest_vm = 2
gencores = %gen_list%
latcores = %lat_list%

[TestM2]
name = Swap
config_file = l2swap.cfg
cores = %swap_list%

[BinarySearchParams]
drop_rate_threshold = 0
lat_perc_threshold = 300
lat_avg_threshold = 1000
lat_max_threshold = 20000
accuracy = 0.1
startspeed = %start_speed%

[test1]
test=warmuptest
flowsize=512
packetsize=64
warmupspeed=1
warmuptime=2
[test2]

test=flowsizetest
packetsizes=[%packet_sizes%]
# the number of flows in the list need to be powers of 2, max 2^20
# Select from following numbers: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65535, 131072, 262144, 524280, 1048576
flows=[%flows%]
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/rapid.env << EOF
[rapid]
loglevel = DEBUG
version = 19.6.30
total_number_of_machines = 2
total_number_of_test_machines = 2

[M1]
name = %gen_name%
admin_ip = %admin_gen_ip%
dp_ip = %gen_ip%
dp_mac = %gen_mac%

[M2]
name = %swap_name%
admin_ip = %admin_swap_ip%
dp_ip = %swap_ip%
dp_mac = %swap_mac%

[ssh]
key = /root/.ssh/id_rsa
user = root
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/swap.cfg << EOF
[eal options]
-n=4 ; force number of memory channels
no-output=no ; disable DPDK debug output

[lua]
dofile("parameters.lua")

[port 0]
name=if0
mac=hardware
vlan=yes
set mtu=9000

[defaults]
mempool size=8K

[global]
name=\${name}

[core 0]
mode=master

[core \$cores]
name=swap
task=0
mode=swap
sub mode=l3
rx port=if0
tx port=if0
local ipv4=\${local_ip}
drop=no
;arp update time=1
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/l2swap.cfg << EOF
[eal options]
-n=4 ; force number of memory channels
no-output=no ; disable DPDK debug output

[lua]
dofile("parameters.lua")

[port 0]
name=if0
mac=hardware
rx desc=2048
tx desc=2048
vlan=yes
set mtu=9000

[defaults]
mempool size=8K

[global]
name=\${name}

[core 0]
mode=master

[core \$cores]
name=swap
task=0
mode=swap
rx port=if0
tx port=if0
drop=no
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/gen.cfg << EOF
[eal options]
-n=4 ; force number of memory channels
no-output=no ; disable DPDK debug output

[lua]
dofile("parameters.lua")

[port 0]
name=p0
rx desc=2048
tx desc=2048
vlan=yes
set mtu=9000

[variables]
\$mbs=8

[defaults]
mempool size=8K

[global]
name=\${name}
;heartbeat timeout=\${heartbeat}

[core 0]
mode=master

[core \$gencores]
name=p0
task=0
mode=gen
sub mode=l3
tx port=p0
bps=1250000000
pkt inline=00 00 00 00 00 00 00 00 00 00 00 00 08 00 45 00 00 2e 00 01 00 00 40 11 f7 7d \${local_hex_ip} \${dest_hex_ip} 0b b8 0b b9 00 1a 55 7b
pkt size=60
;gateway ipv4=\${gw_ip}
local ipv4=\${local_ip}
min bulk size=\$mbs
max bulk size=16
drop=yes
lat pos=42
accuracy pos=46
packet id pos=50
signature=0x98765432
signature pos=56
;arp update time=1

[core \$latcores]
name=lat
task=0
mode=lat
sub mode=l3
rx port=p0
lat pos=42
accuracy pos=46
packet id pos=50
signature=0x98765432
signature pos=56
accuracy limit nsec=1000000
;latency bucket size=\${bucket_size_exp}
;arp update time=1
EOF
cat > /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/l2gen.cfg << EOF
[eal options]
-n=4 ; force number of memory channels
no-output=no ; disable DPDK debug output

[lua]
dofile("parameters.lua")

[port 0]
name=p0
rx desc=2048
tx desc=2048
vlan=yes
set mtu=9000

[variables]
\$mbs=8

[defaults]
mempool size=8K

[global]
name=\${name}

[core 0]
mode=master

[core \$gencores]
name=p0
task=0
mode=gen
tx port=p0
bps=1250000000
pkt inline=\${dest_hex_mac} 00 00 00 00 00 00 08 00 45 00 00 2e 00 01 00 00 40 11 f7 7d \${local_hex_ip} \${dest_hex_ip} 0b b8 0b b9 00 1a 55 7b
pkt size=60
;gateway ipv4=\${gw_ip}
local ipv4=\${local_ip}
min bulk size=\$mbs
max bulk size=16
drop=yes
lat pos=42
accuracy pos=46
packet id pos=50
signature=0x98765432
signature pos=56

[core \$latcores]
name=lat
task=0
mode=lat
rx port=p0
lat pos=42
accuracy pos=46
packet id pos=50
signature=0x98765432
signature pos=56
EOF
ln -s /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/swap.cfg /root/swap.cfg
ln -s /opt/openstackrapid/samplevnf/VNFs/DPPD-PROX/helper-scripts/rapid/gen.cfg /root/gen.cfg
cp /home/centos/.ssh/authorized_keys /root/.ssh/authorized_keys
chown -R root:root /root/.ssh
cat > /root/.ssh/config << EOF
Host *
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null
EOF
