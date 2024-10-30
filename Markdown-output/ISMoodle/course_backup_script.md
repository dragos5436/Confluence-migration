# course backup script

More information on Backups is at:

-   [FOR INFO - Backups and Archives](FOR_INFO_-_Backups_and_Archives)
-   Moodle Backup & Archiving - Information for users

Moodle has an automatic course backup script which is run by the cron job at intervals specified at **Administration** &gt; **Courses** &gt; **Backups**

A report on the progress/status of these backups can be seen at **Administration** &gt; **Reports** &gt; **Backups**
This report is made up from data in the **mdl\_backup\_courses** table:

``` java
+---------------+------------------+------+-----+---------+----------------+
| Field         | Type             | Null | Key | Default | Extra          |
+---------------+------------------+------+-----+---------+----------------+
| id            | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| courseid      | int(10) unsigned | NO   | UNI | 0       |                |
| laststarttime | int(10) unsigned | NO   |     | 0       |                |
| lastendtime   | int(10) unsigned | NO   |     | 0       |                |
| laststatus    | char(1)          | NO   |     |         |                |
| nextstarttime | int(10) unsigned | NO   |     | 0       |                |
+---------------+------------------+------+-----+---------+----------------+
```

For each **courseid** listed in this table
laststatus **=** 0 --&gt; 'error'
laststatus = 1 --&gt; 'OK'
laststatus = 2 --&gt; 'unfinished'
laststatus = 3 --&gt; 'skipped'

We had found that many of the courses were either being 'skipped' or giving an 'error' in the report. We thought that courses being 'skipped' had not been edited since the last zip backup file was created, but there were some courses that had not been backed up for a long time (~6 months). To try to 'kick start' the backups I tried making a change to one of these courses but it was still not picked up by the backup script and was still 'skipped'.

To try to fix this I looked at the file at: /data/apache/htdocs/moodle/backup/**backup\_scheduled.php** particularly lines 103 - 109 (show below). I commented out lines **105-109** and this makes all courses go through the backup process, regardless of if they are visible (see table mdl\_courses.visible) and when they were last updated (mdl\_course.timemodified)

``` java
// Skip backup of unavailable courses that have remained unmodified in a month
                $skipped = false;
               /* if (!$course->visible && ($now - $course->timemodified) > 31*24*60*60) {  //Hidden + unmodified last month
                    mtrace("            SKIPPING - hidden+unmodified");
                    set_field("backup_courses","laststatus","3","courseid",$backup_course->courseid);
                    $skipped = true;
                }*/
```

This change was made to moodle-pp (<http://moodle-test.ucl.ac.uk>) on **16/06/08**. Since then the Report on Backups shows no skipped courses but the backup is taking over 12 hours to complete: 03:00 - 15:45. This could be extra strain on the moodle-pp and moodledb servers that could cause performance problems for the server.

**19/06/08:** After running the backups each night on moodle-pp (<http://moodle-test.ucl.ac.uk>) for a couple of nights and having all courses backup successfully (except for 2 that may have separate problems (course id 652 and 1910, details sent to LTSS) we are going to go back to the original settings (allowing it to skip courses) and monitor the situation.

On moodle-c (live <http://moodle.ucl.ac.uk>) I have made the change to force it not to skip courses (commenting out the lines shown above). The next backup for this server is set to take place on Sunday at 3am. Hopefully this will give us a full backup of all courses (creating a zip file for each course) before we upgrade to 1.9 on Monday 23 June.
