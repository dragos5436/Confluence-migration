# Data Recovery process (from full-VM TSM backups)

NFS server data should be restored into a new VM - Gabor has confirmed that even at short notice the 3-4TB of data required should be available on a short term basis to complete a restore.

Database, would need to be recovered on existing prod or pre-prod database server.

Didn't clarify with Tony how we would setup an app server to get all 3 things working together, but should be straightforward from the puppet profiles to do that when it occurs.

Also need to make sure to follow step 7 of the [RHEL7 Pre-Prod refresh](RHEL7_Pre-Prod_refresh) process to ensure we don't poison prod caching.


