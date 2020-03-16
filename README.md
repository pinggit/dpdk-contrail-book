# contrail dpdk day one book

## table of content (Volume I)

* Overview of Software Defined Networking
    * Different SDN solutions
    * Overview of Tungsten Fabric
    * Dataplane in SDN
    * Openstack integration
        * Neutron
        * Nova
* Compute nodes in TF
    * Introduction to TF vRouter
        * Interfaces
        * Packet processing pipeline
        * Variants (DPDK/Kernel/Smart NIC/SRIOV)
        * Use-cases
* Overview of DPDK and DPDK vrouter
    * DPDK overview
    * vRouter and DPDK
* DPDK vRouter Architecture
    * Role of various threads
    * Pipelining v/s run to completion
    * Memory mapping of VNF
    * Virtio
    * Interaction with Qemu
* Openstack integration
    * Neutron plugin
    * Nova Vif plugin
* DPDK vRouter Performance tuning
    * Core Pinning
    * Hugepages
    * Number of threads
    * System calls
    * CPU partitioning
    * Multiqueue virtio
* DPDK vRouter Deployment
    * TripleO
    * Juju
    * Contrail cloud???
    * DPDK vRouter Troubleshooting
    * Configuration
    * Qemu/libvirt/virsh
    * Drops
    * Pinning
    * hugepages

<!--
## details

1. DPDK vrouter architecture description
    vrouter agent and vrouter dataplane
    vif 1, vif 2
    physical connectivity
    vif 0
    virtual connectivity
    vif N and virtio 
    packet processing
    2 steps : polling  then processing
    different scenarios (depending encap)
    NIC and vNIC queue
    High level description of Q (focus on sizing)
 
2. DPDK vrouter fine tuning
    2.1 CPU pinning
    2.2 HT and Sibling
    2.3 Queue sizing
    2.4 new parameters
            - internal hash suppression
    - yield desactivation
    - Q accurate pining
    2.4 flow mode specific tuning
            Pin more CPU on service threads
            Increase flow table size
3 - DPDK vrouter fine trouble shouting
  	In a shot, what we have to look into logs
      And some specific tools usage (packet drop log, vrouter info, …)
 
4 – DPDK fine tuning Scenarios
  	- when to use sibling
  	- when to desactivate internal hash
-->

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
