# RHEL7 Pre-Prod refresh

1) Put site in maintenance using the .htaccess redirects to the isd maintenance page

2) Put PP monitoring as "Scheduled downtime" on [thruk](https://network-alerting.ucl.ac.uk/thruk/cgi-bin/status.cgi?style=combined&hst_s0_hoststatustypes=4&hst_s0_servicestatustypes=31&hst_s0_hostprops=10&hst_s0_serviceprops=0&svc_s0_hoststatustypes=3&svc_s0_servicestatustypes=28&svc_s0_hostprops=10&svc_s0_serviceprops=10&svc_s0_hostprop=2&svc_s0_hostprop=8&title=All+Unhandled+Problems)

3) ensure MIM/CMIS cron is disabled on PP

4) start database backup on prod slave - mdl-db02.ad.ucl.ac.uk - for moodle\_live and moodle\_int\_management

5) On mdl-admin02p.ad.ucl.ac..uk run this in a tmux session:

``` java
cd /moodlefs/ 
rsync -aPv utnvdkw@mdl-admin02.ad.ucl.ac.uk:/moodlefs/ .
```

6) Once rsync complete, then delete all of the caching directories:

``` java
rm -rf /moodlefs/cache/*
rm -rf /moodlefs/localcache/*
rm -rf /moodlefs/temp/*
rm -rf /moodlefs/sessions/*
rm -rf /moodlefs/muc/*
```

7) Deleting the MUC config in the muc folder, is very important to ensure the Redis application caching does not try to use prod - and therefore poison production's cache with out of date settings from PP.

This will make Moodle default back to using NFS for application caching. At this point the only way to deal with this is to manually reconfigure Pre-Prod application cache config at <https://moodle-pp.ucl.ac.uk/cache/admin.php> by:

-   adding Redis instances for mdl-backend01.ad.ucl.ac.uk and mdl-backend-02.ad.ucl.ac.uk
-   setting the prefix to be different to the previous PP before the refresh or restarting redis on the backend servers - to ensure the cachestore is clean/cleared out
-   setting the redis instance as the default store for application caching

8) running

9)

10)
