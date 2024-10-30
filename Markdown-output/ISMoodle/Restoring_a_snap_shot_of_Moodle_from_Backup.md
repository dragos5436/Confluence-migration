# Restoring a snap shot of Moodle from Backup

-   [Preparing the Database Backup](#RestoringasnapshotofMoodlefromBackup-PreparingtheDatabaseBackup)
-   [Preparing the Moodle application folder](#RestoringasnapshotofMoodlefromBackup-PreparingtheMoodleapplicationfolder)
-   [Looking at your snaphot of Moodle through the browser](#RestoringasnapshotofMoodlefromBackup-LookingatyoursnaphotofMoodlethroughthebrowser)
-   [Tidying up after yourself](#RestoringasnapshotofMoodlefromBackup-Tidyingupafteryourself)

It is possible to rebuild a a snapshot of Moodle from the nightly backups that are taken. To do this:

The things you need are:

-   a copy of the database backup from the day that you want to restore Moodle to
-   a copy of the moodle application files
-   a copy of the moodle data files

## Preparing the Database Backup

More details about the MySQL setup are at <http://www.ucl.ac.uk/~ccaajrl/mysql/>

To get a copy of the database backup login to moodledb-a/-b (ideally login to the master of the master/slave pair) and go to the following directory

``` java
cd /usr/local/mysql/backup
```

locate the file you want from the list of files in this folder (if the file you want is not there contact is-storage@ucl.ac.uk to get it from the archives) and type

``` java
scandump moodle < mysqlbackup.dump.backup-2 > restore_moodle_20081114.sql
if you use the following command it will create the sql file but without the create database and use commands:
 scandump --skipuse moodle < mysqlbackup.dump.backup-2 > restore_moodle_20081114.sql
```

where
- *moodle* is the name of the database you want to restore out of the 'dump' file
- *mysqlbackup.dump.backup-2* is the backup file for the date you want
- *restore\_moodle\_20081114.sql* is the file you are restoring the database to (give this file a name you will remember so you can identify it in a minute, it's also a good idea to put the date that the restore is from in the file name, use the date format yyyymmdd).

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> **IMPORTANT**<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Check this file as `use moodle;` is one of the first lines of it. Using the file as it is will over write the live Moodle database with the contents of this back which would be very bad!

To edit the file we need to use `vi` as `emacs` may not be able to read it if the file size is too large. To do this type:

``` java
vi restore_moodle_20081114.sql
```

use the arrow keys to move to the `use moodle;` line of code (probably within the first 10 lines of the file) and type

``` java
dd
```

to delete the line of code.
To save the file and exit vi type:

``` java
:wq
```

Type:

``` java
more restore_moodle_20081114.sql
```

to check that the `use moodle;` line has gone. (Ctrl+C to get back to the command prompt).

Useful Information

If you need to copy the sql file to another server, for example if you need to restore the db to another server you can use scp. The following example copies the sql file from the server you're currently logged in to, to the wasdev-a server:

moodledb-a:/usr/local/mysql/backup&gt; scp restore\_moodle\_20090529.sql ccspsql@wasdev-a.ucl-0.ucl.ac.uk:/data/mysql-5.0.77-linux-i686-icc-glibc23/backup

You will be prompted for the ccspsql password.

Start MySQL in the normal way:

``` java
mysql -u root -p
```

Create a new database, and use the restored .sql file you created above to populate it:

``` java
create database moodle_restore_20081114;
use moodle_restore_20081114;
source restore_moodle_20081114.sql;
```

This may take a while to run though so be patient.

## Preparing the Moodle application folder

Use the wasdev-a server to create your new snapshop backup Moodle installation.

Login to wasdev-a and move to the following directory:

``` java
cd /data/apache/htdocs/moodle/snapshot
```

create a new directory for the date you are restoring moodle from

``` java
mkdir moodle_restore_20081114
```

Copy the latest copy of the moodle application files from the live moodle server (unless significant upgrades/new plugins have been done on the live server since the date you are trying to restore to) to the new folder you have just created

``` java
rcp -r ccspmdl@moodle-a.ucl.ac.uk:/data/apache/htdocs/moodle moodle_restore_20081114
```

Enter the password when prompted
Move to the new directory you have created and check that the moodle application files appear as expected:

``` java
cd moodle_restore_20081114
ls
```

Edit the `config.php` file to reflect the location of the files, the database you want it to use etc:

``` java
emacs config.php
```

When you are working in the `emacs` text editor use the `delete` key rather than `backspace`
The bits of the file you need to edit/check are:

``` java
$CFG->dbname    = 'moodle_restore_20081114';
$CFG->wwwroot   = 'http://wasdev-a.ucl-0.ucl.ac.uk/snapshot/moodle_restore_20081114';
$CFG->dirroot   = '/data/apache/htdocs/moodle/snapshot/moodle_restore_20081114';
```

The other part of this file to check is `$CFG->dataroot  = '/data/moodle';` This will be pointing at the same 'moodledata' folder as the Development Moodle installation at <http://wasdev-a.ucl-0.ucl.ac.uk> (or <http://moodle-dev.ucl.ac.uk>). Depending on the reason for the restore/snapshot you may want to think about getting a backup of the /data/moodle folder from the live moodle service from the day of the restore, but as this folder is very large you may not want to do this if you don't need to. The snapshop will still work if you leave it pointing at /data/moodle

To save your changes and exit out of emacs:

``` java
Ctrl x s
Ctrl x c
```

(e.g. hold down the Ctrl key while you press x and keep Ctrl held down while you press s)

## Looking at your snaphot of Moodle through the browser

Go to <http://wasdev-a.ucl-0.ucl.ac.uk/snapshot/moodle_restore_20081114> you should be prompted with your restored Moodle installation, it will look exactly like the live Moodle installation but to check it go to **Administration** &gt; **Reports** &gt; **Logs** and check that there are no logs after the day that your snapshot is from.

To make it clear what day your snapshot is from edit the Front Page to add the date to the top left corner of Moodle: **Administration** &gt; **Front Page** &gt; **Front Page settings** and edit the full and short site name to include the date of the snapshot. Scroll to the bottom of the page to Save your changes.

## Tidying up after yourself

Creating all these snapshots will fill up the server so it is important to remove any files when they are no longer needed. You can remove the `/usr/local/mysql/backup/restore_moodle_20081114.sql` from the moodledb-a/-b database server straight away as it is not needed.
When the snapshop moodle installation is no longer needed you should remove the `/data/apache/htdocs/moodle/snapshot/moodle_restore_20081114` folder from wasdev-a:

``` java
rm -rf /data/apache/htdocs/moodle/snapshot/moodle_restore_20081114
```

and remove the database from moodledb-a/-b database server:

``` java
mysql -u root -p
drop database moodle_restore_20081114;
```

Leaving all of these files on the server after they are no longer needed adds clutter and makes the backups have to work harder to backup unnecessary files.
