# Moodle VM's Retention/Backups/Recovery

1.  ***Type of backups being made? & How often?***
    [moodle-admin.ucl.ac.uk](http://moodle-admin.ucl.ac.uk) Client Daily 12pm
    [moodle-d.ucl.ac.uk](http://moodle-d.ucl.ac.uk) Client Daily 11pm
    [moodle-e.ucl.ac.uk](http://moodle-e.ucl.ac.uk) Client Daily 11pm
    [moodle-f.ucl.ac.uk](http://moodle-f.ucl.ac.uk) Client Daily 11pm
    [moodle-g.ucl.ac.uk](http://moodle-g.ucl.ac.uk) VM Daily \*
    [moodlevm-nfs.ucl.ac.uk](http://moodlevm-nfs.ucl.ac.uk) Client Daily 2am
    [moodle-db-a.ucl.ac.uk](http://moodle-db-a.ucl.ac.uk) Both Daily 2am
    [moodle-db-b.ucl.ac.uk](http://moodle-db-b.ucl.ac.uk) Both Daily 10pm
    \* Determined by the TSMVE Schedule
2.  ***What is the retention of these backups?***
    VM retention is 50 days but a new retention policy will be introduced to ISD of Small 10 days or Medium(default): 30 days or Large: 90 days. 
3.  ***For disaster recover, what is the brief process involved to restore a vm? i.e. do we just log a ticket with you? other teams need to be involved?***
    Log Ticket to S&V.
4.  ***What is the SLA for restoring a vm?***
    This will depend on what is the cause of the issue.  If files need to be restored from last night, then this can be done within a day.  If the VM is corrupted, then this can take longer.
5.  ***If we just require a specific file/folder restored, can you easily obtain a previous version or the whole vm would need to be restored***

With TSMVE backup a single file or group of files can be restored by mounting the VM disk. The whole VM does not have to be restored
