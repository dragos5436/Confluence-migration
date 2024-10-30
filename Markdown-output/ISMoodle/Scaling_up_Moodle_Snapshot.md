# Scaling up Moodle Snapshot

1) RAM (8GB) and swap (4GB) is maxed out 100% on a daily basis

increase RAM to 20GB

2)CPU - only have 4 CPUs

Add 8 CPUs

→ approx equivalent of 2 prod app servers

3)Redis caching

Add 2 instances of Redis:

-512MB for Session store

-2GB for Application caching

To be used by the most recent instance of Moodle (i.e. 19/20 copy in July this year). This will speed up page load times significantly and reduce server load.

→ add a further 4GB RAM to support this

Total increase:

-16GB RAM

-8 CPUs

-Redis instances
