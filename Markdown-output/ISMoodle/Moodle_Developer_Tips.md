# Moodle Developer Tips

#### 1) How to login or disable Maintenance mode on moodle-v2.6.2

- From web browser : <http://siteaddress/admin.php>

That will redirect to /login/index.php where administrators can login while moodle is on maintenance mode

- From config

Within /config.php add a new entry

``` java
$CFG->maintenance_enabled = '0'
```

where 0= maintenance mode Off, 1 = maintenance mode On

- From command line

Check root/admin/cli/maintenance.php script for comments and brief explanations.

"Maintenance mode settings.

Current status displayed if not option specified.

``` java
Options:

--enable              Enable CLI maintenance mode

--enablelater=MINUTES Number of minutes before entering CLI maintenance mode

--enableold           Enable legacy half-maintenance mode

--disable             Disable maintenance mode

-h, --help            Print out this help
```

Navigate to root/admin/cli/ directory:

``` java
php maintenance.php --disable
```

#### 2) Divert emails to specific emailid

- Within /config.php add a new entry

``` java
$CFG->divertallemailsto = 'test@test.com'; 
```

 

#### 3) Debugging 

<https://docs.moodle.org/26/en/Debugging> 

To get all sql queries written to adodb\_logsql - add the following lines (note that by default, only queries that take longer than 0.05 seconds are logged - so you can set the minimum time to 0.0 to force everything to be logged) to moodle/config.php. NB - this table soon fills up...

``` java
$CFG->logsql = true;
$CFG->logsqlmintime = 0.0;
```

 

Force debugging mode within config.php file. This overrides settings in site administration. This is particularly useful if admin can't get to UI.

``` java
// Force a debugging mode regardless the settings in the site administration
@error_reporting(E_ALL | E_STRICT); // NOT FOR PRODUCTION SERVERS!
@ini_set('display_errors', '1'); // NOT FOR PRODUCTION SERVERS!
$CFG->debug = (E_ALL | E_STRICT); // === DEBUG_DEVELOPER - NOT FOR PRODUCTION SERVERS!
$CFG->debugdisplay = 1; // NOT FOR PRODUCTION SERVERS!
 
// You can specify a comma separated list of user ids that that always see
// debug messages, this overrides the debug flag in $CFG->debug and $CFG->debugdisplay
// for these users only.
$CFG->debugusers = '2';
```

 

#### 4) Quiz attempts stuck in 'never submitted' 

Moodle tracker- <https://tracker.moodle.org/browse/MDL-35745>

Moodle forum discussion - <https://moodle.org/mod/forum/discuss.php?d=212819>

-   Work out the ids for the problem quiz attempts. You can get this by going to the quiz reports, and reviewing the attempts. Hovering over the attempts should give quiz 'attempt\_id'.

    ``` java
    #get quiz stuck in 'never submitted'/'abandoned' state
    select * from mdl_quiz_attempts where id=<quiz_attempt_id>;
                --OR--
    #get ids using quizid
    select * from mdl_quiz_attempts where quiz=<quiz_id> and state='abandoned';
    ```

-   Update and set the status of quiz attempts to 'inprogress'

    ``` java
    update mdl_quiz_attempts set state='inprogress' where id=<quiz_attempt_id>;
    ```

-   Within settings of quiz set- 'when time expires' field to 'open attempts are submitted automatically'
-   Login as student with status as 'in progress'
-   That will update quiz status to finished

#### 5) Rsync data from live to moodle-uat

 

``` java
[root@moodle-uat ~]# rsync -n -avz --delete moodlevm-nfs:/data/moodle/ /data/moodle247
 
# Make sure MUC cache config from live is removed
$ cd /data/moodle247/muc
$ mv config.php config_300115.php
```

     

    If errors within browser as below 

``` java
Fatal error: $CFG->dataroot is not writable, admin has to fix directory permissions! Exiting.
```

Fix directory permissions

``` java
Change the ownership/group of sub-directories within data/moodle247 to ccspmdu:ccsp
$ chown -R ccspmdu /data/moodle247
$ chgrp -R ccsp /data/moodle247

Change the ownership of /moodle247/ directory to 'ccspmdu'
$ chown ccspmdu /data/moodle247
```

 

     

 

 
