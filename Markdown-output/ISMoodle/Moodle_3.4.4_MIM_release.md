# Moodle 3.4.4 MIM release

**SITS Interface Release**

**CR - 3326
**

Roll-out Plan details:

AHEAD OF TIME

1)      On moodle-admin-01.ucl.ac.uk –

Deploy code from Git release branch under the path /data/moodle\_int\_management

Confirm /app/config/database.php  is pointing to SIS and moodle\_live

2)      On moodle-db-01.ucl.ac.uk and moodle-db-02.ucl.ac.uk

Create a new db user ‘mdlintuser\_live’ to access moodle\_int\_management database

Create a database ‘moodle\_int\_management’

3)      Run moodle\_int\_management.sql script to create tables

4)      Run moodle\_int\_management\_views.sql scripts to create new views

sits\_v\_assignmentmerge.sql           sits\_v\_enrolmemberships.sql       sits\_v\_facultyenrolment\_rmv.sql  sits\_v\_modulemerge.sql              sits\_v\_programmemerge.sql           sits\_v\_studentmerge.sql

sits\_v\_departmentenrolment\_add.sql   sits\_v\_enrolmemberships\_add.sql   sits\_v\_facultymerge.sql          sits\_v\_moduleoccmerge.sql           sits\_v\_routeenrolment\_add.sql       sits\_v\_studentuserprofiles.sql

sits\_v\_departmentenrolment\_full.sql  sits\_v\_enrolmemberships\_maps.sql  sits\_v\_mappings.sql              sits\_v\_persnaltutorrole.sql         sits\_v\_routeenrolment\_full.sql      sits\_v\_thresholds.sql

sits\_v\_departmentenrolment\_rmv.sql   sits\_v\_enrolmemberships\_rmv.sql   sits\_v\_membershipmerge.sql       sits\_v\_preappmappings.sql           sits\_v\_routeenrolment\_rmv.sql

sits\_v\_departmentmerge.sql           sits\_v\_enrolstudents.sql          sits\_v\_moduleenrolment\_add.sql   sits\_v\_programmeenrolment\_add.sql   sits\_v\_routemerge.sql

sits\_v\_enrolcourse\_ids.sql           sits\_v\_facultyenrolment\_add.sql   sits\_v\_moduleenrolment\_full.sql  sits\_v\_programmeenrolment\_full.sql  sits\_v\_sitsdata.sql

sits\_v\_enrolcourses.sql              sits\_v\_facultyenrolment\_full.sql  sits\_v\_moduleenrolment\_rmv.sql   sits\_v\_programmeenrolment\_rmv.sql   sits\_v\_studentmembershipconcat.sql

5)      Run moodle\_int\_management\_proc.sql scripts to create stored procedures

sync\_assignments

sync\_departments

sync\_faculties

sync\_imports

sync\_memberships

sync\_moduleocc

sync\_modules

sync\_programmes

sync\_routes

sync\_students

6)      On moodle-nfs-01.ucl.ac.uk

Create a directory /UCL\_SIS/ under /data/moodle – the output files UCL\_SIS\_export and UCL\_SIS\_USerProfileFields.csv created by cron are dumped here

7) Request con job to be added in disabled state on moodle-admin-01

-       15 1 \* \* \* /usr/local/bin/moodle\_int\_mgmt \_RunSits.sh &gt; /dev/null 2&gt;&1

------------------------------------------------------------------------------------------------------------------

Scheduled go-live

Release schedule

1) Put moodle into maintenance mode                                                                                                  - PI Team                           8.00 am

2) Add the new plugin code to the

/data/apache/htdocs/v3.4.4+\_build-20180709/blocks/portico\_enrolments

directory on moodle-app-\[01,02,03,04\] and moodle-admin-01                                                               - Niv                                    8.10 am

3)  Run the Moodle upgrade from Admin &gt;&gt; Notifications page.                                                             - Niv                                    8.15 am

4) Edit settings of portico\_enrolment block                                                                                               - Niv                                    8.20 am

5) Enable IMSEnterprise enrolment plugin                                                                                               - Niv                                    8.30 am

6) Edit settings of IMSEnterprise plugin                                                                                                    - Niv                                    8.40 am

7) Sanity testing                                                                                                                                         - Niv                                    8.50 a

- Create Test course (TestCourseNiv20180830) in hidden state in Moodle                     

- Add portico enrolment block to TestCourseNiv20180830

- Run sits script with no mappings

               On moode-admin-01

$ cd /data/moodle\_int\_management/app

$ Console/cake RunSits runCronJob                                                            

               check if it creates a xml file under

/data/moodle\_int\_management/app/tmp/output

- On moodle-nfs-01

check if xml file is created under /data/moodle/UCL\_SIS

It should be an empty xml file

8) Ask Platform integration to enable  cron job on moodle-admin-01 and add that in puppet

-       15 1 \* \* \* /usr/local/bin/moodle\_int\_mgmt \_RunSits.sh &gt; /dev/null 2&gt;&1                                         - PI Team                              9.15 am

Note – Wait for Niv to confirm

9) Take Moodle out of maintenance mode.                                                                                                 - PI Team                           9.30 am

Note – Wait for Niv to confirm

**
**

**
CMIS Interface Release**

**CR - 3510**

Ahead of time – 

1)      On [moodle-admin-01.ucl.ac.uk](http://moodle-admin-01.ucl.ac.uk) –

Deploy code from Git release branch under the path /data/moodle\_int\_management

Confirm /app/config/database.php  is pointing to GEN

2)     Create oracle views on SIS – MOODLEMGR schema

MOODLE\_V\_CMIS\_MODULE\_GROUP

MOODLE\_V\_CMIS\_GROUP\_MEMBER

MOODLE\_V\_CMIS\_GROUP\_TUTOR

3)      Run cmis\_tables.sql script to create table strcutures

4)      Run cmis\_v\_groupmembermerge.sql scripts to create new views

5) Request con job to be added in disabled state on moodle-admin-01

-       15 1 \* \* \* /usr/local/bin/moodle\_int\_mgmt \_RunCmis.sh &gt; /dev/null 2&gt;&1

Rollback plan –

-        Disable        15 1 \* \* \* /usr/local/bin/moodle\_int\_mgmt \_RunCmis.sh &gt; /dev/null 2&gt;&1

-        Hide group import flag

On the day of Go-live -

<table>
<tbody>
<tr class="odd">
<td><p>No</p></td>
<td><p>What</p></td>
<td><p>Who</p></td>
<td><p>When</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Put Moodle into maintenance mode</p></td>
<td><p>PI Team</p></td>
<td><p>8.00 am</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Add the updates plugin code from Git tag to  </p>
<p><br />
</p>
<p>/data/apache/htdocs/v3.4.4+_build-20180709/blocks/portico_enrolments</p>
<p><br />
</p>
<p>directory on moodle-app-[01,02,03,04] and moodle-admin-01</p>
<p><br />
</p>
<p>Git Tag – CR3326_20180925</p>
<p>                                                                                                           </p></td>
<td><p>Niv</p></td>
<td><p>8.10 am</p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Run the Moodle upgrade from Admin &gt;&gt; Notifications page</p></td>
<td><p>Niv</p></td>
<td><p>8.20 am</p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Sanity Testing</p>
<p><br />
</p>
<p>-        Create Test Course (TestCourse20180927)</p>
<p>-        Map IEHC0046 to the course</p>
<p>-        Enable group import</p>
<p>-        Run Cmis Cron script</p>
<p>On moode-admin-01</p>
<p>$ cd /data/moodle_int_management/app</p>
<p>$ Console/cake RunCmis runCmisCronJob                                                           </p>
<p>-        New groups should be created for test course -  TestCourse20180927</p>
<p><br />
</p></td>
<td><p>Niv</p></td>
<td><p>8.30 am</p></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Ask Platform integration to enable  cron job on moodle-admin-01 and add that in puppet</p>
<p>-       15 1 * * * /usr/local/bin/moodle_int_mgmt _RunCmis.sh &gt; /dev/null 2&gt;&amp;1</p>
<p>Note – Wait for Niv to confirm</p>
<p><br />
</p></td>
<td><p>PI Team</p></td>
<td><p>8.45 am</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>Take Moodle out of maintenance mode</p>
<p>Note – Wait for Niv to confirm</p></td>
<td><p>PI Team</p></td>
<td><p>9.00 am</p></td>
</tr>
</tbody>
</table>


