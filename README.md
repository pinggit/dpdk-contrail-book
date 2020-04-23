# contrail dpdk day one book

* [contrail dpdk day one book](#contrail-dpdk-day-one-book)
    * [progress/meetings](#progressmeetings)
        * [0327 agenda/meeting minutes](#0327-agendameeting-minutes)
        * [0323 agenda/meeting minutes](#0323-agendameeting-minutes)
        * [0316: drafted TOC!](#0316-drafted-toc)
        * [0310: kicked off first book meeting!](#0310-kicked-off-first-book-meeting)
    * [table of content (Volume I)](#table-of-content-volume-i)
        * [details](#details)
    * [table of content (Volume II)](#table-of-content-volume-ii)
    * [lab resources (from Laurent)](#lab-resources-from-laurent)
    * [tools](#tools)
        * [git/github](#gitgithub)
        * [document format/editor recommendation](#document-formateditor-recommendation)
        * [asciidocFX](#asciidocfx)
        * [emf picture](#emf-picture)
    * [references/materials](#referencesmaterials)

target date: before July 1 2020

coauthors:  (as of March 17)

* kiran <kirankn@juniper.net>
* Przemyslaw Grygiel <pgrygiel@juniper.net>
* Laurent Antoine Durand <ldurand@juniper.net>
* ping song <pings@juniper.net>


## progress/meetings

### 0420 agenda/meeting minutes

* first draft better done before June, so we have at least 1 month to review/update
* we can ask editor for more time if necessary

### 0327 agenda/meeting minutes



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

## table of content (Volume I)

* Overview of SDN       (prz, ping)
    * Different SDN solutions (contrail, calico, nuage, OVN)
    * Overview of Tungsten Fabric
    * Dataplane in SDN
    * Openstack integration (brief)
        * Neutron
        * Nova

* Compute nodes in TF  (prz, kiran)
    * Introduction to TF vRouter
        * Interfaces
        * Packet processing pipeline
        * Variants (DPDK/Kernel/Smart NIC/SRIOV)
    * Use-cases (prz)
        * vendor x : why select multiq, isolation, bgpaas, HAs..etc
        * ATT(vMME, nimbus)

* Overview of DPDK and DPDK vrouter (kiran, prz)
    * DPDK overview
    * vRouter and DPDK

* DPDK vRouter Architecture (core) (kiran, prz)
    * Role of various threads
    * Pipelining v/s run to completion
    * Memory mapping of VNF
    * Virtio
    * Interaction with Qemu

* Openstack integration (detail) (core) (kiran, prz)
    * Neutron plugin
    * Nova Vif plugin

* DPDK vRouter Performance tuning (core) (damian, prz)
    * Core Pinning
    * Hugepages
    * Number of threads
    * System calls
    * CPU partitioning
    * Multiqueue virtio

* DPDK vRouter Deployment (Damian)
    * TripleO
    * Juju
    * Contrail cloud???
    * Ansible (OSA: OpenStack Ansibile) laurent
    * HELM? laurent:seems more and more used. If not too long to explain, it could be worth. 

* DPDK vRouter Troubleshooting (joint work)
    * Configuration
    * Vrouter info command I guess
    * Qemu/libvirt/virsh
    * Drops
    * Pinning
    * hugepages
    * DPDK logs analysis (laurent)
      (what to check into DPDK logs: vrring activation, queue, and setup info)

### details

* DPDK vrouter architecture description
    * vrouter agent and vrouter dataplane
        * vif 1, vif 2
    * physical connectivity
        * vif 0
    * virtual connectivity
        * vif N and virtio 
    * packet processing
      * 2 steps : polling  then processing
        * different scenarios (depending encap)
    * NIC and vNIC queue
      * High level description of Q (focus on sizing)
 
* DPDK vrouter fine tuning
    * CPU pinning
    * HT and Sibling
    * Queue sizing
    * new parameters
        * internal hash suppression
        * yield desactivation
        * Q accurate pining
    * flow mode specific tuning
        * Pin more CPU on service threads
        * Increase flow table size

* DPDK vrouter fine trouble shouting
    * In a shot, what we have to look into logs
    * And some specific tools usage (packet drop log, vrouter info, ...)
 
* DPDK fine tuning Scenarios
    * when to use sibling
    * when to desactivate internal hash

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

## lab resources (from Laurent)

    If needed you can use following labs:
    19.12.L1:     10.85.32.6
    19.10:        10.85.224.2

    User:         root
    Password:     contrail123

    From any of the hypervisor, run:
    ./ssh_director.sh
    Password:           contrail123

    You’ll be in director node.


    Don’t worry if you break one of them, I can easily rebuild it.
    Normally a demo project with 4 Cirros VM should be deployed.
    1 or 2 computes are DPDK, 1 or 2 othera are in Kernel mode.

    Best regards,
    Laurent DURAND

For more details on how to reach GUI or any node, have a look into:
https://drive.google.com/open?id=1n1D6ZwF61SSh1EqOmOM6OWBkZWfyULey


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
