# FOR INFO - Backups and Archives

-   1 [Why are we backing up?](#FORINFOBackupsandArchives-Whyarewebackingup?)
    -   1.1 [Moodle Service Definitions (and links to other info)](#FORINFOBackupsandArchives-MoodleServiceDefinitions(andlinkstootherinfo))
-   2 [Moodle course backups](#FORINFOBackupsandArchives-Moodlecoursebackups)
    -   2.1 [Restoring a course from the Moodle generated backups](#FORINFOBackupsandArchives-RestoringacoursefromtheMoodlegeneratedbackups)
    -   2.2 [Backing up the zip files to a separate machine](#FORINFOBackupsandArchives-Backingupthezipfilestoaseparatemachine)
    -   2.3 [Archiving the zip files](#FORINFOBackupsandArchives-Archivingthezipfiles)
-   3 [MySQL databases](#FORINFOBackupsandArchives-MySQLdatabases)
-   4 [Server backups](#FORINFOBackupsandArchives-Serverbackups)
    -   4.1 [How often are the files on these servers likely to change?](#FORINFOBackupsandArchives-Howoftenarethefilesontheseserverslikelytochange?)

# Why are we backing up? 

We need to back up the Moodle service so that we can restore the following data as needed:

-   Restore a course if a student disputes his/her grade
-   Restore a course to see a forum entry (e.g. if someone objects to what was written in a forum)
-   Restore a course for a lecturer if they want to roll back to a previous version
-   Complete system recovery if the moodle application or database servers were corrupted or lost, in this instance we would want to restore the system to as it was a maximum of 24 hours before (e.g. last night's backups) - see also Resilience of the moodle and webapps machines

In each of these cases we need to keep courses and student data/results for x years to comply with Records and Data Protection office policies and be able to restore a single course (or the entire Moodle system) after any of these eventualities

We need to '**backup**' each Moodle course, including course content and student input (quiz results, forum contributions etc) so that it can be easily restored as it was on any night in the last 60 days.

We need to '**archive**' all Moodle courses at the end of each term (3 times a year) *and/or* at the end of each academic year so that this data can be restored from up to x years in the past.

In the event of the entire Moodle system needing to be restored we would hopefully realise that there was a problem very quickly and restore the servers from the backups taken the night before. We do not need to keep the nightly backups of the servers themselves for more than 1 week (??).

The Moodle application installation files ( /data/apache/htdocs/moodle ) should be kept for x weeks/months.

The moodledata folder ( /data/moodle ) and database (MySQL database dumps) should be '**backed up**' each night and kept for 60 days (this will include the automatic course backups that moodle creates as zip files) and '**archived**' at the end of each term (3 times a year) *and/or* at the end of each academic year and kept for x years.

NB. The figures/text in red needs to be agreed by the Moodle team

## Moodle Service Definitions (and links to other info)

The service definition for Moodle is at <http://www.ucl.ac.uk/is/definition/csd000259.htm>
Section 7 of this document talks about backups
*(Athina/Sammy are reviewing this - The final one will shortly become available)*

See also:

-   Moodle Backup & Archiving - Information for users
-   Moodle Archiving policy
-   Moodle Course Lifecycle - Dates & processes

# Moodle course backups 

See also <http://docs.moodle.org/en/Backup_FAQ>

The Moodle application has course backups built into it. A Moodle admin account can go to **Administration** &gt; **Courses** &gt; **Backups** to set the options for this. There are options to have this script run each night, but we have it set to just run on a Sunday night on the live Moodle service. Other options are shown below. 

There are 5 tables in the MySQL database that deal with backups:

-   mdl\_backup\_config
-   mdl\_backup\_courses
-   mdl\_backup\_files
-   mdl\_backup\_ids
-   mdl\_backup\_log

The options in the table below are held in the **mdl\_backup\_config** table.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Option</p></th>
<th><p>Notes</p></th>
<th><p>Option we have chosen</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Include Modules<br />
backup_sche_modules</p></td>
<td><p>Choose whether you want to include course modules, with or without user data, in automated backups</p></td>
<td><p>on</p></td>
</tr>
<tr class="even">
<td><p>Include module user data<br />
backup_sche_withuserdata</p></td>
<td><p>Choose whether you want to include module user data in automated backups.</p></td>
<td><p>on</p></td>
</tr>
<tr class="odd">
<td><p>Metacourse<br />
backup_sche_metacourse</p></td>
<td><p>If enabled, then metacourse info (inherited enrolments) will be included in automated backups</p></td>
<td><p>on</p></td>
</tr>
<tr class="even">
<td><p>Users<br />
backup_sche_users</p></td>
<td><p>Select whether you want to include <strong>all</strong> the users in the server<br />
or only the needed users for each <strong>course</strong></p></td>
<td><p>course</p></td>
</tr>
<tr class="odd">
<td><p>Logs<br />
backup_sche_logs</p></td>
<td><p>If enabled, then course logs will be included in automated backups</p></td>
<td><p>on</p></td>
</tr>
<tr class="even">
<td><p>User Files<br />
backup_sche_userfiles</p></td>
<td><p>Choose whether user files (eg profile images) should be included in automated backups</p></td>
<td><p>on</p></td>
</tr>
<tr class="odd">
<td><p>Course files<br />
backup_sche_coursefiles</p></td>
<td><p>If enabled then course files will be included in automated backups</p></td>
<td><p>on</p></td>
</tr>
<tr class="even">
<td><p>Messages<br />
backup_sche_messages</p></td>
<td><p>If enabled, then instant messages will be included in SITE automated backups</p></td>
<td><p>off</p></td>
</tr>
<tr class="odd">
<td><p>Keep<br />
backup_sche_keep</p></td>
<td><p>How many recent backups for each course do you want to keep?<br />
(older ones will be deleted automatically)</p></td>
<td><p>1</p></td>
</tr>
<tr class="even">
<td><p>Active<br />
backup_sche_active</p></td>
<td><p>Choose whether or not to do automated backups.</p></td>
<td><p>on</p></td>
</tr>
<tr class="odd">
<td><p>Schedule<br />
backup_sche_weekdays</p></td>
<td><p>Choose which days of the week to perform automated backups.</p></td>
<td><p>Sunday</p></td>
</tr>
<tr class="even">
<td><p>Execute at<br />
backup_sche_hour</p></td>
<td><p>Choose what time automated backups should run at.</p></td>
<td><p>3am</p></td>
</tr>
<tr class="odd">
<td><p>Save to<br />
backup_sche_destination</p></td>
<td><p>Full path to the directory where you want to save the backup files<br />
(leave blank to save in its course default dir)</p></td>
<td><p>(blank)</p></td>
</tr>
</tbody>
</table>

When the backup script runs (SCP 3808 set this to run on Tues and Sat) it generates a zip file for each course.

This is saved to **/data/moodle/&lt;course id number&gt;/backupdata** with a file name such as **backup-bioc1001-20080519-1659.zip**
e.g. **backup-**&lt;coursecode&gt;**-**&lt;date&gt;**-**&lt;time&gt;**.zip**
When a new .zip file is generated by the script, the last zip file generated by the script is deleted (this can be changed in the options above).

In addition to this users can create their own .zip backup files using the backup option within the course as often as they like. User generated .zip files do not get deleted by the automatic backup script.

To check the amount of disk space being taken up by .zip backup files login to the master copy of the moodledata (at the time of writing this is **moodle-b**) and use the following commands:

``` java
cd /data/moodle
ls -l */backupdata/ | grep backup- | grep 20081025 | awk '{sum+=$5} END {print sum}'
```

where 20081025 is the date of the last backup

A report on the progress of this backup script can be seen at <http://moodle.ucl.ac.uk/admin/report/backups/>
This report shows which courses were successfully backed up, which were skipped (if they hadn't changed since the last backup) and which had an error. If you click on the course name in this backup report you can see the status of the backups over the last 15 and which were successful

-   **OK** - this means that the backup was completed successfully and a zip file has been saved to **/data/moodle/**&lt;course id number&gt;**/backupdata** with a file name such as **backup-bioc1001-20080519-1659.zip** (notice the date is part of the file name).

<!-- -->

-   **Skipped** - the course was skipped and no zip file was created, possibly because the course has not been changed or added to since the last backup

    **This needs to be investigated further (RG 12/13 June 08)**
    I looked at the backup report and found that Stefan's test course (course ID 15) has been skipped since 25 July. Nothing had been updated in this course for a long time and I thought this was why it was being skipped by the backup. I posted a message to the forum to try to 'activate' the backup off this course, but it was still skipped by the automatic backup and a zip file was not created.

<!-- -->

-   **Error** -If an error is shown this means that the .zip file for that course was not generated. You can click on the course name on the backup report page to see how far it go through the backup and where it failed and when the last successful backup was taken. This is a known problem and the moodle.org web pages say that the script is known to be unreliable. On looking at the pattern of which courses have errors I haven't seen it fail on the same course two weeks in a row, so if a course failed one week, the user could get the backup from the week before.

    **What can we do about the unreliability of this automatic course backup?**

    -   Warn users not to rely on this and to take their own backups. However, as these user generated backups are not automatically 'cleared up' this could be a disk space issue if every user is taking more and more backups ...
    -   Apps Dev could look at the moodle backup script and add error reporting to see why it sometimes fails and/or attempt to create their own backup script that is called by the cron job periodically.
    -   See also <http://docs.moodle.org/en/Backup_FAQ> for tips

## Restoring a course from the Moodle generated backups

I have tried using the Moodle generated .zip files and user generated .zip files and restoring them (to the same server and a different server). This works successfully and restores the course structure and content, eg PDF, PPT files etc that the lecturer may have uploaded for their students, and user contributions to the course, e.g. forum contributions, quiz questions and results, email messages and any attachments etc.

## Backing up the zip files to a separate machine

The backups that Moodle generates are stored in the 'moodle data' folder, ideally these should also be backed up to another location as well and also archived at the end of each academic year (and perhaps at the end of each term as well). On the current policy for Moodle the IS Storage Team keep files they backup from the /data/moodle folder for:

-   keep a maximum of 2 copies for 30 days
-   If the file is deleted, 1 copy will be kept for 60 days

As each newly generated zip file has a unique file name (with the datestamp as part of the file name) and each newly created zip file will not change this means that each zip file backed up will be kept for 30 days.
However, as each automatically generated zip file is deleted each week when the new one is created, this means that each course backup zip file will be available on the Moodle server for 1 week (for the user to restore themselves without having to contact IS), but that LTSS could get a course restored from the IS Storage Team up to 60 days from when the backup was taken.

In Summary

A user can get a Moodle course (including course content and student contributions) restored from backup up to 67 days later. e.g.

-   An automatic course backup is taken on a Sunday night, this backup is held on the Moodle server for 7 days (until the next automatic Moodle backup is taken and the old one is cleared out).
-   When the zip file has been on the Moodle server for one night a copy is backed up to the IS Storage backup servers where it is held for 67 days (7 days while it is still on the Moodle server and an additional 60 days after it has been deleted from the Moodle server).
-   60 days after it is deleted from the Moodle server it is cleared from the IS Storage backups.

## Archiving the zip files

These course zip files should be archived to tape at the end of each academic year (and possibly at the end of each term?)

The files we need to ask the IS Storage Team to archive are the automatic backups saved to **/data/moodle/***&lt;course id number&gt;***/backupdata**
These zip files are saved with a file name such as **backup-bioc1001-20080519-1659.zip** (with the course code (bioc1001) and datestamp as part of the file name).

We would need to check this file name datestamp to ensure it is an up to date end of summer term backup that matches which ever date we choose to run the archive process. We would want a report from the archive process that warned us of Moodle courses that exist but do not have a zip backup file, or if the zip backup file is older than the date we specify for archiving.

Paul Hajisavvi has written an archive script, to run it follow these instructions:

-   log into the moodle data file server as **root** (check with Apps Dev/Adrian/Austin which server)

<!-- -->

-   go to the **/data/apache/htdocs/moodle/ucl\_tools** folder

<!-- -->

-   at the unix prompt type **./tarzip.csh**

<!-- -->

-   This script will:
    -   delete **zipfiles.tar** (if it exists from a previous run of this script)
    -   find all zip files in **/data/moodlefs** (this is mapped to the moodle data file server) created since the last time **tarzip.csh** was run
    -   create a list of these zip files in the file **Include\_zip\_files**
    -   **Include\_zip\_files** is then fed to the tar command to create **zipfiles.tar** (a single archive containing all the zip files listed) in the /data/apache/htdocs/moodle/ucl\_tools folder.
    -   **zipfiles.tar** is then archived off to TSM

<!-- -->

-   Once it's finished running, you can type **tar -tf zipfiles.tar** to get a list of files in the archive.

<!-- -->

-   It takes about 20 minutes to complete and finds 1975 zip files at the moment (*25/07/08*).

# MySQL databases

There is a nightly cron job run by ccspsql at 3:00am on both MySQL servers, moodledb-a.ucl.ac.uk and moodledb-b,ucl.ac.uk. This dumps all the databases using mysqldump. The script is at
/usr/local/mysql/backup/mysql-backup.sh. Backups are saved as single files in /usr/local/mysql/backup. The script keeps daily backups for a week and monthly ones for a year.

The file names for the backups are as follows. The file names are 'recycled' so that each file is over written when the new backup is generated.

``` java
mysqlbackup.dump.backup-1  //taken at 3am on a Mon each week
mysqlbackup.dump.backup-2  //taken at 3am on a Tues each week
mysqlbackup.dump.backup-3  //taken at 3am on a Wed each week
mysqlbackup.dump.backup-4  //taken at 3am on a Thurs each week
mysqlbackup.dump.backup-5  //taken at 3am on a Fri each week
mysqlbackup.dump.backup-6  //taken at 3am on a Sat each week
mysqlbackup.dump.backup-7  //taken at 3am on a Sun each week
mysqlbackup.dump.backup-till-end-of-year-2007  //taken at 3am on the 31st Dec each year
mysqlbackup.dump.backup-till-start-of-month-01  //taken at 3am on the 1st Jan each year
mysqlbackup.dump.backup-till-start-of-month-02  //taken at 3am on the 1st Feb each year
mysqlbackup.dump.backup-till-start-of-month-03  //taken at 3am on the 1st March each year
mysqlbackup.dump.backup-till-start-of-month-04  //taken at 3am on the 1st April each year
mysqlbackup.dump.backup-till-start-of-month-05  //taken at 3am on the 1st May each year
mysqlbackup.dump.backup-till-start-of-month-06  //taken at 3am on the 1st June each year
mysqlbackup.dump.backup-till-start-of-month-07  //taken at 3am on the 1st July each year
mysqlbackup.dump.backup-till-start-of-month-08  //taken at 3am on the 1st Aug each year
mysqlbackup.dump.backup-till-start-of-month-09  //taken at 3am on the 1st Sept each year
mysqlbackup.dump.backup-till-start-of-month-10  //taken at 3am on the 1st Oct each year
mysqlbackup.dump.backup-till-start-of-month-11  //taken at 3am on the 1st Nov each year
mysqlbackup.dump.backup-till-start-of-month-12  //taken at 3am on the 1st Dec each year
```

These backups are held on the same server as the database and so if the server became unusable we could lose this data. Ideally we need these mysqldump files to be backed up up to another server.More information on backups and restoring MySQL data from these mysqldump files can be found at <http://www.ucl.ac.uk/~ccaajrl/mysql/>

Athina and Rachel met with Paul Hajisavvi on 19/05/08 to discuss backups.

At present the IS Storage Team report that they are backing up the whole of the moodledb-a and moodledb-b servers.

\*Questions:\*

**1.** If these servers are acting as a master/slave and have identical data do we need to back up both?

**2.** Backing up MySQL data:

**  a.** Should we just ask IS Storage to back up the /usr/local/mysql/backup folder? Are there any other folders on the server we need to backup?

**  b.** How long do we want IS Storage to keep the backups for? E.g. keep two copies of each file for 30 days? This would mean that we would always have 2 copies of the mysqlbackup.dump.backup-1, so would be able to restore from two Mondays back at any time (for each day of the week).

**  c.** Do we need to archive any of the files (archived files are kept for ever and never overwritten), say a yearly mysqldump file generated at the end of the academic year?

**3.** Backing up the MySQL application:

**  a.** which files/folders would we need to backup to enable us to restore the MySQL application? Or would it be easier to just install it again? If we had the my.cnf file could we rebuild the MySQL application to the same as it currently is?

\*Jack Comments:\*

I suppose it depends what the the general policy is on multiple system failures. Normally the slave acts as a backup for the master, which is why I like to keep them running the same version of the software (by the way, has moodledb-a been upgraded to 5.0.45 yet, as per my SCP? - *Austin is doing this*). So if the master dies, the slave can take over and a new slave built and re-cloned at leisure. However, it is a bit of a concern that moodledb-a and moodledb-b are both in Wolfson House, unlike mysql-a and mysql-b which are in different buildings. If we do want belt-and-braces backups, then I think it should be symmetric, with both servers being backed up, to avoid mucking about if either server is taken out of service.

# Server backups

The following folders on the following servers are backed up: 

-   All machines keep a maximum of 2 copies for 30 days.
-   If the file is deleted, 1 copy will be kept for 60 days.

    How long is a file kept in backup if it does not change?
    RFG to contact IS Storage to check this

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th><p>server name</p></th>
<th><p>OS</p></th>
<th><p>service</p></th>
<th><p>web address</p></th>
<th><p><br />
</p></th>
<th><p>folders *currently*<br />
being backed up</p></th>
<th><p>folders we *want*<br />
to be backed up</p></th>
<th><p>Backup Policy<br />
(how often and how many copies do we want kept and for how long)</p></th>
<th><p>Archive<br />
(How often and what do we want archived?)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>webct-a</strong>.ucl.ac.uk</p></td>
<td><p><br />
</p></td>
<td><p>failover/backup for WebCT</p></td>
<td><p><br />
</p></td>
<td><p>fs-o</p></td>
<td><p>/.old<br />
/usr/local/webct.old<br />
/</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>webct-b</strong>.ucl.ac.uk</p></td>
<td><p><br />
</p></td>
<td><p>live WebCT</p></td>
<td><p><a href="http://www-webct.ucl.ac.uk/" class="uri">http://www-webct.ucl.ac.uk/</a></p></td>
<td><p>fs-o</p></td>
<td><p>/<br />
/var<br />
/usr/local/webct<br />
/webct_backup<br />
/webct_courses</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>moodle-a</strong>.ucl.ac.uk<br />
<em>(new hardware)</em></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>fs-p</p></td>
<td><p>/<br />
/applications<br />
/data</p></td>
<td><p>/data/moodle<br />
/data/apache/htdocs/moodle</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>moodle-b</strong>.ucl.ac.uk<br />
<em>(new hardware)</em></p></td>
<td><p>ubuntu</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>fs-c</p></td>
<td><p>/<br />
/applications<br />
/data<br />
/var</p></td>
<td><p>/data/moodle<br />
/data/apache/htdocs/moodle</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>moodle-c</strong>.ucl.ac.uk</p></td>
<td><p>ubuntu</p></td>
<td><p>live Moodle</p></td>
<td><p><a href="http://moodle.ucl.ac.uk" class="uri">http://moodle.ucl.ac.uk</a></p></td>
<td><p>fs-p</p></td>
<td><p>/<br />
/var<br />
/data</p></td>
<td><p>/data/moodle<br />
/data/apache/htdocs/moodle</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>moodle-pp</strong>.ucl.ac.uk<br />
<em>(old moodle-b)</em></p></td>
<td><p>ubuntu</p></td>
<td><p>pre-production Moodle</p></td>
<td><p><a href="http://moodle-test.ucl.ac.uk" class="uri">http://moodle-test.ucl.ac.uk</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>/data/moodle<br />
/data/apache/htdocs/moodle</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>moodledb-a</strong>.ucl.ac.uk</p></td>
<td><p>ubuntu</p></td>
<td><p>MySQL master/slave pair</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>moodledb-b</strong>.ucl.ac.uk</p></td>
<td><p>ubuntu</p></td>
<td><p>MySQL master/slave pair</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>webapps-a</strong>.ucl.ac.uk<br />
<em>(new hardware)</em></p></td>
<td><p>ubuntu</p></td>
<td><p>Confluence wiki</p></td>
<td><p><a href="http://wiki.ucl.ac.uk" class="uri">http://wiki.ucl.ac.uk</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>webapps-b</strong>.ucl.ac.uk<br />
<em>(old moodle-a)</em></p></td>
<td><p>ubuntu</p></td>
<td><p>live Opinio service</p></td>
<td><p><a href="http://opinio.ucl.ac.uk" class="uri">http://opinio.ucl.ac.uk</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>wasdev-a</strong>.ucl-0.ucl.ac.uk</p></td>
<td><p><br />
</p></td>
<td><p>test wiki<br />
(for IS use)</p></td>
<td><p><a href="http://wiki-test.ucl.ac.uk:8080/confluence" class="uri">http://wiki-test.ucl.ac.uk:8080/confluence</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>wasdev-b</strong>.ucl-0.ucl.ac.uk</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

## How often are the files on these servers likely to change?

The following applies to all the moodle servers (but not the moodledb servers) 

-   The /data/moodle folder holds the course files: where users upload files eg a lecturer uploads a PDF to share with the students, or a user adds an attachment to a forum or moodle email. zipped up course backups are also saved here. This folder is likely to change daily.

<!-- -->

-   The /data/apache/htdocs/moodle folder holds the moodle application files. These files should only change when we do an upgrade or install a plugin.

<!-- -->

-   The MySQL moodle database holds all the info for moodle, e.g. what activities, blocks each user has in which course, forum posts, course logs of who accessed what/when, moodle config settings. This database is updated every time anybody does anything in Moodle.

