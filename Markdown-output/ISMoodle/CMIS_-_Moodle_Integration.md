# CMIS - Moodle Integration

-   -   [Codebase and database details](#CMISMoodleIntegration-Codebaseanddatabasedetails)
-   [Test Script](#CMISMoodleIntegration-TestScript)
-   [Design Document](#CMISMoodleIntegration-DesignDocument)
-   [Configure Moodle with REST web-service](#CMISMoodleIntegration-ConfigureMoodlewithRESTweb-service)
    -   [Test web-service from Moodle](#CMISMoodleIntegration-Testweb-servicefromMoodle)
    -   [Test web-service client – using token:-](#CMISMoodleIntegration-Testweb-serviceclient–usingtoken:-)
    -   [Test webservice client – using simple method:-](#CMISMoodleIntegration-Testwebserviceclient–usingsimplemethod:-)
-   [Configuration: moodle-admin-dev/uat/live sits\_filter2](#CMISMoodleIntegration-Configuration:moodle-admin-dev/uat/livesits_filter2)
-   [Configuration: Moodle](#CMISMoodleIntegration-Configuration:Moodle)
-   [Error or Exception logging](#CMISMoodleIntegration-ErrororExceptionlogging)
-   [Known Issues](#CMISMoodleIntegration-KnownIssues)
-   [Test scenarios](#CMISMoodleIntegration-Testscenarios)
    -   [1. Add groups](#CMISMoodleIntegration-1.Addgroups)
    -   [2. Delete groups](#CMISMoodleIntegration-2.Deletegroups)
    -   [3. Add deleted modules](#CMISMoodleIntegration-3.Adddeletedmodules)
    -   [Troubleshooting Tips](#CMISMoodleIntegration-TroubleshootingTips)
-   [Running the cmis group import script manually](#CMISMoodleIntegration-Runningthecmisgroupimportscriptmanually)
    -   [Amendments to CMIS group import](#CMISMoodleIntegration-AmendmentstoCMISgroupimport)
    -   [Example](#CMISMoodleIntegration-Example)
    -   [The clue is in the email](#CMISMoodleIntegration-Theclueisintheemail)

# Codebase and database details

| Environment                      | Codebase                                                                                     | Database                                                     | Moodle instance                     |
|----------------------------------|----------------------------------------------------------------------------------------------|--------------------------------------------------------------|-------------------------------------|
| moodle-admin-dev                 
                                   
 path - /usr/local/sits\_filter2/  | <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_develop> | Server - [moodle-dev.ucl.ac.uk](http://moodle-dev.ucl.ac.uk) 
                                                                 
   db name - moodle\_sits\_management\_dev2                      
                                                                 
   db user - sitsfilteruser                                      
                                                                 
   db pwd - keepass                                              | <https://v289.moodle-dev.ucl.ac.uk> |
| moodle-admin-uat                 
                                   
 path - /usr/local/sits\_filter2/  | <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_release> | Server - moodle-uat.ucl.ac.uk                                
                                                                 
   db name - moodle\_sits\_management\_uat2                      
                                                                 
   db user - sitsfilteruser                                      
                                                                 
   db pwd - keepass                                              | https://v289.moodle-uat.ucl.ac.uk   |
| moodle-admin-pp                  
                                   
 path - /usr/local/sits\_filter2   | <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_release> | Server - moodle-db-pp                                        
                                                                 
   db name - moodle\_sits\_management\_pp2                       
                                                                 
   db user - moodleuser                                          
                                                                 
   db pwd - keepass                                              | https://moodle-pp.ucl.ac.uk         |
| moodle-live                      
                                   
 path - /usr/local/sits\_filter2/  | <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_release> | Server - moodle-db-a                                         
                                                                 
   db name - moodle\_sits\_management\_2                         
                                                                 
   db user -moodleuser                                           
                                                                 
   db pwd -                                                      | https://moodle.ucl.ac.uk            |

# Test Script

    The test script (.xlsx file) can be found here.

# Design Document

The design document can be found [here](https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_develop/documentation/ELE-Integration/project/CMIS-Moodle%20Integration%20Design.doc) .

# Configure Moodle with REST web-service

Follow the steps mentioned under web services overview: `Site administration > Plugins > Web services > Overview`

1.  Enable web services.

        Site administration > Advanced features > Enable web services

2.  **Enable protocols.**

        Site administration > Plugins > Web services > Manage protocols > Enable 'REST protocol'

3.  **Enable web service authentication.**

        Site administration > Plugins > Authentication > Manage authentication > enable 'web services authentication'

4.  **Create a 'webservice' user.**  This represents the user who will be controlling Moodle.

        Site administration > Users > Accounts > Add a new user

    Specify a username (e.g. `webservice_user`), a password (save in KeePass), firstname, surname and email (`webservice_user.nobody@ucl.ac.uk`). The email address will need to be updated via the db after creating the user to `nobody@ucl.ac.uk`.

         

    ``` sql
    UPDATE mdl_user SET email = 'nobody@ucl.ac.uk' WHERE email = 'webservice_user.nobody@ucl.ac.uk';
    ```

5.  **Create a new 'webservice' role.**

        Site administration > Users > Permissions > Define roles

6.  **Select 'Add a new Role'.**

    Use role or archetype: 'ARCHETYPE: Manager' (**N.B.:** This is the entry under 'Role archetype', towards the bottom of the dropdown list).

    Leave all default capabilities for Manager.

    Enter a 'short name' = 'webservice' and Custom full name = 'Webservice role', custom description = 'Used for webservice'.

    Enable capability for web service: webservice/REST = Allow

7.  **Assign ‘webservice’ role to ‘webservice’ user as system role.**

        Site administration > Users > Permissions > Assign system roles

8.  **Add a service.**

        Site administration > Plugins > Web services > External services

        Name: 'cmis webservice', shortname: 'cmiswebservice'

        Enabled: yes

        Authorised users only: yes

        Required capability: no required capability

        [Save]

9.  **Select external functions.**

        Site administration > Plugins > Web services > External services

    Click on ‘Functions’ link for cmis webservice - 'Add functions'

    Select the following functions:-

    `  core_group_create_groups`

    `  core_group_add_group_members`

    `  core_group_delete_group_members`

    `  core_group_delete_groups`

    `  core_group_get_group_members`

    `  core_group_get_groups`

    `  core_group_get_course_groups`

    `  core_group_get_course_groupings`

    `  moodle_group_get_groups`

    `  core_group_assign_grouping`

    `  core_group_create_groupings`

    `  core_group_delete_groupings`

    `  core_group_get_groupings`

    `  core_enrol_get_enrolled_users`

    ``

10. **Select authorized users for this web-service.**

        Site administration > Plugins > Web services > External services

    Click on 'Authorised users' link.

    Select authorised user (e.g. webservice user), and save.

11. **Create a token for a user.**

        Site admin > Plugins > Web services > Manage tokens

    User: webservice\_user

    Service : cmis webservice

    Note: Add an IP restriction when implementing on Moodle prod (haven't tried this yet but would be more secure).

12. **Check that a token is generated.**

        Site administration > Plugins > Web services > Manage tokens

    **N.B.**: You will need to be logged-in as the user who created the token to see it.

13. **Login as 'webservice' user and accept policy agreement.**

          ...Or update directly in the database (set mdl\_user.policyagreed = 1 for the 'webservice' user).

### **Test web-service from Moodle**

testing on dev and uat

The dev and uat servers now have valid certificates but prior to that, the function simpletest in /data/apache/moodle-vhosts/v287/webservice/rest/locallib.php had to be modified. This modification is no longer necessary.

### **Test web-service client – using token:-**

1.  Site administration > Development > Web service test client

2.  Set the following values...
    Authentication method: token
    Protocol: REST protocol
    Function: select external function to test (eg: moodle\_groups\_get\_groups)
3.  Set the following values...
    Enter token (from `Site administration > Plugins > Web services > Manage tokens`). **N.B.**: You will need to be logged-in as the user who created the token to see it.
    Enter groupids\[0\]  eg. 60435 (you need to use a valid group id: `SELECT id FROM mdl_groups ORDER BY id ASC;`)
    Click 'Execute'.

### **Test webservice client – using simple method:-**

1.  Site administration > Development > web service test client

2.  Set the following values...
    Authentication method:simple
    Protocol: REST protocol
    Function: select external function to test (eg: moodle\_groups\_get\_groups)
3.  Set the following values...
    Ensure that the authentication method for webservice user is set to 'web services authentication'. You need do to this in the users account
    Enter webservice username and password (wsusername = 'webservice\_user', wspassword = &lt;in KeePass&gt;).
    Enter groupsids\[1\]=60435
    Click 'Execute'.

**
**

**Webservice details on el-int environment (<http://el-int.moodle-dev.ucl.ac.uk>) :-**

`Username: webservice`

`Password: Testing1!`

`Role:     webservice`

# Configuration: `moodle-admin-dev/uat/live sits_filter2`

1.  Make sure there is a database config details for CMIS system under `/usr/local/sits_filter2/app/Config/database.php` on moodle-admin.

    **moodle-dev**

    ``` php
     public $cmis = array(
            'datasource' => 'Database/Oracle',
            'driver'     => 'oracle',
            'connect'    => 'oci_pconnect',
            'persistent' => false,
            'host'       => 'localhost',
            'login'      => 'moodlemgr',
            'password'   => '', // '[Oracle cmis schema password in keepass]'
            'database'   => 'GEND',
            'prefix'     => '',
            'schema'     => 'moodlemgr',
            'charset'    => 'AL32UTF8', // 'WE8ISO8859P1', // this is the database's actual charset but it causes a lot of problems
        );
    ```

    **moodle-uat**

    ``` php
    public $cmis = array(
            'datasource' => 'Database/Oracle',
            'driver'     => 'oracle',
            'connect'    => 'oci_pconnect',
            'persistent' => false,
            'host'       => 'localhost',
            'login'      => 'moodlemgr', // '[Oracle cmis schema login]'
            'password'   => '', // '[Oracle cmis schema password in keepass]'
            'database'   => 'GENU', // '[Oracle cmis database]'
            'prefix'     => '',
            'schema'     => 'moodlemgr', // '[Oracle cmis schema]'
            'charset'    => 'AL32UTF8', // 'WE8ISO8859P1', // this is the database's actual charset but it causes a lot of problems
        );
    ```

2.  Token, server details and external Moodle functions for web-service are mapped under /usr/local/sits\_filter2/app/Controller/RestConfig.php on moodle-admin. For example -

    ToDo

    This file will need updating before copying to production. This is because we haven't yet generated the token for moodle on production

    ``` php
    public $rest= array(
            'moodle_home' => array(
                'token' => 'cf365f491d2a562c7137fab278991b39',
                'server' => 'http://localhost/moodle/moodlefork',
                'restformat' => 'json'
            ),
            'moodle_work' => array(
                // 'token' => 'ec5be7ac0690a07cb2c658157aee3c87',
                'token' => '1ee863b8cf10f0552555bc2b0e340921',
                'server' => 'http://localhost/moodle/moodlefork',
                'restformat' => 'json'
            ),
            'el-int' => array(
                'token' => '03ae8a8ae1e55de4f84fc097e7786405',
                'server' => 'https://el-int.moodle-dev.ucl.ac.uk',
                'restformat' => 'json'
            ),
            'moodle-dev' => array(
                'token' => '93afb54682786dfa56bdb2a38f3fc20b',
                'server' => 'https://ele.moodle-dev.ucl.ac.uk',
                'restformat' => 'json'
            ),
            'moodle-uat' => array(
                'token' => 'e074cae6dc505e90c63efd997777d2ce',
                'server' => 'https://ele.moodle-uat.ucl.ac.uk',
                'restformat' => 'json'
            ),
            'moodle-pp' => array(
                'token' => 'df946be16f7d0aeb4a657be8bb5ec79e',
                'server' => 'https://moodle-pp.ucl.ac.uk',
                'restformat' => 'json'
            )
        );
    ```

There should be a script called 'config\_settings.php' under /usr/local/sits\_filter2/app/Config/config\_settings.php. 

**moodle-dev**

``` java
$config = array(
    // Set which REST config to use from \app\Controller\RestConfig.php
    // 'restconfig' => 'el-int'
    'restconfig' => 'moodle-dev'
);
```

**moodle-uat**

``` java
$config = array(
    // Set REST config to use from \app\Controller\RestConfig.php
    'restconfig' => 'moodle-uat'
);
```

**moodle-pp**

``` php
$config = array(
    // Set REST config to use from \app\Controller\RestConfig.php
    'restconfig' => 'moodle-pp'
);
```

**moodle prod**

``` java
$config = array(
    // Set REST config to use from \app\Controller\RestConfig.php
    'restconfig' => 'moodle'
);
```

# Configuration: Moodle

A new entry within Moodle `config.php` script.

``` php
// 'idnumber' field required to access student details from Moodle via web service
$CFG->showuseridentity = 'idnumber,email,department';
```

# Error or Exception logging

Database and rest exceptions are setup under `\app\Config\bootstrap.php` on moodle-admin.

``` php
/**
 * Logging db errors/exceptions specific to cmis functionality.
 * Log file location - /tmp/logs/db_error.log
 */

CakeLog::config('dberror', array(
    'engine' => 'File',
    'types' => array('warning', 'error', 'critical', 'exception'),
    'file' => 'db_error',
    'scopes' => array('dberror')
));

/**
 * Logging REST errors/exceptions specific to cmis functionality.
 * Log file location - /tmp/logs/rest_error.log
 */
CakeLog::config('resterror', array(
    'engine' => 'File',
    'types' => array('warning', 'error', 'critical', 'exception'),
    'file' => 'rest_error',
    'scopes' => array('resterror')
));
```

**
**

**DB exceptions**

These are logged under `     /usr/local/sits_filter2/app/tmp/logs/db_error.log   `

****

**REST errors/exceptions**

Logged in a file under `     /usr/local/sits_filter2/app/tmp/logs/rest_error.log   `
Logged in table db table called 'rest\_error\_logs'.
An email is sent out with details of exeptions.

# Known Issues

1.  If the group is deleted from Moodle, adding members to groups throws REST exception as the group doesn't exist
2.  If the group with same name as groupcode exists in Moodle- those groups are ignored and are logged as duplicate groups
3.  If there are students/tutors not enrolled to a course in Moodle- those students/tutors are not added into groups
4.  If groups are renamed in Moodle- they are not reflected in cmis db as the moodle groupid is taken into account than the groupname
5.  No differentiation between CMIS groups and groups created locally in Moodle
6.  In the current system students/staff are not enrolled to a course if they aren't already enrolled. As a result those members are ignored from adding into any groups in a course
7.  2 modules with same groupcode mapped in a same course. REST throws an exception.

# Test scenarios

### 1. Add groups

-   Map 'group import' for a module from Moodle's portico\_enrollment block
-   Check if the module is mapped for the courseid within 'mapped\_modules' table. group\_import should be set to 'ADD'
-   `$ cd /usr/local/sits_filter2`
-   `$ cake RunCmis runCmisCronJob`
-   Check if groups, groupings and group members are added to Moodle course.

### 2. Delete groups

-   Uncheck group\_imports checkbox for a mapped module in a course in Moodle.
    -   Uncheck 'group import' for a module from Moodle's portico\_enrolment block.
    -   Check if 'group\_import' is set to 'RMV' for the courseid within 'mapped\_modules' table.
    -   `$ cd /usr/local/sits_filter2`
    -   `$ cake RunCmis runCmisCronJob`
    -   Check if groups, groupings and group members are added to Moodle course.
-   Remove entire module mapping from a course in Moodle

    -   Delete mapped module from a course.
    -   Check if 'group\_import' and 'mapping\_action' is set to 'RMV'  for the courseid within 'mapped\_modules' table.
    -   `$ cd /usr/local/sits_filter2`
    -   `$ cake RunCmis runCmisCronJob`
    -   Check if groups, groupings and group members are deleted from Moodle course.

### 3. Add deleted modules

-   Add recently deleted module to the same course via portico\_enrolments block.
-   Check if the module is mapped for the courseid within 'mapped\_modules' table. group\_import should be set to 'ADD'.
-   `$ cd /usr/local/sits_filter2`
-   `$ cake RunCmis runCmisCronJob`
-   Check if groups, groupings and group members are added back to the Moodle course.

### Troubleshooting Tips

1) I can't see any groups created in Moodle, even though 'group\_import' is selected for a course

-   Check if 'group\_import' is set to 'ADD' and 'mapping\_action' is set to 'ADD' in mapped\_modules table. 

        select * from mapped_modules where moodle_id=<course_id>;

<!-- -->

-   If above seems to be as expected, check if there are groups associated for the modules mapped in a course 

        select * from cmis_groups_dump where modulecode=<modulecode/s>;

-   Check if groupid exists in cmis\_groups table

        SELECT * from cmis_groups where groupid=<groupid>;

-   If there are groups associated with mapped module in dump, check if groups associated to the module exist in cmis\_groups\_course table. They should have moodlegroupid and moodlegroupingid associated to the course and module

        SELECT * from cmis_groups_course where courseid=<course_id> and module_code=<module_code>;

-   Check if there are any REST error in rest\_error\_logs

        select * from rest_error_logs;

-   Check if there are any errors in /tmp/logs/db\_error.log and /tmp/logs/rest\_error.log
-   check if there was any corrupt data in cmis\_error\_data\_dump table

        select * from cmis_error_data_dump;

2) I can't see groups being deleted from course, even though I have removed 'group\_import' for the module in a course

-   Check if 'group\_import' is set to 'RMV'  in mapped\_modules table. 

        select * from mapped_modules where moodle_id=<course_id>;

<!-- -->

-   If there are groups associated with mapped module in dump, check if groups associated to the module exists in cmis\_groups\_course table. There should be no record of the group 

        SELECT * from cmis_groups_course where courseid=<course_id> and module_code=<module_code>;

-   Check for group in cmis\_groups\_deleted

        select * from cmis_groups_deleted where courseid= and modcode=;

-   Check if there are any RESTexceptions in rest\_error\_logs

        select * from rest_error_logs;

-   Check if there are any errors in /tmp/logs/db\_error.log and /tmp/logs/rest\_error.log
-   check if there was any corrupt data in cmis\_error\_data\_dump table

3) CMIS Groups Import failed

If you receive an email with the following message:

``` java
----- Time :: 02:17:23.000000 . Error while running Cmis Import Cron Job ------
 
Code :: 200
 
Message body :: {"exception":"dml_missing_record_exception","errorcode":"invalidrecord","message":"Can not find data record in database table groups.","debuginfo":"SELECT id, courseid FROM {groups} WHERE id = ?\n[array (\n  0 => 70373,\n)]"}
```

it means that a group that was created by the CMIS groups import has been deleted in moodle. The way to resolve this is to login to moodle-db-a run the following sql and then run the runCmisCronJob script manually:

For each query below, run the commented out select to see if any duplicates/errors exist -- if it doesn't return anything, there's no need to run the delete script. If you do get something returned, then run the corresponding delete script.

**SQL statements**

``` java
[ccspsql@moodle-db-a ~]$ mysql -usitsfilteruserp -p
mysql> use  moodle_sits_management_2;

/*
  DELETE GROUPS IMPORT RECORDS IF THEY WEREN'T ACTUALLY CREATED IN MOODLE


  SELECT gc.*
  FROM cmis_groups_course gc
  LEFT OUTER JOIN moodle_live.mdl_groups gr
  ON gr.courseid = gc.courseid
  AND gr.id = gc.moodlegroupid
  WHERE gr.id is null;
*/

DROP TABLE IF EXISTS cmis_groups_course_backup;

CREATE TABLE cmis_groups_course_backup AS
SELECT * FROM cmis_groups_course;

DELETE FROM cmis_groups_course
WHERE id IN (
  SELECT gc.id
  FROM cmis_groups_course_backup gc
  LEFT OUTER JOIN moodle_live.mdl_groups gr
  ON gr.courseid = gc.courseid
  AND gr.id = gc.moodlegroupid
  WHERE gr.id is null
);

/*
  DELETE GROUP TUTOR IMPORT RECORDS IF THEY WEREN'T ACTUALLY CREATED IN MOODLE
  -- run the following select to see if any exist
  -- if it doesn't return anything, there's no need to run the delete script.

  SELECT tg.*
  FROM cmis_tutgroupmembers tg
  LEFT OUTER JOIN moodle_live.mdl_groups gr
  ON gr.courseid = tg.courseid
  AND gr.id = tg.moodlegroupid
  WHERE gr.id is null;
*/

DROP TABLE IF EXISTS cmis_tutgroupmembers_backup;

CREATE TABLE cmis_tutgroupmembers_backup AS
SELECT * FROM cmis_tutgroupmembers;

DELETE FROM cmis_tutgroupmembers
WHERE id IN (
  SELECT tg.id
  FROM cmis_tutgroupmembers_backup tg
  LEFT OUTER JOIN moodle_live.mdl_groups gr
  ON gr.courseid = tg.courseid
  AND gr.id = tg.moodlegroupid
  WHERE gr.id is null
);

/*
  DELETE GROUP STUDENT ASSIGNMENT IMPORT RECORDS IF THEY WEREN'T ACTUALLY CREATED IN MOODLE
  -- run the following select to see if any exist
  -- if it doesn't return anything, there's no need to run the delete script.
 
  SELECT gm.*
  FROM cmis_groupmembers gm
  LEFT OUTER JOIN moodle_live.mdl_groups_members mg
  ON mg.userid = gm.userid
  AND mg.groupid = gm.moodlegroupid
  WHERE mg.id is null;
*/

DROP TABLE IF EXISTS cmis_groupmembers_backup;

CREATE TABLE cmis_groupmembers_backup AS
SELECT * FROM cmis_groupmembers;

DELETE FROM cmis_groupmembers
WHERE id IN (
  SELECT gm.id
  FROM cmis_groupmembers_backup gm
  LEFT OUTER JOIN moodle_live.mdl_groups_members mg
  ON mg.userid = gm.userid
  AND mg.groupid = gm.moodlegroupid
  WHERE mg.id is null
);
```

Then login to moodle-admin as ccspmdl and run the script manually:

If you receive an email with the following message:

``` java
----- Time :: 02:17:35.000000 . Error while running Cmis Import Cron Job ------
 
Code :: 200
 
Message body :: {"exception":"dml_missing_record_exception","errorcode":"invalidrecord","message":"Can not find data record in database table course.","debuginfo":"SELECT * FROM {course} WHERE id = ?\n[array (\n  0 => XXXXXX,\n)]"}
```

It means a whole course has been deleted

``` sql
 DELETE from mapped_modules where moodle_id=XXXXXX;
```

# Running the cmis group import script manually

login to moodle-admin as ccspmdl and run

cd /usr/local/sits\_filter2

cake RunCmis runCmisCronJob

## Amendments to CMIS group import

 

CMIS group import has been updated to:

-   Not stop when there is a webservice error
-   to log more output to help LTA diagnose issues

When an email is received with ‘CMIS Groups Import - Groups Import Requires Your Attention’

Check the report to see which action(s) created the error. 

For example ‘createGroupings() Failed’.

 

If a list of IDs is also provided, that can help finding problematic record(s).  

 

There is no magic bullet. You are likely to have to create your own SQL query to solve the issue. Keep reading...

## Example

An example to talk about would be the table ‘cmis\_groups\_course’.

The table contains groups to be added or deleted.

 

To identify the groups CMIS is trying to add, you can use the following query:

**‘SELECT \* FROM \`cmis\_groups\_course\` WHERE toadd = 1’**

The outcome will give you a list of records records. Deleting them might fix the issue

You can then run a delete statement:

‘DELETE FROM \`cmis\_groups\_course\` WHERE toadd = 1’

BEFORE DELETING RECORDS: CHECK, CHECK AND CHECK!

If the error is when CMIS tries to delete groups, you can use;

**SELECT \* FROM \`cmis\_groups\_course\` WHERE todelete = 1**

That will give you a list of records to delete.

You would then run:

DELETE FROM \`cmis\_groups\_course\` WHERE todelete = 1

 

BEFORE DELETING RECORDS: CHECK, CHECK AND CHECK!

 

## The clue is in the email

 

If there is, in the email, a line saying that something failed:

See what REST  parameters were sent when the error occurred, the parameters are in the email.

For example:

``` java
Delete Groups: 02:17:44.000000
Start rest call to Moodle - delete groupings and delete groups: 02:17:44.000000
Moodle REST call: delete groupings Failed
-- makeRestCall: API function = moodle_delete_grouping --
-- makeRestCall: Model = GroupsCourse->getGroupingsToDelete() --
-- makeRestCall: params = {"groupingids":["38611","38609"]}--

-- RunCmisShell -- deleteGroupsGroupings() Failed.
```

That tells you there was a problem deleting groups or groupings 38611 and 38609.

You would then have to create a SQL query to figure out the course name and group name.

You can then try to contact the person responsible for the course. You may, in the end have to delete the records from the Moodle and 'CMIS Import' databases.

**Sorry there are no ready made SQL query, you'll have to create something yourself.**

If you need more details

If there are not enough details in the email message, you can ssh into moodle-admin

ssh ccspmdl@moodle-admin.ucl.ac.uk

and run the following

``` java
/usr/local/bin/sits_filter2_RunCmis.sh > /dev/null 2>&1 > run_cmis_import_$(date +"%d%b%Y_%H%M").txt
```

You can then copy the file to your local station (for example with WinSCP) and examine it for more details.

You would then have to do something like what is describe in the previous example: **craft a query yourself**.

Example of things that have been done in the past

The following SQL queries have been used before. However a word of caution, **they might not be what you need!**

``` java
DELETE FROM `mapped_modules` WHERE moodle_id = xxxx;
DELETE FROM `cmis_groupings_moodle` WHERE mdlcourseid = xxxx;
DELETE FROM `cmis_groupmembers_backup` WHERE courseid = xxxx; 
DELETE FROM `cmis_groupmembers_backup_old` WHERE courseid = xxxx; 
DELETE FROM `cmis_groupmembers_deleted` WHERE courseid = xxxx; 
DELETE FROM `cmis_groups_course` WHERE courseid = xxxx; 
DELETE FROM `cmis_groups_course_backup` WHERE courseid = xxxx; 
DELETE FROM `cmis_groups_moodle` WHERE mdlcourseid = xxxx; 
DELETE FROM `cmis_tutgroupmembers` WHERE courseid = xxxx; 
DELETE FROM `cmis_tutgroupmembers_backup` WHERE courseid = xxxx; 
DELETE FROM `cmis_tutgroupmembers_deleted` WHERE courseid = xxxx; 
```

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CMIS-Moodle Integration Test Scripts v1.0-1.xlsx](attachments/56498937/56499838.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Improvement Project (CMIS Integration Tool Document)\_2.0.docx](attachments/56498937/125928271.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

