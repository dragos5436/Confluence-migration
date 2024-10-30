# ISD HIS - Server request process

**N.B. When buying new servers the new online form will cover steps 1-4  - [Server Virtualisation request old process](https://wiki.ucl.ac.uk/display/ISV/Server+Virtualisation+request+old+process) at  <https://vm-request.ucl.ac.uk/>**

**Decommissioning requests self service - <https://ucl--bmcservicedesk.eu7.visual.force.com/apex/selfservicenew#/support/search/decom>**

** Business Unit and Service ID** are supplied by the **Architecture** team - [Service IDs and Business Unit Allocation](https://wiki.ucl.ac.uk/display/ISD/Service+IDs+and+Business+Unit+Allocation)

For Additional Moodle App Servers, setup is taken care of by Puppet profile.

However, a ticket needs to logged to Networks - <https://ucl--bmcservicedesk.eu7.visual.force.com/apex/selfservicenew#/support/search/firewall>  grant internet access to the new servers - so they can clone from github and for puppet to run happily 

Next steps - not part of the official process but clearly an aspect one needs to know:

5) Ticket is picked up & HIS get in touch to discuss what servers do and how they should be configured - back & forth over Teams / face to face meetings in SMLG 

6) VMs handed over (SSH access granted) with correct specs & config, ticket closed, further issues to be logged as tickets

7)  Continue conversing in Teams about niggles with whatever new technology we are the first to use in ISD (RHEL7, AD groups, file permissions, galera cluster, glusterfs, ...)

8) Go-Live

9) Move into just logging tickets


