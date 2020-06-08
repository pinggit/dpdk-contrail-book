# contrail dpdk day one book

* [contrail dpdk day one book](#contrail-dpdk-day-one-book)
    * [progress/meetings](#progressmeetings)
        * [0608 meeting minutes](#0608-meeting-minutes)
        * [0529 meeting minutes](#0529-meeting-minutes)
        * [0420 agenda/meeting minutes](#0420-agendameeting-minutes)
        * [0323 agenda/meeting minutes](#0323-agendameeting-minutes)
        * [0316: drafted TOC!](#0316-drafted-toc)
        * [0310: kicked off first book meeting!](#0310-kicked-off-first-book-meeting)
    * [table of content (Volume I) (2020-06-02)](#table-of-content-volume-i-2020-06-02)
        * [[underline]#chapter 1: SDN overview#* (ping)](#underlinechapter-1-sdn-overview-ping)
        * [[underline]#chapter 2: SDN dataplane fundamentals#* (laurent)](#underlinechapter-2-sdn-dataplane-fundamentals-laurent)
        * [[underline]#chapter 3: Contrail DPDK vrouter architecture#* (ping)](#underlinechapter-3-contrail-dpdk-vrouter-architecture-ping)
        * [[underline]#chapter 4: Contrail DPDK vrouter packet forwarding#*](#underlinechapter-4-contrail-dpdk-vrouter-packet-forwarding)
        * [[underline]#chapter 5: Contrail DPDK vrouter Performance fine tuning: memory and CPU considerations#*](#underlinechapter-5-contrail-dpdk-vrouter-performance-fine-tuning-memory-and-cpu-considerations)
        * [[underline]#chapter 6: Contrail DPDK vrouter Performance fine tuning: other considerations#*](#underlinechapter-6-contrail-dpdk-vrouter-performance-fine-tuning-other-considerations)
        * [[underline]#chapter 7: Contrail DPDK vrouter Deployment considerations#* (prz)](#underlinechapter-7-contrail-dpdk-vrouter-deployment-considerations-prz)
        * [[underline]#chapter 8: Contrail DPDK vrouter troubleshooting#* (laurent)](#underlinechapter-8-contrail-dpdk-vrouter-troubleshooting-laurent)
    * [table of content (Volume II)](#table-of-content-volume-ii)
    * [dpdk lab (1910)](#dpdk-lab-1910)
    * [dpdk lab (1904)](#dpdk-lab-1904)
        * [login](#login)
        * [iperf VM@dpdk-1](#iperf-vmdpdk-1)
        * [recvr VM@dpdk-3](#recvr-vmdpdk-3)
        * [runrapid.py](#runrapidpy)
* [the number of flows in the list need to be powers of 2, max 2^20](#the-number-of-flows-in-the-list-need-to-be-powers-of-2-max-220)
* [Select from following numbers: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524280, 1048576](#select-from-following-numbers-1-2-4-8-16-32-64-128-256-512-1024-2048-4096-8192-16384-32768-65536-131072-262144-524280-1048576)
    * [dpdk lab(2003)](#dpdk-lab2003)
    * [tools](#tools)
        * [git/github](#gitgithub)
        * [document format/editor recommendation](#document-formateditor-recommendation)
        * [asciidocFX](#asciidocfx)
        * [emf picture](#emf-picture)
        * [to png](#to-png)
        * [to svg](#to-svg)
    * [references/materials](#referencesmaterials)

target date: before July 1 2020

coauthors:  (as of March 17)

* kiran <kirankn@juniper.net>
* Przemyslaw Grygiel <pgrygiel@juniper.net>
* Laurent Antoine Durand <ldurand@juniper.net>
* ping song <pings@juniper.net>

## progress/meetings

### 0608 meeting minutes

between Laurent/ping.

* chapter 1: 
    * better to cut uncessary details about each SDN solutions. not too much
      related to the whole book context. 
    * extend more on Tungsten fabric only.
* chapter 2:
    * still in progress and need more adjustment
* idea of describing testing methodology/tools/diagrams. will talk about
  this further after main content is done
* still target 6/15 and see what we get. then determine the next.

### 0529 meeting minutes

between Laurent/Prz/ping.

* given that we have a tight schedule, we discussed how to proceed:
  1. stick to original plan?
  2. keep polishing/extend/adjust perf guide, turn it into a well organized, readable book

* earlier, my concern about #2 was that, in orignal TOC there are a lot of
  topics that are NOT covered by perf guide.
  * that is why I believed we should work on the planned chapters and copy
    contents from perf guide as needed.
  * that is also why I started to clean the perf guide, catching/raising
    confusions/errors/ambiguities/etc. so later reference will be easier

* we went through the initial TOC and checked what is missing in perf guide. 
  * we decided some topics can be cut, some chapters topics can be merged.
  * looking at the new TOC, again, we think it's easier to just extend/clean
    the perf guide.

* conclusion is we will proceed with the #2 approach - work on the perf guide.

next:

* since time schedule is tough we'll work on it together

* I will push and share the current version of perf guide that I've been
  working on so far.
  * I'm in the middle of 2nd read of it, and **not done yet**. 
  * in this version you will see a lot of contents reorganized/modified

* I will merge everything we've got so far
  * all good Q&As with Laurent (marked as "Q&A" in the doc). those are 
    topics where confusions will most likely come from (at least for me) 
  * the chapter 1 which is mostly finished.
  * Laurent's new document about "log analysis", as a new chapter

* currently it's only in pure text(adoc), but sounds to me folks still prefer
  word, so I'll convert it into word format and share.

* we'll split the chapters and each one of us will pick one or several
  chapters

btw I've removed all answered questions previously tagged with my name, only
left a few unanswered for easy search. it was just temporarily used for
convenience of quick search.

### 0420 agenda/meeting minutes

* first draft better done before June, so we have at least 1 month to review/update
* we can ask editor for more time if necessary

### 0323 agenda/meeting minutes

* consistent material - shared documents (done)
    - performance guide word
    - vrouter-arch ppt
    - dpdk vrouter internal details ppt
    - others?
        - [vmx guide (ping)](https://github.com/pinggit/vmx-tutorial/blob/master/vmx-tutorial.adoc)
* consistent data source - share lab access? - pyz to share
* consistent test method - share testing process?  - pyz to share
* split the task? - DONE, see below

* started with editor (Patrick)

### 0316: drafted TOC!

* discussed topic/TOC of the basic book
* advanced topics were held for advanced book
* private github folder built

### 0310: kicked off first book meeting!

* the book idea discussed 
* materials/references shared
* private google doc home folder built

## table of content (Volume I) (2020-06-02) 

### [underline]#chapter 1: SDN overview#* (ping)

    |what is SDN - the history
    . |Network device evolution
    . |Early age of SDN
    . |SDN startups acquired by major networks or virtualization vendors
    |SDN definition
    . |What is SDN?
    . |Traditional Network Planes and SDN layer
    . |the primary changes between SDN and traditional networking
    . |underlay vs overlay
    . |interfaces between layers
    . |SDN, openstack, NVF and data center
    |SDN solutions
    . |controllers
    . |SDN controller reports
    . |opendaylight (ODL)
    . |underlay network and overlay network
    . |OVN
    . . |OVS
    . . |OVN
    . |ONOS
    . |calico
    . . |calico introduction
    . . |calico archetecture
    . . . |felix (policy)
    . . . |Orchestrator plugin
    . . . |Etcd (database)
    . . . |BIRD (BGP)
    . . . |Confd
    . . . |CNI plugin
    . . . |IPAM plugin
    . . |calico workflow
    . |nuage VCP (Nokia)
    . . |VSD
    . . |VSC
    . . |VRS
    . |vmare NSX
    . |other solutions?
    . . |cisco: apic
    . . |openflood
    |Overview of Tungsten Fabric (TF)
    . |TF introduction
    . |TF components
    . . |The TF SDN controller
    . . |TF vRouter
    . . |TF controller components
    . . |TF vRouter components

### [underline]#chapter 2: SDN dataplane fundamentals#* (laurent)

    |Performance requirements
    |software architecture
    . |kernel
    . |kvm, QEMU
    . |Virtio
    . |DPDK
    . . |DPDK memory management
    . . |DPDK Poll Mode Drivers (PMD)
    . . |DPDK PMD Linux drivers
    . . . |UIO
    . . . |VFIO
    . . . |VFIO and IOMMU
    . . |DPDK capable NICs
    |hardware architecture
    . |NUMA
    . |Hyper-threading (HT)
    . |Huge pages
    . |hardware topology Discovery
    . |Physical CPU cores allocation planning
    . |Hyper Threading
    . |CPU isolation mechanisms
    . . |isolcpus mechanism configuration
    . . |Tuned CPU partitioning configuration
    |other hardware acceleration technologies
    . |sriov
    . |smartnic
    . |vDPA
    . |eBPF

### [underline]#chapter 3: Contrail DPDK vrouter architecture#* (ping)

    |Contrail vrouter architecture
    |vrouter and dpdk
    |DPDK threads and Contrail lcore numbering
    . |control threads
    . |Service and Processing threads
    . |forwarding threads
    |contrail dpdk version
    |Contrail related linux packages

### [underline]#chapter 4: Contrail DPDK vrouter packet forwarding#*

    |interfaces and queues
    |DPDK VM incoming traffic (from underlay network)
    . |step 1: NIC spreading (RSS)
    . |step 2: Polling core
    . |step 3: Forwarding core (MPLSoGRE)
    . |step 3: Forwarding core (MPLSoUDP/VxLAN)
    |DPDK VM outgoing traffic
    . |step 1: polling core
    . |step 2: RSS
    . |step 3: forwarding core
    |Packet Flow Summary (Based on R1910)
    |*Non DPDK VM* on DPDK vrouter
    |*[underline]#vNIC queues#*
    . |Single queue virtIO
    . |Multiqueue virtIO
    . |vNIC queues "queue size" configuration (RedHat OpenStack)
    . |vNIC queues "queue number" configuration (RedHat OpenStack)
    . |vNIC queues "queue number" changing
    . |vNIC queues verfication
    . |Multiqueue known limitations
    . . |Number of queues on VM instances
    . . |Indirect descriptors are not supported

### [underline]#chapter 5: Contrail DPDK vrouter Performance fine tuning: memory and CPU considerations#*

    |Performance tuning essentials
    |DPDK vrouter memory consideration
    . |Huge pages configuration
    . |hugepages for vrouter: `--socket-mem`
    . |Kubernetes: vrouter and Single Hugepage size
    . |IRQ setup
    |DPDK buffer size adjustment (mbuf)
    . |Intel recommendation
    . |Problem
    |Enable CPU performance mode
    |DPDK vRouter CPU assignment
    . |packet processing threads
    . |service and control threads <= 19.12
    . |service and control threads pinning >= 20.03
    . |Provisioning concerns
    . . |control and service threads >= 20.03
    . . |packet processing threads (forwarding cores)
    . |vRouter CPU numbers and single queue VM
    |DPDK vrouter CPU pinning and isolation
    . |tuned and isolcpus - RedHat
    . |isolcpus - Ubuntu
    . |RedHat OS scheduler CPU assignment (CPUAffinity)
    . |Nova CPU assignment (vcpu_pin_set)
    . |vRouter CPU assignment (CPU_LIST, SERVICE_CORE_MASK and DPDK_CTRL_THREAD_MASK)
    . |Check CPU pinning on all processes

### [underline]#chapter 6: Contrail DPDK vrouter Performance fine tuning: other considerations#*

    |vrouter physical bond setting
    |Manage a high flow environment
    . |Increase flow table size
    . |Flow setup rate optimisation
    . |Configuration of packet based processing
    |MPLSoUDP encapsulation Configuration
    . |Contrail Configuration
    . |SDN Gateway configuration: MPLSoUDP and Load Balancing

### [underline]#chapter 7: Contrail DPDK vrouter Deployment considerations#* (prz)

    |Define number of resources required for vRouter DPDK
    |Compute Node CPU capacity planning
    |vrouter forwarding cores capacity planning
    . |First step: expected network throughput
    . |Second step: VM DPDK support and multi queues capability
    . |Last step: sibling consideration
    |vrouter services cores capacity planning
    |typical CPU assignment
    |Performance tests figures (DPDK vrouter)
    |Jumbo frame support
    |Configure driver and network settings
    |Configure nova scheduler and flavor

### [underline]#chapter 8: Contrail DPDK vrouter troubleshooting#* (laurent)

    |vrouter fine tuning parameters (kernel and DPDK mode)
    . . |Generic vrouter dimensioning parameters
    . |Increase vrouter default value of dimensioning parameters (especially flow table)
    . |32 bits vrouter nexthop limit parameter (contrail release 19.11 and later)
    . |vrouter networking parameters (MTU)
    |vrouter DPDK fine tuning parameters
    . |DPDK vrouter parameters
    . |DPDK fine tuning rules (mainly for Intel NIC)
    . |DPDK vouter parameters provisioning
    . |DPDK vouter parameters configuration (5.0 and later versions)
    |DPDK vrouter log analysis
    |Connectivity Troubleshooting
    . |How to check vrouter connectivity
    . |vRouter vif queues setup
    . |vRouter vif queues activation
    |Packet drop troubleshooting
    . |Interface traffic counters
    . |Packet flow from a Compute Physical NIC to a VM NIC - counters placement
    . |Packet flow from a VM NIC to compute node Physical NIC - counters placement
    . |Traffic Load balancing on forwarding cores
    . |vrouter is dropping packets
    . |virtual instance is dropping packets
    . |Packet Drop statistics
    . |vif command: get-drop-stats option
    . |Dropstats and packet drop log utility
    |Faulty vrouter deployment troubleshooting
    ppendix
    |References

## table of content (Volume II)

* SRIOV
* Smart NIC
* Forwarding threads functionality
* Memory parameters
    * RSS Mempool
    * Frag mempool
    * Indirect mempool
* Virtio
    * Types of virtio
    * Mergeable buffers
    * Features
    * VMExits/syscalls
* Advanced parameters
    * Yield
    * Lcore queue size
    * Core pinning
    * Mempool, tx/rx descriptors
* Advanced troubleshooting
    * Types of drops in DPDK
    * Vif --list --rate
    * Parameters of vif --list
    * DPDK Info CLI (WIP)
* Advanced performance tuning
    * NUMA
    * NIC
    * Mempool size
    * Hugepage size
    * Static mapping of queues
    * Run-to-completion

## dpdk lab (1910)

If needed you can use following labs:

    19.12.L1:     10.85.32.6
    19.10:        10.85.224.2

    User:         root
    Password:     contrail123

From any of the hypervisor, run:

    ./ssh_director.sh
    Password:           contrail123

You’ll be in director node.
or:

    [root@dl6 ~]# ssh stack@192.168.122.3
    stack@192.168.122.3's password:
    Last login: Wed Apr 29 08:30:48 2020 from 192.168.122.1

    [stack@tripleo-director ~]$ source stackrc
    (undercloud) [stack@tripleo-director ~]$ openstack server list
    +--------------------------------------+--------------+--------+------------------------+----------------+---------------------+
    | ID                                   | Name         | Status | Networks               | Image          | Flavor              |
    +--------------------------------------+--------------+--------+------------------------+----------------+---------------------+
    | bc4d12bc-97f4-4c58-b04f-48efa13012ef | jnprct01     | ACTIVE | ctlplane=192.168.24.11 | overcloud-full | control             |
    | dfb7ac79-5438-4f39-a056-cf71596c863d | jnprcc01     | ACTIVE | ctlplane=192.168.24.21 | overcloud-full | contrail-controller |
    | 5e17284b-13ab-49ad-8091-e42b26766d4f | jnprctdpdk01 | ACTIVE | ctlplane=192.168.24.71 | overcloud-full | contrail-dpdk       |
    | c8bc39ec-8e4d-4e4b-83e8-8d6e3fcfe8c3 | jnprcp01     | ACTIVE | ctlplane=192.168.24.61 | overcloud-full | compute-kernel      |
    +--------------------------------------+--------------+--------+------------------------+----------------+---------------------+

    (undercloud) [stack@tripleo-director ~]$ ssh heat-admin@192.168.24.71

Don’t worry if you break one of them, I can easily rebuild it.
Normally a demo project with 4 Cirros VM should be deployed.
1 or 2 computes are DPDK, 1 or 2 othera are in Kernel mode.

Best regards,
Laurent DURAND

For more details on how to reach GUI or any node, have a look into:
https://drive.google.com/open?id=1n1D6ZwF61SSh1EqOmOM6OWBkZWfyULey

also see "dpdk performance tests.pptx"
https://docs.google.com/presentation/d/1eXxnvUzSYr-6ee3Ra04KNjpOznvwIpRycdsSMDb-LW8/edit#slide=id.g7dfd0123ae_1_300

## dpdk lab (1904)

### login

    [4/30 9:06 AM] Przemyslaw Grygiel
        please login to 10.87.5.122 root/c0ntrail
        tmux attach -t  ping 

    [contrail@5a3s21-node2 ~]# su contrail
    [contrail@5a3s21-node2 ~]$ ssh undercloud
    Last login: Mon Apr 27 02:53:39 2020 from 192.168.122.1

    [stack@undercloud ~]$ . overcloudrc
    (overcloud) [stack@undercloud ~]$ openstack server list
    ^Bc+--------------------------------------+-----------------+--------+-----------------------------------------------------------------+------------------+-----------------+
    | ID                                   | Name            | Status | Networks                                                        | Image            | Flavor          |
    +--------------------------------------+-----------------+--------+-----------------------------------------------------------------+------------------+-----------------+
    | 5a16ffad-f74b-4f36-aa51-aff4023e9d4c | traffic-swap    | ACTIVE | damian=192.168.1.105, 10.87.14.133                              | jtf-tests-ubuntu | jtf-tests-small |
    | 4bfeb455-9947-4150-b665-cf5efbbf8112 | traffic-gen     | ACTIVE | damian=192.168.1.104, 10.87.14.132                              | jtf-tests-ubuntu | jtf-tests-small |
    | b596906b-da5e-4d52-aadf-2e965a0809b8 | perf-test1-jump | ACTIVE | perf-test1-control=192.168.0.106                                | rapidVM-1908     | perf-test1-jump |
    | 897f238c-7bfb-41bd-acce-589c093263a1 | perf-test1-gen  | ACTIVE | perf-test1-control=192.168.0.104; perf-test1-data=192.168.1.104 | rapidVM-1908     | perf-test1-gen  |
    | 91c9a818-bb36-481d-9440-5d078f218047 | perf-test1-swap | ACTIVE | perf-test1-control=192.168.0.105; perf-test1-data=192.168.1.105 | rapidVM-1908     | perf-test1-swap |
    +--------------------------------------+-----------------+--------+-----------------------------------------------------------------+------------------+-----------------+

    (overcloud) [stack@undercloud ~]$ . stackrc

    (undercloud) [stack@undercloud ~]$ openstack server list
    +--------------------------------------+---------------------------+--------+-------------------------+----------------+---------------------------+
    | ID                                   | Name                      | Status | Networks                | Image          | Flavor                    |
    +--------------------------------------+---------------------------+--------+-------------------------+----------------+---------------------------+
    | 1f8396da-e6ad-4465-97fd-0696d104c0ef | overcloudmz5-afxctrl-2    | ACTIVE | ctlplane=192.168.213.52 | overcloud-full | AppformixController       |
    | 453b5d01-0717-4237-a808-33ee1897dd3b | overcloudmz5-ctrl-1       | ACTIVE | ctlplane=192.168.213.61 | overcloud-full | Controller                |
    | 52f29456-8f03-4b29-a8c1-cb515751c161 | overcloudmz5-compkernel-1 | ACTIVE | ctlplane=192.168.213.82 | overcloud-full | ComputeKernel             |
    | 59b57917-f00e-4f49-bafd-dfee5f512808 | overcloudmz5-ca-0         | ACTIVE | ctlplane=192.168.213.81 | overcloud-full | ContrailAnalytics         |
    | 743e62e1-637d-4758-8788-0b838274b6cf | overcloudmz5-compkernel-3 | ACTIVE | ctlplane=192.168.213.91 | overcloud-full | ComputeKernel             |
    | 28f22824-338e-4efa-b838-81bfedda240a | overcloudmz5-afxctrl-0    | ACTIVE | ctlplane=192.168.213.57 | overcloud-full | AppformixController       |
    | 89c8205f-579d-476c-b186-0a50a8640385 | overcloudmz5-compdpdk-1   | ACTIVE | ctlplane=192.168.213.70 | overcloud-full | ComputeDpdk               |
    | a162ebef-4543-449a-992d-5bf85ae15b13 | overcloudmz5-cc-1         | ACTIVE | ctlplane=192.168.213.58 | overcloud-full | ContrailController        |
    | 7d2f4d0b-7477-4557-9e1f-202df84eb293 | overcloudmz5-afxctrl-1    | ACTIVE | ctlplane=192.168.213.67 | overcloud-full | AppformixController       |
    | b66f61ca-5df2-4a02-bdf4-72643270c046 | overcloudmz5-ctrl-2       | ACTIVE | ctlplane=192.168.213.93 | overcloud-full | Controller                |
    | 75fc95df-2a5d-40be-acc6-aa345eaa7b15 | overcloudmz5-cadb-2       | ACTIVE | ctlplane=192.168.213.59 | overcloud-full | ContrailAnalyticsDatabase |
    | 7e62f96b-39d0-4926-a479-f6a484e185c9 | overcloudmz5-cc-0         | ACTIVE | ctlplane=192.168.213.65 | overcloud-full | ContrailController        |
    | b023371a-00cc-4c73-8a15-de95ae89ec31 | overcloudmz5-compdpdk-3   | ACTIVE | ctlplane=192.168.213.68 | overcloud-full | ComputeDpdk               |
    | dc416154-5384-4ba1-a9b0-144c1f58ebde | overcloudmz5-compkernel-2 | ACTIVE | ctlplane=192.168.213.73 | overcloud-full | ComputeKernel             |
    | 849d68d3-0121-4369-bd53-39b88d7f7fd5 | overcloudmz5-ctrl-0       | ACTIVE | ctlplane=192.168.213.75 | overcloud-full | Controller                |
    | 8998d326-6205-4f68-b7d3-e7b229a97b1c | overcloudmz5-compkernel-4 | ACTIVE | ctlplane=192.168.213.60 | overcloud-full | ComputeKernel             |
    | 0fb20bf6-2cae-42e8-86f4-98d521bca661 | overcloudmz5-ca-1         | ACTIVE | ctlplane=192.168.213.63 | overcloud-full | ContrailAnalytics         |
    | 69b317b6-a20a-44e2-915d-9f9de86a7d25 | overcloudmz5-compdpdk-2   | ACTIVE | ctlplane=192.168.213.51 | overcloud-full | ComputeDpdk               |
    | b6bb4e2f-7ddd-422f-9a97-4b9326bb2d80 | overcloudmz5-compkernel-0 | ACTIVE | ctlplane=192.168.213.55 | overcloud-full | ComputeKernel             |
    | d359aeff-6570-4034-841c-b0477611125b | overcloudmz5-compdpdk-0   | ACTIVE | ctlplane=192.168.213.64 | overcloud-full | ComputeDpdk               |
    | cd99dc8c-b60c-418a-9359-88f0bb75b11a | overcloudmz5-cc-2         | ACTIVE | ctlplane=192.168.213.77 | overcloud-full | ContrailController        |
    | 25678ff0-ee2c-420a-a0c4-1e91f08bc52e | overcloudmz5-cadb-1       | ACTIVE | ctlplane=192.168.213.56 | overcloud-full | ContrailAnalyticsDatabase |
    | 3558aeeb-97de-4c4c-b632-1a74775232ae | overcloudmz5-cadb-0       | ACTIVE | ctlplane=192.168.213.54 | overcloud-full | ContrailAnalyticsDatabase |
    | 0eece455-5967-4167-9c77-588b38fa70e4 | overcloudmz5-ca-2         | ACTIVE | ctlplane=192.168.213.62 | overcloud-full | ContrailAnalytics         |
    +--------------------------------------+---------------------------+--------+-------------------------+----------------+---------------------------+

    (undercloud) [stack@undercloud ~]$ openstack server list --name dpdk
    +--------------------------------------+-------------------------+--------+-------------------------+----------------+-------------+
    | ID                                   | Name                    | Status | Networks                | Image          | Flavor      |
    +--------------------------------------+-------------------------+--------+-------------------------+----------------+-------------+
    | 89c8205f-579d-476c-b186-0a50a8640385 | overcloudmz5-compdpdk-1 | ACTIVE | ctlplane=192.168.213.70 | overcloud-full | ComputeDpdk |
    | b023371a-00cc-4c73-8a15-de95ae89ec31 | overcloudmz5-compdpdk-3 | ACTIVE | ctlplane=192.168.213.68 | overcloud-full | ComputeDpdk |
    | 69b317b6-a20a-44e2-915d-9f9de86a7d25 | overcloudmz5-compdpdk-2 | ACTIVE | ctlplane=192.168.213.51 | overcloud-full | ComputeDpdk |
    | d359aeff-6570-4034-841c-b0477611125b | overcloudmz5-compdpdk-0 | ACTIVE | ctlplane=192.168.213.64 | overcloud-full | ComputeDpdk |
    +--------------------------------------+-------------------------+--------+-------------------------+----------------+-------------+

### iperf VM@dpdk-1

    (undercloud) [stack@undercloud ~]$ ssh 192.168.213.70
    Warning: Permanently added '192.168.213.70' (ECDSA) to the list of known hosts.
    Last login: Thu Apr 30 05:58:07 2020 from 192.168.213.1

    [root@overcloudmz5-compdpdk-1 heat-admin]# ssh root@169.254.0.5
    root@169.254.0.5's password:
    Last failed login: Tue May  5 14:07:07 UTC 2020 from 192.168.0.2 on ssh:notty
    There was 1 failed login attempt since the last successful login.
    Last login: Thu Apr 30 12:58:33 2020 from 192.168.0.2

    [root@perf-test1-jump ~]# cd /root/prox/helper-scripts/rapid

    [root@perf-test1-jump rapid]# ./runrapid.py --runtime 5
    Using 'rapid.env' as name for the environment
    Using 'basicrapid.test' for test case definition
    Using 'machine.map' for machine mapping
    Runtime: 5
    Latency percentile measured at 99%
    Connected to PROX on 192.168.0.104
    Connected to PROX on 192.168.0.105
    warmuptest
    flowsizetest
    +--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | UDP,    64 bytes, different number of flows by randomizing SRC & DST UDP port.                                                                                                             |
    +--------+------------------+-------------+-------------+-------------+------------------------+----------+----------+----------+-----------+-----------+-----------+-----------+-------+----+
    | Flows  | Speed requested  | Gen by core | Sent by NIC | Fwrd by SUT | Rec. by core           | Avg. Lat.|99 Pcentil| Max. Lat.|   Sent    |  Received |    Lost   | Total Lost|L.Ratio|Time|
    +--------+------------------+-------------+-------------+-------------+------------------------+----------+----------+----------+-----------+-----------+-----------+-----------+-------+----+
    |  16384 | 18.8%  2.805 Mpps|  2.805 Mpps |  2.805 Mpps |  2.805 Mpps | 1.9 Gb/s |  2.805 Mpps |   331 us |>  146 us |  2705 us |  23372284 |  23372283 |         1 |       NA  |  0.00 |  6 |
    |        |  Latency accuracy issue?:  33%                                                                                                                                           |
    +--------+------------------+-------------+-------------+-------------+------------------------+----------+----------+----------+-----------+-----------+-----------+-----------+-------+----+
    Waiting for child process 'PROX Testing on TestM1' to complete ...
    Child process 'PROX Testing on TestM1' completed successfully
    Child process 'PROX Testing on TestM2' completed successfully

### recvr VM@dpdk-3

    [stack@undercloud ~]$ ssh 192.168.213.68
    Warning: Permanently added '192.168.213.68' (ECDSA) to the list of known hosts.
    Last login: Thu Apr 30 06:03:33 2020 from 192.168.213.1
    [heat-admin@overcloudmz5-compdpdk-3 ~]$
    [heat-admin@overcloudmz5-compdpdk-3 ~]$
    [heat-admin@overcloudmz5-compdpdk-3 ~]$ sudo -i
    [root@overcloudmz5-compdpdk-3 ~]# virsh list
     Id    Name                           State
    ----------------------------------------------------
     1     instance-000005ed              running

    [root@overcloudmz5-compdpdk-3 ~]# vif --get 3 --rate

### runrapid.py

    [root@perf-test1-jump rapid]# ./runrapid.py -h
    usage: runrapid    [--version] [-v]
                       [--env ENVIRONMENT_NAME]
                       [--test TEST_NAME]
                       [--map MACHINE_MAP_FILE]
                       [--runtime TIME_FOR_TEST]
                       [--configonly False|True]
                       [--log DEBUG|INFO|WARNING|ERROR|CRITICAL]
                       [-h] [--help]

    Command-line interface to runrapid

    optional arguments:
      -v,  --version                Show program's version number and exit
      --env ENVIRONMENT_NAME        Parameters will be read from ENVIRONMENT_NAME. Default is rapid.env.
      --test TEST_NAME              Test cases will be read from TEST_NAME. Default is basicrapid.test.
      --map MACHINE_MAP_FILE        Machine mapping will be read from MACHINE_MAP_FILE. Default is machine.map.
      --runtime                     Specify time in seconds for 1 test run
      --configonly                  If this option is specified, only upload all config files to the VMs, do not run the tests
      --log                         Specify logging level for log file output, default is DEBUG
      --screenlog                   Specify logging level for screen output, default is INFO
      -h, --help                    Show help message and exit.

    [root@perf-test1-jump rapid]# cat basicrapid.test
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
    gencores = [3,2]
    latcores = [4,5,6,7]

    [TestM2]
    name = Swap
    config_file = swap.cfg
    cores = [2,3,4,5,6]

    [BinarySearchParams]
    drop_rate_threshold = 0.1
    lat_perc_threshold = 300
    lat_avg_threshold = 1000
    lat_max_threshold = 20000
    accuracy = 0.1
    startspeed = 100

    [test1]
    test=warmuptest
    flowsize=512
    packetsize=64
    warmupspeed=1
    warmuptime=2

    [test2]
    test=flowsizetest
    packetsizes=[64]
    # the number of flows in the list need to be powers of 2, max 2^20
    # Select from following numbers: 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524280, 1048576
    flows=[16384]

## dpdk lab(2003)

 
    [5/21 11:57 AM] Przemyslaw Grygiel
        ssh root@172.25.151.35 (c0ntrail123)
    [5/21 11:57 AM] Przemyslaw Grygiel
     top is rapid jump, bottom left compute with swap, bottom right compute with gen VM   

    tmux attach -t ping

    (undercloud) [stack@undercloud ~]$ openstack server list
    +--------------------------------------+--------------------------------+--------+-------------------------+----------------+---------------------------+
    | ID                                   | Name                           | Status | Networks                | Image          | Flavor                    |
    +--------------------------------------+--------------------------------+--------+-------------------------+----------------+---------------------------+
    | 1dd70e0f-0f70-4c5c-b0d4-cab16803aebd | overcloudjcx-ctrl-0            | ACTIVE | ctlplane=192.168.213.95 | overcloud-full | Controller                |
    | 22de73b4-08de-4ecd-8129-990e8be37097 | overcloudjcx-ca-2              | ACTIVE | ctlplane=192.168.213.71 | overcloud-full | ContrailAnalytics         |
    | 3433fe0b-e511-4e87-a451-92bc46c46d5c | overcloudjcx-ctrl-2            | ACTIVE | ctlplane=192.168.213.98 | overcloud-full | Controller                |
    | 4788a3ac-cfc0-4907-989c-aa2a19693832 | overcloudjcx-ctrl-1            | ACTIVE | ctlplane=192.168.213.93 | overcloud-full | Controller                |
    | 05b53e09-7090-45d4-9bb0-825d027228a1 | overcloudjcx-compdpdk2hw0-0    | ACTIVE | ctlplane=192.168.213.75 | overcloud-full | ComputeDpdk2Hw0           |
    | 1a2e4a2d-2c16-48d1-ae97-11ec27e6f46a | overcloudjcx-compkernel3hw1-0  | ACTIVE | ctlplane=192.168.213.88 | overcloud-full | ComputeKernel3Hw1         |
    | 3d0f6cab-e997-4491-ab86-8d6a922e6a4a | overcloudjcx-cc-2              | ACTIVE | ctlplane=192.168.213.64 | overcloud-full | ContrailController        |
    | 8780c734-c577-4233-855f-88f9f0c1d425 | overcloudjcx-afxctrl-0         | ACTIVE | ctlplane=192.168.213.91 | overcloud-full | AppformixController       |
    | fabed07f-7c7c-43a9-9120-c1ae593443b2 | overcloudjcx-afxctrl-2         | ACTIVE | ctlplane=192.168.213.59 | overcloud-full | AppformixController       |
    | 367c6027-fa27-48ca-b870-d45ec0293877 | overcloudjcx-cephstorage3hw0-0 | ACTIVE | ctlplane=192.168.213.69 | overcloud-full | CephStorage3Hw0           |
    | 3aff5a98-77c6-429e-92d1-ce8542d110af | overcloudjcx-compdpdk3hw2-0    | ACTIVE | ctlplane=192.168.213.76 | overcloud-full | ComputeDpdk3Hw2           |
    | 7229fd0d-e467-412e-8a72-35535baa0da8 | overcloudjcx-compdpdk3hw1-0    | ACTIVE | ctlplane=192.168.213.68 | overcloud-full | ComputeDpdk3Hw1           |
    | 81891963-3e1c-414a-95b3-b6be7362849b | overcloudjcx-afxctrl-1         | ACTIVE | ctlplane=192.168.213.85 | overcloud-full | AppformixController       |
    | a0c40c27-b863-475c-9dc6-0c6c83eb26aa | overcloudjcx-compdpdk1hw0-0    | ACTIVE | ctlplane=192.168.213.86 | overcloud-full | ComputeDpdk1Hw0           |
    | 78434a00-a6aa-4bdc-8a43-d94ec98458bb | overcloudjcx-cephstorage2hw0-0 | ACTIVE | ctlplane=192.168.213.60 | overcloud-full | CephStorage2Hw0           |
    | 9594cf3d-5461-4cdf-add4-e67fc0ae720f | overcloudjcx-cc-0              | ACTIVE | ctlplane=192.168.213.63 | overcloud-full | ContrailController        |
    | 811108ac-d1f7-453c-8dae-ec1971c4896d | overcloudjcx-compdpdk2hw0-1    | ACTIVE | ctlplane=192.168.213.67 | overcloud-full | ComputeDpdk2Hw0           |
    | 49550879-3586-427b-a696-d6dfb1501938 | overcloudjcx-ca-1              | ACTIVE | ctlplane=192.168.213.58 | overcloud-full | ContrailAnalytics         |
    | 723f61f5-62fc-409c-a974-9ce89e0da9c5 | overcloudjcx-cadb-0            | ACTIVE | ctlplane=192.168.213.72 | overcloud-full | ContrailAnalyticsDatabase |
    | af15411c-ab70-4450-932b-fe49071ee0f9 | overcloudjcx-cephstorage1hw0-0 | ACTIVE | ctlplane=192.168.213.52 | overcloud-full | CephStorage1Hw0           |
    | 8ca45f90-2f8b-42ca-b55f-67f9b8dc0769 | overcloudjcx-compdpdk3hw0-0    | ACTIVE | ctlplane=192.168.213.53 | overcloud-full | ComputeDpdk3Hw0           |
    | 27a836ae-f51f-4e79-8bff-d73c7b05548d | overcloudjcx-ca-0              | ACTIVE | ctlplane=192.168.213.62 | overcloud-full | ContrailAnalytics         |
    | d2d177df-84bc-4c4b-9bd3-f8276e48d6d7 | overcloudjcx-cc-1              | ACTIVE | ctlplane=192.168.213.74 | overcloud-full | ContrailController        |
    | 506c78df-6219-4999-b6c2-53c27e3776bf | overcloudjcx-cadb-2            | ACTIVE | ctlplane=192.168.213.51 | overcloud-full | ContrailAnalyticsDatabase |
    | 6557e674-8d4a-43a1-abe8-e2e7bccdeca1 | overcloudjcx-compdpdk3hw0-1    | ACTIVE | ctlplane=192.168.213.77 | overcloud-full | ComputeDpdk3Hw0           |
    | 953a9c70-5f10-4ef3-9479-16e91b59cbc0 | overcloudjcx-cadb-1            | ACTIVE | ctlplane=192.168.213.54 | overcloud-full | ContrailAnalyticsDatabase |
    | 9bba6a9c-e049-4561-bd0e-643a80f57771 | overcloudjcx-compdpdk2hw1-0    | ACTIVE | ctlplane=192.168.213.61 | overcloud-full | ComputeDpdk2Hw1           |
    | f149e6c6-0730-40b3-8c7e-ba68d464f8ae | overcloudjcx-compdpdk1hw1-0    | ACTIVE | ctlplane=192.168.213.56 | overcloud-full | ComputeDpdk1Hw1           |
    | 9d593fbb-49cc-4fdc-ab48-3b3dc23c7556 | overcloudjcx-compdpdk2hw1-1    | ACTIVE | ctlplane=192.168.213.66 | overcloud-full | ComputeDpdk2Hw1           |
    | 01a7e0cb-b3e9-4ddb-9c80-1e6d1d08050c | overcloudjcx-compdpdk1hw1-1    | ACTIVE | ctlplane=192.168.213.57 | overcloud-full | ComputeDpdk1Hw1           |
    +--------------------------------------+--------------------------------+--------+-------------------------+----------------+---------------------------+

## tools

### git/github

clone

    git clone https://github.com/pinggit/dpdk-contrail-book
    cd dpdk-contrail-book

EDIT

    (add/change/delete/etc)

commit

    git status
    git add -A .
    git commit -am "SOME SHORT COMMENTS"

push(publish)

    (if there is no conflict)
    git push 

    (if there is confliction - updates from others)

    git pull 
    git push

### document format/editor recommendation

* asciidoc/adoc (preferred)
    * e.g. https://github.com/pinggit/kubernetes-contrail-day-one/blob/master/kubernetes-contrail.adoc
    * can convert to word and all other docs
    * syntax and online tool https://asciidoclive.com/
    * editors: 
        * VIM (with Voom plugin https://www.vim.org/scripts/script.php?script_id=2657), 
        * asciidocFX (UI, real time preview)
        * etc

* MS word (also fine)
    * not github and change tracking friendly
    * I can convert to adoc and push into github

* markdown
    * should be ok, but I didn't use it to write complex stuffs
    * similiar to asciidoc, so let's use either asciidoc or word if possible

### asciidocFX

* support windows/linux/mac
* write in 'adoc' plain text format, but preview the rendered format in realtime
* install and open `ch1-sdn-overview.adoc` for quick referencing the syntax
* there is also a "cheatsheet" in asciidocFX.

![image](https://user-images.githubusercontent.com/2038044/79781265-3aa51e00-830b-11ea-810b-67512ffdadaa.png)

### `emf` picture

    #irfanview/inkscape: from UI, saveas, or

#### to png

works in everywhere

    #via pdf, best quality
    unoconv -f pdf -o image1.pdf image1.emf
    convert -density 300 -trim -bordercolor white -border 5 image1.pdf image1.png
    #or oneliner
    unoconv -f pdf -T 15 --stdout image1.emf | convert -density 300 -trim -bordercolor white -border 5 - image1.png
    #convert all files
    for file in *.emf; do echo "converting $file ..."; unoconv -f pdf -T 15 --stdout $file | convert -density 300 -trim -bordercolor white -border 5 - $(basename $file .emf).png; done

    #libreoffice
    $ libreoffice --headless --convert-to png image1.emf

    #inkscape: high dpi, but will loose color!
    $ inkscape -e image1.png -d 600 image1.emf

#### to svg

for web page, word has problem to display

    $ libreoffice --headless --convert-to svg image1.emf

    $ inkscape -z -l image8.svg image8.emf

## references/materials

* day one book workplace google folder: https://drive.google.com/drive/u/2/folders/1GtlqAhiY0u2DIClPVUwWsCTIsfHMv9uO
* References - DPDK day-one book - https://docs.google.com/document/d/1_V1zLgh8wiYyQz2KdV_dqQJe8j7hHvm4GQpsO4xVU7o/edit?usp=sharing

* DPDK performance guide - https://docs.google.com/document/d/1vbW7a2NDSbB0NBcYQzqyVkcH3E0g1pqj8PXQg4EMD28/edit?ts=5a845566
* CONTRAIL DPDK VROUTERS INTERNAL DETAILS - https://drive.google.com/open?id=1ITKvvPM19M1xF_bgYgi_x7hpvx6bFysB 
* DPDK architecture - https://static.sched.com/hosted_files/osndaysbangalore2019/c4/vrouter-arch1.pptx
* Performance tests (WIP) - https://docs.google.com/presentation/d/1eXxnvUzSYr-6ee3Ra04KNjpOznvwIpRycdsSMDb-LW8/edit#slide=id.g75c8716119_0_0
* Performance degradation analysis - https://docs.google.com/presentation/d/1UDzqtLgRKDO3azQS7VVsMF-y0WMJu6BLe24i_VudyMs/edit#slide=id.g75c8716119_0_0
* DPDK performance tests https://docs.google.com/presentation/d/1eXxnvUzSYr-6ee3Ra04KNjpOznvwIpRycdsSMDb-LW8/edit#slide=id.g6f0dcffbae_4_22
* perf report
