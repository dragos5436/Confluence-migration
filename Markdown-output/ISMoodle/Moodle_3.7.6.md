# Moodle 3.7.6

Expected Release date: ~~11th~~ 9th May 2020 9pm-10pm

Deployment lead: AS

1) Update core Moodle to 3.7.6 without a full rebuild - <https://docs.moodle.org/dev/Moodle_3.7.6_release_notes>

``` java
cd /data/apache/htdocs/moodle && git fetch && git checkout -b MOODLE_37_UCL_REL376 origin/MOODLE_37_UCL_REL376
```

2) Backport DB Read/Write splitting functionality in Moodle as Core Hack 9

<https://tracker.moodle.org/browse/MDL-19711>

``` java
cd /data/apache/htdocs/moodle && git fetch && git checkout -b MOODLE_37_UCL_REL376_DB_SLAVE origin/MOODLE_37_UCL_REL376_DB_SLAVE
```
