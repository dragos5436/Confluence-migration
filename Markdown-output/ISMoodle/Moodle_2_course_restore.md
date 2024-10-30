# Moodle 2 course restore

Circumstances where files are data may  need to be restored are:

-   User deletes an assignment or activity (often more significant than just deleting a file, as a file can usually be found and re-uploaded, but any student activity or assignment submissions cannot so easily be replaced).

<!-- -->

-   A course becomes corrupted for some reason (e.g. HTML code causes edit buttons to be omitted or page layout to be very wonky, although this can often alternatively be fixed by direct DB access).
-   A user requests a course to be deleted, and it later emerges that this course should not have been deleted (we have had this happen a few months back)

Generally, the need to recover an individual course or small group of courses is rare – perhaps once every 3-6 months, that I know about, but others might see more. It is not impossible that the move to M2 might see a small spike in the number of requests as users get confused about the interface and do the wrong thing etc.

In order to backup courses there are 2 strategies:

## 1. Moodle site backups

While a convenient way to automate course backups and make life easier for everyone, there are a number of disadvantages

expensive in terms of time and cpu usage

backup can time out especially on large sites

Some course might not backup because of the resources they contain.

file location

### manual backups

If anonymize user information is select, backup is saved in 'users private backup area' otherwise it's saved in 'course backup area'

Automated course backup

files are named backup-moodle2-course-biolg011-20120425-1613-an.mbz (backup-&lt;type&gt;&lt;course short name&gt;&lt;hour&gt;&lt;minute&gt;- and saved in ''.

## 2. System level backups

Impossible to retrieve individual courses without setting up a temporary moodle

<http://moodle.org/mod/forum/discuss.php?d=191275>

'Keep 1' setting won't work if the 'Automated backup storage' setting is set to 'Specified directory for automated backups'.

If I manually backup a course, it goes in to 'users private backup area' and is available in every course but on when i am logged in.

automated backups are smaller than course backups because of the way files are stored in Moodle 2.x, there is no need to include the files in the backup if you are planning to restore them to the same Moodle site. Leaving them out saves huge amounts of disc space and makes the backup procedure much faster.

cron logs are in var/log/moodlecron

Resetting a course only deletes data not files.

backup ANAT3030/M030: Cellular and Developmental Neurobiology on dev

delete existing course and restore in to same course.

Tool to identify files belonging to a course

<https://moodle2-dev.ucl.ac.uk/ucl_tools/restorecourse/coursefiles.php>

enter course name eg. Getting Started with Flash

File locations from a users perspective

Add new resource and choose file.

This file can be viewed in the server folder of the file picker.

resetting course

only data is deleted. Files are still accessible.

## Use cases

### User deletes a file

On production Moodle, identify the course. (The user must be able to provide course id or course name and the name of the file).

eg. MSc Medical Image Computing

course id = 84

file name is CAR\_session\_6.ppt

#### Restore process

Restore a copy of last nights database dump.

Modify

Run <https://moodle2-uat.ucl.ac.uk/ucl_tools/restorecourse/coursefiles.php> and specify the course. This will list all the files associated with that course.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Contenthash</p></td>
<td><p>Full path name</p></td>
<td><p>File name</p></td>
<td><p>File size</p></td>
</tr>
<tr class="even">
<td><p>15f05741e4f47aceac5b0dd13db8d1f0709fc703</p></td>
<td><p>D:\xampp\moodledata2/filedir/15/f0/15f05741e4f47aceac5b0dd13db8d1f0709fc703</p></td>
<td><p>CAR_session_8.pdf</p></td>
<td><p>2020878</p></td>
</tr>
<tr class="odd">
<td><p>81245b87b956f66551d7bc47d261a6602b238f6f</p></td>
<td><p>D:\xampp\moodledata2/filedir/81/24/81245b87b956f66551d7bc47d261a6602b238f6f</p></td>
<td><p>CAR_session_6.ppt</p></td>
<td><p>1528320</p></td>
</tr>
<tr class="even">
<td><p>81245b87b956f66551d7bc47d261a6602b238f6f</p></td>
<td><p>D:\xampp\moodledata2/filedir/81/24/81245b87b956f66551d7bc47d261a6602b238f6f</p></td>
<td><p>CAR_session_6.ppt</p></td>
<td><p>1528320</p></td>
</tr>
<tr class="odd">
<td><p>1e1754deeedbf785e7a9eb27033a0e3bcb50eef5</p></td>
<td><p>D:\xampp\moodledata2/filedir/1e/17/1e1754deeedbf785e7a9eb27033a0e3bcb50eef5</p></td>
<td><p>CAR_session_6.pdf</p></td>
<td><p>2728892</p></td>
</tr>
<tr class="even">
<td><p>d0e321f64af3602f73e415de8a9958abdefb4d79</p></td>
<td><p>D:\xampp\moodledata2/filedir/d0/e3/d0e321f64af3602f73e415de8a9958abdefb4d79</p></td>
<td><p>CAR_session_5.ppt</p></td>
<td><p>3124224</p></td>
</tr>
</tbody>
</table>

#### Issues

We would need to restore last nights backup of the database.

## resources

Restore a single course from site backup <http://moodle.org/mod/forum/discuss.php?d=202939>

### User resets course

Tested on localhost. Reset course [http://localhost/moodle2/course/view.php?id=2987](http://localhost/moodle2/course/view.php?id=194) and ticked everything.

Create a new instance of moodle2 application (we could have an instance setup ready to point to different databases just for restoring courses) called moodle2backup

extract the moodle db from last nights backup:

On the moodlevm-db box

**mkdir data/mysql/backup/moodle\_tmp**

Copy the most recent daily backup file to the new subdirectory, and gunzip it.

**cp /data/mysql/backup/mysqlbackup.dump.backup-20120510.gz /data/mysql/backup/moodle\_tmp/                          (1 min)**

**cd /data/mysql/backup/moodle\_tmp/**

**gunzip mysqlbackup.dump.backup-20120510.gz                                                                                                                  (15 min)**

Run the scandump script to extract the moodle-specific section of the MySQL dump to a new file, passing the '--skipuse' option in order to suppress the 'USE moodle;' statement.

**~/scripts/scandump --skipuse moodle &lt; mysqlbackup.dump.backup-20120510 &gt; moodle2backup.sql  (3 mins)**

**NB. Sometimes the scandump script is in ~/bin directory**

Gzip the new file, and copy it to the same machine where the moodle2backup instance was created

**gzip moodle2backup.sql                                                                                                                                              (3 mins)**

**scp moodle2backup.sql.gz** [ccspsql@somemachine.ucl.ac.uk:/data/mysql/backup/](mailto:ccspsql@moodle-archive.ucl.ac.uk:/data/mysql/backup/)**                                             (3 mins)**

On the machine where you copied moodle2backup.sql.gz, unzip it.

**gunzip moodle2backup.sql.gz**

Log into MySQL as root, create a new database and grant appropriate access to user 'moodleuser', then load the new schema from dump file.

**create database moodle2backup default character set utf8 collate utf8\_unicode\_ci;**

**use moodle2backup;**

**set names 'utf8';**

**GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, CREATE TEMPORARY TABLES, DROP, INDEX, ALTER ON moodle2backup.\* TO \`moodleuser\`@\`localhost\`;**

Load schema from the dump file by exiting the msql console and typing

**mysql -uroot -p moodle2backup &lt; /data/mysql/backup/\*moodle2backup**.sql\*

Modify the moodle config file so that it uses the correct database and datafiles directory. The following settings need to be changed:

Modify config.cfg and change the following settings appropriately:

$CFG-&gt;dbhost

$CFG-&gt;dbname

$CFG-&gt;wwwroot

$CFG-&gt;dirroot

$CFG-&gt;dataroot

$CFG-&gt;noemailever

Create a new data directory for moodle2backup

Moodle instance is now setup with all courses and data but no files. The files for the course that was reset need to be copied from backup of the moodle file store. Get a list of these by running <http://localhost/moodle2backup/ucl_tools/restorecourse/coursefiles.php>

There were 541 files! It would be too time consuming to create directories and copies these files manually and the course won't backup unless all the files are present.I'll need to find another course with less files to try this on.

<http://localhost/moodle2/course/view.php?id=2987> this course only has 50 files and includes grades. Will  use this as a test case.

You will need to create directories for all the files that need to be restored. The coursefiles.php script automatically does this. Then copy all the files over from moodle2-uat to moodle2backup on local host. Start the backup on moodle2-uat. Tick everything except anonymize user data.

error message while backing up - Can not read file, either file does not exist or there are permission problems.

Maybe I didn't copy all the files will double check. I've clicked on every file in the course and they all open. Can't identify which file(s) is missing. Backup works on moodle2-pilot.

**Debug info:** D:\\xampp\\moodle2backupdata/filedir/02/d9/02d951a20998c348dbcf98a6bfd4f8077cbb43cb
**Stack trace:**

-   line 174 of \\lib\\filestorage\\stored\_file.php: file\_exception thrown
-   line 90 of \\backup\\util\\helper\\backup\_file\_manager.class.php: call to stored\_file-&gt;copy\_content\_to()
-   line 101 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_file\_manager::copy\_file\_moodle2backup()
-   line 70 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;fill\_values()
-   line 94 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_nested\_element-&gt;process()
-   line 95 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;process()
-   line 95 of \\backup\\util\\plan\\backup\_structure\_step.class.php: call to backup\_nested\_element-&gt;process()
-   line 153 of \\backup\\util\\plan\\base\_task.class.php: call to backup\_structure\_step-&gt;execute()
-   line 148 of \\backup\\util\\plan\\base\_plan.class.php: call to base\_task-&gt;execute()
-   line 106 of \\backup\\util\\plan\\backup\_plan.class.php: call to base\_plan-&gt;execute()
-   line 309 of \\backup\\controller\\backup\_controller.class.php: call to backup\_plan-&gt;execute()
-   line 111 of \\backup\\util\\ui\\backup\_ui.class.php: call to backup\_controller-&gt;execute\_plan()
-   line 89 of \\backup\\backup.php: call to backup\_ui-&gt;execute()

The missing file appears to be 02d951a20998c348dbcf98a6bfd4f8077cbb43cb but this is not listed by coursefiles.php.

**SQL query:** SELECT \* FROM \`mdl\_files\` WHERE \`contenthash\` LIKE '02d951a20998c348dbcf98a6bfd4f8077cbb43cb' LIMIT 0, 30 ;
**Rows:** 1

<table style="width:100%;">
<colgroup>
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id</p></td>
<td><p>contenthash</p></td>
<td><p>pathnamehash</p></td>
<td><p>contextid</p></td>
<td><p>component</p></td>
<td><p>filearea</p></td>
<td><p>itemid</p></td>
<td><p>filepath</p></td>
<td><p>filename</p></td>
<td><p>userid</p></td>
<td><p>filesize</p></td>
<td><p>mimetype</p></td>
<td><p>status</p></td>
<td><p>source</p></td>
<td><p>author</p></td>
<td><p>license</p></td>
<td><p>timecreated</p></td>
<td><p>timemodified</p></td>
<td><p>sortorder</p></td>
</tr>
<tr class="even">
<td><p>1052979</p></td>
<td><p>02d951a20998c348dbcf98a6bfd4f8077cbb43cb</p></td>
<td><p>418fd2647b870fce32221406110630effd243a6c</p></td>
<td><p>10974</p></td>
<td><p>user</p></td>
<td><p>icon</p></td>
<td><p>0</p></td>
<td><p> </p></td>
<td><p>f1.jpg</p></td>
<td><p><em>NULL</em></p></td>
<td><p>4804</p></td>
<td><p>image/jpeg</p></td>
<td><p>0</p></td>
<td><p><em>NULL</em></p></td>
<td><p><em>NULL</em></p></td>
<td><p><em>NULL</em></p></td>
<td><p>1337129968</p></td>
<td><p>1337129968</p></td>
<td><p>0</p></td>
</tr>
</tbody>
</table>

This appears to be the image icon for the user.

I copied that file and now get the following error:

**Debug info:** D:\\xampp\\moodle2backupdata/filedir/d2/6f/d26f8eef35c68088908d2ae6cbba803d3cd7e4c9
**Stack trace:**

-   line 174 of \\lib\\filestorage\\stored\_file.php: file\_exception thrown
-   line 90 of \\backup\\util\\helper\\backup\_file\_manager.class.php: call to stored\_file-&gt;copy\_content\_to()
-   line 101 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_file\_manager::copy\_file\_moodle2backup()
-   line 70 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;fill\_values()
-   line 94 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_nested\_element-&gt;process()
-   line 95 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;process()
-   line 95 of \\backup\\util\\plan\\backup\_structure\_step.class.php: call to backup\_nested\_element-&gt;process()
-   line 153 of \\backup\\util\\plan\\base\_task.class.php: call to backup\_structure\_step-&gt;execute()
-   line 148 of \\backup\\util\\plan\\base\_plan.class.php: call to base\_task-&gt;execute()
-   line 106 of \\backup\\util\\plan\\backup\_plan.class.php: call to base\_plan-&gt;execute()
-   line 309 of \\backup\\controller\\backup\_controller.class.php: call to backup\_plan-&gt;execute()
-   line 111 of \\backup\\util\\ui\\backup\_ui.class.php: call to backup\_controller-&gt;execute\_plan()
-   line 89 of \\backup\\backup.php: call to backup\_ui-&gt;execute()

SQL query: select \* from mdl\_files where contenthash like 'd26f8eef35c68088908d2ae6cbba803d3cd7e4c9' LIMIT 0, 30 ;
Rows: 1

<table style="width:100%;">
<colgroup>
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id</p></td>
<td><p>contenthash</p></td>
<td><p>pathnamehash</p></td>
<td><p>contextid</p></td>
<td><p>component</p></td>
<td><p>filearea</p></td>
<td><p>itemid</p></td>
<td><p>filepath</p></td>
<td><p>filename</p></td>
<td><p>userid</p></td>
<td><p>filesize</p></td>
<td><p>mimetype</p></td>
<td><p>status</p></td>
<td><p>source</p></td>
<td><p>author</p></td>
<td><p>license</p></td>
<td><p>timecreated</p></td>
<td><p>timemodified</p></td>
<td><p>sortorder</p></td>
</tr>
<tr class="even">
<td><p>1052983</p></td>
<td><p>d26f8eef35c68088908d2ae6cbba803d3cd7e4c9</p></td>
<td><p>da037c5a70eb0b0209bdfa08e045506d01db94d1</p></td>
<td><p>10974</p></td>
<td><p>user</p></td>
<td><p>icon</p></td>
<td><p>0</p></td>
<td><p>f2.jpg</p></td>
<td><p>NULL</p></td>
<td><p>1920</p></td>
<td><p>image/jpeg</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>1337129968</p></td>
<td><p>1337129968</p></td>
<td><p>0</p></td>
<td></td>
</tr>
</tbody>
</table>

SELECT \* FROM \`mdl\_files\` WHERE contextid=10974

<table style="width:100%;">
<colgroup>
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
<col width="5%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id</p></td>
<td><p>contenthash</p></td>
<td><p>pathnamehash</p></td>
<td><p>contextid</p></td>
<td><p>component</p></td>
<td><p>filearea</p></td>
<td><p>itemid</p></td>
<td><p>filepath</p></td>
<td><p>filename</p></td>
<td><p>userid</p></td>
<td><p>filesize</p></td>
<td><p>mimetype</p></td>
<td><p>status</p></td>
<td><p>source</p></td>
<td><p>author</p></td>
<td><p>license</p></td>
<td><p>timecreated</p></td>
<td><p>timemodified</p></td>
<td><p>sortorder</p></td>
</tr>
<tr class="even">
<td><p>1052979</p></td>
<td><p>02d951a20998c348dbcf98a6bfd4f8077cbb43cb</p></td>
<td><p>418fd2647b870fce32221406110630effd243a6c</p></td>
<td><p>10974</p></td>
<td><p>user</p></td>
<td><p>icon</p></td>
<td><p>0</p></td>
<td><p>f1.jpg</p></td>
<td><p>NULL</p></td>
<td><p>4804</p></td>
<td><p>image/jpeg</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>13371 29968</p></td>
<td><p>1337129968</p></td>
<td><p>0</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>1052981</p></td>
<td><p>da39a3ee5e6b4b0d3255bfef95601890afd80709</p></td>
<td><p>5f067b55c27a23d883bf03d9cf91429cce81242f</p></td>
<td><p>10974</p></td>
<td><p>user</p></td>
<td><p>icon</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>1337129968</p></td>
<td><p>1337129968</p></td>
<td><p>0</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>1052983</p></td>
<td><p>d26f8eef35c68088908d2ae6cbba803d3cd7e4c9</p></td>
<td><p>da037c5a70eb0b0209bdfa08e045506d01db94d1</p></td>
<td><p>10974</p></td>
<td><p>user</p></td>
<td><p>icon</p></td>
<td><p>0</p></td>
<td><p>f2.jpg</p></td>
<td><p>NULL</p></td>
<td><p>1920</p></td>
<td><p>image/jpeg</p></td>
<td><p>0</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>NULL</p></td>
<td><p>1337129968</p></td>
<td><p>1337129968</p></td>
<td><p>0</p></td>
<td></td>
</tr>
</tbody>
</table>

So the 2 files it complained about so far both had a contextid of 10974. Copied over that second file but it now complains about another file. It's not efficient to keep running the backup to identify the missing files. We need a query to identify all those missing icons.

Tim provided the sql to get the avatar images:

SELECT f.contenthash

     , f.pathnamehash

     , f.component

     , f.filearea

     , f.itemid

     , f.filepath

     , f.filename

     , u.username

     , ctx.contextlevel

FROM

    mdl\_files f

INNER JOIN mdl\_context ctx

ON f.contextid = ctx.id

INNER JOIN mdl\_user u

ON ctx.instanceid = u.id

WHERE

    ctx.contextlevel = 30

    AND u.id IN (SELECT ue.userid

                 FROM

                     mdl\_user\_enrolments ue

                 INNER JOIN mdl\_enrol e

                 ON ue.enrolid = e.id

                 WHERE

                     e.courseid = 17409)

    AND f.filearea = 'icon'

    AND f.filename &lt;&gt; '.'

All the files were copied across and another backup attempted. Error message:
Can not read file, either file does not exist or there are permission problems
Debug info: D:\\xampp\\moodle2backupdata/filedir/24/ed/24ed6091c8d45ea680ca4dac8ef3427e90393343
Stack trace:

line 174 of \\lib\\filestorage\\stored\_file.php: file\_exception thrown
line 90 of \\backup\\util\\helper\\backup\_file\_manager.class.php: call to stored\_file-&gt;copy\_content\_to()
line 102 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_file\_manager::copy\_file\_moodle2backup()
line 70 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;fill\_values()
line 94 of \\backup\\moodle2\\backup\_custom\_fields.php: call to backup\_nested\_element-&gt;process()
line 95 of \\backup\\util\\structure\\backup\_nested\_element.class.php: call to file\_nested\_element-&gt;process()
line 95 of \\backup\\util\\plan\\backup\_structure\_step.class.php: call to backup\_nested\_element-&gt;process()
line 153 of \\backup\\util\\plan\\base\_task.class.php: call to backup\_structure\_step-&gt;execute()
line 148 of \\backup\\util\\plan\\base\_plan.class.php: call to base\_task-&gt;execute()
line 106 of \\backup\\util\\plan\\backup\_plan.class.php: call to base\_plan-&gt;execute()
line 309 of \\backup\\controller\\backup\_controller.class.php: call to backup\_plan-&gt;execute()
line 111 of \\backup\\util\\ui\\backup\_ui.class.php: call to backup\_controller-&gt;execute\_plan()
line 89 of \\backup\\backup.php: call to backup\_ui-&gt;execute()

That file is another avatar image but not belonging to a user enrolled on the course. It's mine.
next backup error:
Debug info: D:\\xampp\\moodle2backupdata/filedir/f9/87/f9878806b522754eed6ea5f548c7baedccf90f1e so is that one

SELECT contenthash, contextid,filename,contextlevel, u.id
FROM mdl\_files f
inner join mdl\_context ctx
on f.contextid=ctx.id
inner join mdl\_user u
on ctx.instanceid=u.id
WHERE
f.filearea = 'icon'
AND f.filename &lt;&gt; '.'
and u.id=23962 (that's my userid)

next error
Debug info: D:\\xampp\\moodle2backupdata/filedir/e4/cf/e4cfa462d302b13c6a669038737253cb4bbb0ba9

Tim was able to identify the following files by parsing the xml file created by a sucessful backup on another moodle2 instance:

0665d411a3bb4c4325e4f7e57937a9c5e11745b5

1fc3f9009e00a9c787efbcf6a04044c566b57ca2

3e5b394f1142e72ee4312c6f7f1d7ddadf8f7c61

47e78625a6da6c71f63c1ca70e3d5faee3215847

4a001ffc7d88a3de5ae0938a984300d50f5b53eb

4f874ab2096716f6dbea5d0a681048dee235a2d0

61b8311218011c9050e9cc8fafa90f787ca946dc

76a8cbef493919213a19bab1a42717023a9c2889

78cadba58b9fd6643fdf8d85eb415361a7541140

8bdc94f33961314b8267b3043e0952e8c4660fab

8d9fe9881fba6ee16a83aad032f93d5782a620f8

adb64208540deea3ff97498ef90109905cafb2c7

e4cfa462d302b13c6a669038737253cb4bbb0ba9 \*\*\*already existed. Must have been identified by another query

eb981f8e3a86212b2ab96e545023c22388a5a116

ecd0ec4f0ab6d22e530a0a7eb65c4bcd61c0f513

f6dbc3facbb3b840d67b3deb28c111af0ecafd9f

Once these files were copied over, the backup was successful. Now need to either write a query or an parse the xml to get the files but not sure if the xml file would get generated if the backup was unsuccessful.

### Restoring the backup

Course id 2987on moodle2-dev was selected. When uploading the backup file error message:

ERROR: Invalid JSON string$CFG-&gt;noemailever active, no email message sent.line 45 of \\message\\output\\email\\message\_output\_email.php: call to debugging()line 183 of \\lib\\messagelib.php:
call to message\_output\_email-&gt;send\_message()line 709 of \\lib\\uploadlib.php: call to message\_send()line 988 of \\repository\\lib.php:
call to clam\_message\_admins()line 109 of \\repository\\upload\\lib.php: call to repository::antivir\_scan\_file()line 264 of \\repository\\repository\_ajax.php:
call to repository\_upload-&gt;upload()$CFG-&gt;noemailever active, no email message sent.line 45 of \\message\\output\\email\\message\_output\_email.php:
call to debugging()line 183 of \\lib\\messagelib.php: call to message\_output\_email-&gt;send\_message()line 709 of \\lib\\uploadlib.php:
call to message\_send()line 988 of \\repository\\lib.php: call to clam\_message\_admins()line 109 of \\repository\\upload\\lib.php:
call to repository::antivir\_scan\_file()line 264 of \\repository\\repository\_ajax.php:

Fixed this error by turning off virus scanning of uploaded files in the site admin &gt; security settings. File Uploaded OK.
Selected to restore in this course and Merge the backup course into this course. Left everything with default settings.
Error message:

**Debug info:** Duplicate entry '48577-53335' for key 'mdl\_gradgrad\_useite\_uix'
INSERT INTO mdl\_grade\_grades (userid,rawgrade,rawgrademax,rawgrademin,rawscaleid,usermodified,finalgrade,hidden,locked,locktime,exported,overridden,excluded,feedback,feedbackformat,information,informationformat,timecreated,timemodified,itemid) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
\[array (
0 =&gt; '48577',
1 =&gt; NULL,
2 =&gt; '100.00000',
3 =&gt; '0.00000',
4 =&gt; NULL,
5 =&gt; NULL,
6 =&gt; NULL,
7 =&gt; '0',
8 =&gt; '0',
9 =&gt; '0',
10 =&gt; '0',
11 =&gt; '0',
12 =&gt; '0',
13 =&gt; NULL,
14 =&gt; '0',
15 =&gt; NULL,
16 =&gt; '0',
17 =&gt; NULL,
18 =&gt; NULL,
19 =&gt; '53335',
)\]
**Stack trace:**

-   line 397 of /lib/dml/moodle\_database.php: dml\_write\_exception thrown
-   line 893 of /lib/dml/mysqli\_native\_moodle\_database.php: call to moodle\_database-&gt;query\_end()
-   line 935 of /lib/dml/mysqli\_native\_moodle\_database.php: call to mysqli\_native\_moodle\_database-&gt;insert\_record\_raw()
-   line 221 of /backup/moodle2/restore\_stepslib.php: call to mysqli\_native\_moodle\_database-&gt;insert\_record()
-   line 131 of /backup/util/plan/restore\_structure\_step.class.php: call to restore\_gradebook\_structure\_step-&gt;process\_grade\_grade()
-   line 103 of /backup/util/helper/restore\_structure\_parser\_processor.class.php: call to restore\_structure\_step-&gt;process()
-   line 125 of /backup/util/xml/parser/processors/grouped\_parser\_processor.class.php: call to restore\_structure\_parser\_processor-&gt;dispatch\_chunk()
-   line 91 of /backup/util/helper/restore\_structure\_parser\_processor.class.php: call to grouped\_parser\_processor-&gt;postprocess\_chunk()
-   line 148 of /backup/util/xml/parser/processors/simplified\_parser\_processor.class.php: call to restore\_structure\_parser\_processor-&gt;postprocess\_chunk()
-   line 92 of /backup/util/xml/parser/processors/progressive\_parser\_processor.class.php: call to simplified\_parser\_processor-&gt;process\_chunk()
-   line 169 of /backup/util/xml/parser/progressive\_parser.class.php: call to progressive\_parser\_processor-&gt;receive\_chunk()
-   line 253 of /backup/util/xml/parser/progressive\_parser.class.php: call to progressive\_parser-&gt;publish()
-   line ? of unknownfile: call to progressive\_parser-&gt;end\_tag()
-   line 158 of /backup/util/xml/parser/progressive\_parser.class.php: call to xml\_parse()
-   line 137 of /backup/util/xml/parser/progressive\_parser.class.php: call to progressive\_parser-&gt;parse()
-   line 105 of /backup/util/plan/restore\_structure\_step.class.php: call to progressive\_parser-&gt;process()
-   line 153 of /backup/util/plan/base\_task.class.php: call to restore\_structure\_step-&gt;execute()
-   line 148 of /backup/util/plan/base\_plan.class.php: call to base\_task-&gt;execute()
-   line 157 of /backup/util/plan/restore\_plan.class.php: call to base\_plan-&gt;execute()
-   line 315 of /backup/controller/restore\_controller.class.php: call to restore\_plan-&gt;execute()
-   line 147 of /backup/util/ui/restore\_ui.class.php: call to restore\_controller-&gt;execute\_plan()
-   line 46 of /backup/restore.php: call to restore\_ui-&gt;execute()

Tried restore again.
and this time selected to Restore into this course and Delete the contents of this course and then restore.
Error message:
Trying to restore user 'ucbtjor' from backup file will cause conflict

advice on <http://docs.moodle.org/22/en/Backup_and_restore_FAQ#Restore_stops_with_the_message_.22Trying_to_restore_user_xxxx_from_backup_file_will_cause_conflict.22>

## Restore stops with the message "Trying to restore user xxxx from backup file will cause conflict"<http://docs.moodle.org/22/en/File:Moodle_2.0_Restore_breaks.png> <http://docs.moodle.org/22/en/File:Moodle_2.0_Restore_breaks.png>

Error message in Moodle 2.0
This message is displayed when:

1.  Your target site has one xxxx user (xxxx being the username)
2.  The backup being restored also has one xxxx user
3.  After various comparisons, Moodle has detected that the xxxx user in 1. and the xxxx user in 2. aren't the same user.

If 1, 2 and 3 above happens, restore stops before performing any action as far as restoring that user will end associating "things" (create activities, posts, attempts... whatever...) to the xxxx user in the target site, when those "things" weren't performed by the same user at all.

Those checks and behaviour were introduced in Moodle 1.9.x and continue being valid under 2.0. Usually the xxxx user in the messages is the "admin" user (that exists in practically all Moodle installations).

There are two possible solutions to make both xxxx users in 1 and 2 to match (and avoid the conflict):

a) Modify the backup's **users.xml** file and make the *email* or *firstaccess* fields match with the ones in target site.
b) Modify the **target site** and set the user *email* or *firstaccess* fields to match with the ones in backup's user.xml file.

Method a) is recommended so the restore process will match both xxxx users and every "thing" in the backup file belonging to xxxx will be associated to the already existing xxxx user in the target site.This doesn't resolve the problem because the email and firstaccess in user.xml exactly matches the user in mdl\_users but the user id is different:
select firstaccess,email,username,id from mdl\_user where username like "ucbtjor";
------------------{}------+

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>firstaccess</p></td>
<td><p>email</p></td>
<td><p>username</p></td>
<td><p>id</p></td>
</tr>
</tbody>
</table>

------------------{}------+

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>j.orledge@ucl.ac.uk</p></td>
<td><p>ucbtjor</p></td>
<td><p>198367</p></td>
</tr>
</tbody>
</table>

------------------{}------+
1 row in set (0.16 sec)

&lt;user id="200007" contextid="1371336"&gt;
&lt;username&gt;ucbtjor&lt;/username&gt;
&lt;idnumber&gt;jorle76&lt;/idnumber&gt;
&lt;firstname&gt;Josie M&lt;/firstname&gt;
&lt;lastname&gt;Orledge&lt;/lastname&gt;
&lt;email&gt;j.orledge@ucl.ac.uk&lt;/email&gt;
&lt;icq&gt;&lt;/icq&gt;
&lt;skype&gt;&lt;/skype&gt;
&lt;yahoo&gt;&lt;/yahoo&gt;
&lt;aim&gt;&lt;/aim&gt;
&lt;msn&gt;&lt;/msn&gt;
&lt;phone1&gt;&lt;/phone1&gt;
&lt;phone2&gt;&lt;/phone2&gt;
&lt;institution&gt;&lt;/institution&gt;
&lt;department&gt;Genetics, Evolution & Environm&lt;/department&gt;
&lt;address&gt;&lt;/address&gt;
&lt;city&gt;London&lt;/city&gt;
&lt;country&gt;&lt;/country&gt;
&lt;lastip&gt;128.40.80.132&lt;/lastip&gt;
&lt;picture&gt;0&lt;/picture&gt;
&lt;url&gt;&lt;/url&gt;
&lt;description&gt;&lt;/description&gt;
&lt;descriptionformat&gt;1&lt;/descriptionformat&gt;
&lt;imagealt&gt;$ (NULL)$&lt;/imagealt&gt;
&lt;auth&gt;ldap&lt;/auth&gt;
&lt;confirmed&gt;1&lt;/confirmed&gt;
&lt;policyagreed&gt;1&lt;/policyagreed&gt;
&lt;deleted&gt;0&lt;/deleted&gt;
&lt;lang&gt;en&lt;/lang&gt;
&lt;theme&gt;&lt;/theme&gt;
&lt;timezone&gt;99&lt;/timezone&gt;
&lt;firstaccess&gt;0&lt;/firstaccess&gt;
&lt;lastaccess&gt;1336991601&lt;/lastaccess&gt;
&lt;lastlogin&gt;1336933566&lt;/lastlogin&gt;
&lt;currentlogin&gt;1336980683&lt;/currentlogin&gt;
&lt;mailformat&gt;1&lt;/mailformat&gt;
&lt;maildigest&gt;0&lt;/maildigest&gt;
&lt;maildisplay&gt;2&lt;/maildisplay&gt;
&lt;htmleditor&gt;1&lt;/htmleditor&gt;
&lt;ajax&gt;1&lt;/ajax&gt;
&lt;autosubscribe&gt;1&lt;/autosubscribe&gt;
&lt;trackforums&gt;1&lt;/trackforums&gt;
&lt;timecreated&gt;1337125609&lt;/timecreated&gt;
&lt;timemodified&gt;0&lt;/timemodified&gt;
&lt;trustbitmask&gt;0&lt;/trustbitmask&gt;
&lt;screenreader&gt;0&lt;/screenreader&gt;
&lt;custom\_fields&gt;
&lt;/custom\_fields&gt;
&lt;tags&gt;
&lt;/tags&gt;
&lt;preferences&gt;
&lt;/preferences&gt;
&lt;roles&gt;
&lt;role\_overrides&gt;
&lt;/role\_overrides&gt;
&lt;role\_assignments&gt;
&lt;/role\_assignments&gt;
&lt;/roles&gt;
&lt;/user&gt;

Deleted user from xml, re-created the zip file.

zip file is far bigger than the mbz file and now zip file won't upload to moodle-dev cos it's too big.

Giving up on moodle-dev. Will try moodle-uat

Restore as a new course. Category = test courses

Kept all the defaults. Course restored successfully

course id=17425

Check all data and all files included. Everything looks ok.

Try another restore but this time to the same course.

Restore into this course and Merge the backup course into this course.

Error writing to database

apache error log: Potential coding error - existing temptables found when disposing database. Must be dropped!, referer: <https://moodle2-uat.ucl.ac.uk/backup/restore.php>

But errors displayed in the apache error log seem to indicate another problem:

Error writing to database Debug: Duplicate entry '48577-78473' for key 'mdl\_gradgrad\_useite\_uix'
INSERT INTO mdl\_grade\_grades (userid,rawgrade,rawgrademax,rawgrademin,rawscaleid,usermodified,finalgrade,hidden,locked,locktime,exported,overridden,excluded,feedback,feedbackformat,information,informationformat,
timecreated,timemodified,itemid)
VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
\[array (
    0 =&gt; '48577',
    1 =&gt; NULL,
    2 =&gt; '100.00000',
    3 =&gt; '0.00000',
    4 =&gt; NULL,
    5 =&gt; NULL,
    6 =&gt; NULL,
    7 =&gt; '0',
    8 =&gt; '0',
    9 =&gt; '0',
    10 =&gt; '0',
    11 =&gt; '0',
    12 =&gt; '0',
    13 =&gt; NULL,
    14 =&gt; '0',
    15 =&gt; NULL,
    16 =&gt; '0',
    17 =&gt; NULL,
    18 =&gt; NULL,
    19 =&gt; '78473'
    )
\]

Tried again but with Restore in to this course and Delete the contents of this course and then restore. That worked

#### Test 2 course id=17049

Get a list of files and copied them to moodle2backup on localhost.

backed up the course and ticked everything other than anonymize user information.

Attempts were missing from this course on moodle2backup on localhost so in order to get them, took a backup of course on moodle2-uat which included all attempts by 3 users

In moodle2-uat check that grades are the same as moodle-live

Delete the quiz in moodle2uat

This restored using the backup from moodle2backup.

#### Test 3 course id=17058

Restore resources

<http://moodle.org/mod/forum/discuss.php?d=200428>

<http://docs.moodle.org/dev/Restore_2.0_for_developers>

<http://tracker.moodle.org/browse/MDL-31650>

### Where to upload the backup file?

<http://moodle.org/mod/forum/discuss.php?d=203396&parent=887760>

File System repository appears to be most appropriate

Test on moodle-dev

create a folder /data/moodle-dev/repository/course backups

ftp the backed up course to /data/moodle-dev/repository/course backups (you'll need to rename the zip to mbz if it's come from moodle 1.x)

In moodle2-dev Plugins&gt;Repositories&gt;Manage repositories. Make File System=Enabled and visible.

The settings page is then displayed:

Ensure only the following setting is ticked:

Allow users to add a repository instance into the course

Only Admins can then add a File System instance to a course. As long as a repository instance is not created for the site, only admins will be able to view the contents of course backups folder. This is what we want.

It would be best to have all course backups in the one folder called course backups, that way it will be easier to housekeep and regularly remove old backup files once courses have been restored

When a file system instance is added to a course, all the files within that folder are visible so we don't really want to be adding the file system resource to user's courses because it may contain backups from other courses. The preferred solution is to have one course called Course backups which contains the file system resource and to use that to select the backups which need to be restored.

Create a category called restored courses and within that category create a course called Course Backups. Course id = 17133

Within that course, select Repositories and 'Create file system instance'.

From the drop down box select 'Course backups' and name it 'Course backups' and save.

If you need to restore a file you should see the 'course backups' folder in the file picker.

Trouble shooting

DDL sql execution error or if the apache error log displays Potential coding error - existing temptables found when disposing database. Must be dropped!

It's because the moodle user doesn't have permissions to create temporary tables.

grant create temporary tables on \`moodle\_dev\_223\`.\* TO 'moodleuser'@'localhost';
