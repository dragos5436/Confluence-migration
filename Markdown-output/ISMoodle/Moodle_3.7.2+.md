# Moodle 3.7.2+

Re-scheduled update to Moodle 3.7.2 which was delayed due to change freeze until 11th October. Including a couple of database fix & clearing caches

1) Update Moodle to version 3.7.2+ 8th October 2019 weekly release (from 3.7.1)

Of particular interest:

-   <https://tracker.moodle.org/browse/MDL-66071> (already hot-fixed)
-   <https://tracker.moodle.org/browse/MDL-66026> (workaround in place)
-   <https://tracker.moodle.org/browse/MDL-66498> (see 3) below)

``` java
cd /data/apache/htdocs/moodle && git fetch && git checkout -b MOODLE_37_UCL_REL372+08102019 origin/MOODLE_37_UCL_REL372+08102019
```

2) Fix table collation issue

This was caused by incorrect default settings on the new RHEL7 database servers which were fixed on Thursday 26th September.

``` java
php admin/cli/mysql_collation.php --collation=utf8mb4_unicode_ci
```

3) Analytics cleanup long running DB query

<https://tracker.moodle.org/browse/MDL-66498> - we have disabled the task (\\core\\task\\analytics\_cleanup\_task) for now.

Must re-enable the task once on 3.7.3 or have cherry-picked these commits in - <https://github.com/dmonllao/moodle/compare/MDL-66498_37~3...MDL-66498_37> - 

All of these analytics related database queries have been flagged as inefficient and contributing to the CPU load on the DB servers which we had to double in order to handle our peak load during start of term. Bringing in this fix will solve the issue but also allow us to see clearer if there is any other CPU intensive database queries.

4) Clear caches across all servers


