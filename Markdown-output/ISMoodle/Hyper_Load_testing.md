# Hyper Load testing

PP Load thing AT AND AFTER VERY HIGH LOAD:

-   <https://moodle.org/mod/forum/discuss.php?d=328300#p1320902>→ have applied on moodle-pp,  issue became only intermittent, 
-   setting $CFG-&gt;localcache dirs on app servers and deleting again cache/localcache/muc/temp/lock → seems stable now

    ``` java
    cd /data/moodle && mkdir localcache && chcon -R --type=httpd_sys_rw_content_t localcache && ls -lah && ls -lahZ
    ```

    PP configs now have:

    ``` java
    //EXPERIMENTAL SETTINGS FOR PP LOAD ISSUE
    $CFG->lock_factory = "\\core\\lock\\db_record_lock_factory";
    $CFG->localcachedir = '/data/moodle/localcache';
    //END OF EXPERIMENTAL SETTINGS FOR PP LOAD ISSUE
    ```

rebooting NFS remains the definite & permanent clearer of the issue though

<https://docs.moodle.org/37/en/Performance_recommendations>

<https://moodle.org/plugins/report_benchmark>

<https://docs.moodle.org/37/en/Large_installations>
