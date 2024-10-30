# DB Server Spec

Single site VM with VM protection on prod

-   -   new prod db - [mydb-liva04.ad.ucl.ac.uk](http://mydb-liva04.ad.ucl.ac.uk/) CNAME mysql-a04.ucl.ac.uk (access for rg-itsd-learning-apps)
    -   new pre-prod db [mydb-prea02.ad.ucl.ac.uk](http://mydb-prea02.ad.ucl.ac.uk/) (access for rg-itsd-learning-apps)

Prod and pre-prod server will have matching specification as below:

CPU:

Architecture:        x86\_64

CPU op-mode(s):      32-bit, 64-bit

Byte Order:          Little Endian

CPU(s):              4

On-line CPU(s) list: 0-3

Thread(s) per core:  1

Core(s) per socket:  1

Socket(s):           4

NUMA node(s):        1

Vendor ID:           GenuineIntel

CPU family:          6

Model:               85

Model name:          Intel(R) Xeon(R) Gold 6242 CPU @ 2.80GHz

Stepping:            7

CPU MHz:             2793.437

BogoMIPS:            5586.87

Hypervisor vendor:   VMware

Virtualization type: full

L1d cache:           32K

L1i cache:           32K

L2 cache:            1024K

L3 cache:            22528K

NUMA node0 CPU(s):   0-3

MEMORY:

              total        used        free      shared  buff/cache   available

Mem:           23Gi        15Gi       219Mi       1.0Mi       7.2Gi       7.1Gi

Swap:         4.0Gi       437Mi       3.6Gi

Disk storage on /data: 3TB
