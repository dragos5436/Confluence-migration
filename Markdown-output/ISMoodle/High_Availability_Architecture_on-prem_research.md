# High Availability Architecture on-prem research

## I\] Redis

<https://ucldata.atlassian.net/browse/LNA-301>

Conclusion: we need 3 datacentres in order for quorum of Redis Sentinel to work, we only have 2 and that's unlikely to change so can't proceed.

## II\] NFS

IBM GPPS / IBM Spectrum was discussed but this was not right for the relative small size of data for Moodle and the intensive nature of parts of the datastore.

It still seems like a clustered NFS implementation would be feasible since that is what our cloud setup will do but not that specific. 

This is probably the closest - <https://www.lisenet.com/2018/configure-active-passive-nfs-server-on-a-pacemaker-cluster-with-puppet/> but we would be looking at active/active.

## III\] Database

InnoDB Cluster on MySQL 8.0 is being pursued and so far all indications are that this would work but in a single master, many slaves design. So not possible to have a master in each datacenter.


