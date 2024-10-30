# cron job

-   1 [What is the Moodle cron job?](#cronjob-WhatistheMoodlecronjob?)
-   2 [Where is the cron job on our servers?](#cronjob-Whereisthecronjobonourservers?)
-   3 [How can it be restarted/stopped?](#cronjob-Howcanitberestarted/stopped?)
-   4 [What might stop the cron job running?](#cronjob-Whatmightstopthecronjobrunning?)
-   5 [If the cron job is not running what is affected?](#cronjob-Ifthecronjobisnotrunningwhatisaffected?)
-   6 [We have numerous Moodle servers (live, test etc) is it OK if the cron job is running on multiple servers?](#cronjob-WehavenumerousMoodleservers(live,testetc)isitOKifthecronjobisrunningonmultipleservers?)
-   7 [Checking the cron job logs](#cronjob-Checkingthecronjoblogs)
-   8 [Information on the cron job on the Moodle web pages](#cronjob-InformationonthecronjobontheMoodlewebpages)

[Plugin functions run during cron](Plugin_functions_run_during_cron)

# What is the Moodle cron job?

cleanup functions, email functions or anything that needs to be run on a regular basis.

There is a second, small cron job to remove old logs. Run every fifteen minutes (the same frequency as the main cron job), it removes moodlecron-\* log files older than 7 days from /var/log.

# Where is the cron job on our servers?

Due to the server load balancing (SLB) where moodle-a, moodle-b and moodle-c all hold the moodle application files and one of these servers is called when the user types <http://moodle.ucl.ac.uk&nbsp>; in the browser, we only need the cron job to run on one of these servers. **The cron job runs on moodle-a**.

In the general cron directory, `/etc/cron.d`, is a file called `moodle-main`. This file contains instructions for the cron daemon to run the following script:

``` java
/etc/cron.moodle/moodle.main
```

every 15 minutes.

The file `/etc/cron.moodle/moodle.main` is the file that is most edited. It contains two commands, one for the moodle cron script with logging enabled:

``` java
/usr/local/bin/safe_moodle_cron.sh
```

and one for a moodle cron script with logging disabled:

``` java
/applications/php/bin/php -f /data/apache/htdocs/moodle/admin/cron.php
```

# How can it be restarted/stopped?

If there is a need to stop the moodle cron job, and neither Austin nor Adrian are around, anyone in Systems Integration can do this. (The cron job is owned by root and so only someone from Systems can restart the cron job.)

The cron job is in the directory `/etc/cron.moodle`, in the file `moodle.main`, and just needs a single line commented out. This is done by commenting out the current (logging/non-logging) script in `/etc/cron.moodle/moodle.main`.

The cron job is currently running on `moodle-a`.

# What might stop the cron job running?

If the disk runs out of space the cron job can't run.

The cron logs are stored on `moodle-a`.

There used to be just 2G available for all the various temporary and log files on moodle-a - both `/tmp` and `/var/log` were on the root volume.

As of 27 Oct 08 `/tmp` now has its own volume, at 3G; this is only 6% used at the moment.

The root partition has also been expanded, to 6G; this is 37% full at the moment.

The [course backups](FOR_INFO_-_Backups_and_Archives) (currently set to run on Tues/Sat) create large cron log files which have filled up the log space and stopped the cron job running. As of 27 Oct 08 Austin has put in some log rotation functionality which clears up the large log files and makes sure there is enough space for new logs to be created.

# If the cron job is not running what is affected?

-   [Forums](Forums) are not sent out as email messages (this is particularly crucial as users rely on this feature to share information with their students)
-   the IMS import does not run
-   the staff import ([ucl-mdl-usersync.php](user_account_import)file) does not run

# We have numerous Moodle servers (live, test etc) is it OK if the cron job is running on multiple servers?

As long as each server is talking to a different database then this is OK. If you have two cron jobs both trying to read from the same database this causing problems.

When we moved the live moodle service from one server to another in early 2008 we forgot to stop the cron job on the old server, so then the new server and the old server were both looking at the same MySQL database and trying to send emails out etc. This was a big problem as it meant that forum posts were being sent out intermittently depending on which servers cron job got to the database first and were therefore unreliable.

# Checking the cron job logs

login to the server (eg moodle-admin is the server where the moodle crom runs)

1.  Enter

    ``` java
    tail -f /var/log/moodlecron/moodle-main.log
    ```

Also see [forum](Forums) for how to see if forum messages have been posted

# Information on the cron job on the Moodle web pages

-   <http://docs.moodle.org/en/Cron>
-   From the Moodle Forums about slow running cron jobs: <http://moodle.org/mod/forum/discuss.php?d=97457>
-   From the Moodle forums about what to do if your cron job has been switched off and when you switch it back on will it send old messages <http://moodle.org/mod/forum/discuss.php?d=97684>

