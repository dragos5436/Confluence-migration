# moodle - restoring a course when there is no database backup on moodlevm-db

Email to is-storage@ucl.ac.uk

**To:** '<is-storageteam@ucl.ac.uk>'
**Cc:** Gramp, Jessica (<j.gramp@ucl.ac.uk>); Viswanathan, Vivek; <isd-ats@ucl.ac.uk>
**Subject:** restore required please

Could you please restore the last backups taken before 7am on 19/12/11 of the following files please:

Restore file from **/data/mysql-5.0.89-linux-i686-icc-glibc23/backup/mysqlbackup.dump.backup-20111219.gz on moodledb-c** to **/usr/local/mysql/backup/jo\_temp  on wasdev-b.ucl-0.ucl.ac.uk**

Restore folder from /**data/moodle/7340 on moodlevm-nfs** to **/data/moodle/v1913i/7340 on wasdev-b.ucl-0.ucl.ac.uk**

Restore folder from **/data/moodle/4269 on moodlevm-nfs** to **/data/moodle/v1913i/4269 on wasdev-b.ucl-0.ucl.ac.uk**

Restore folder from **/data/moodle/184  on moodlevm-nfs** to **/data/moodle/v1913i/184  on wasdev-b.ucl-0.ucl.ac.uk**

Could you get back to me with an estimate of when it can be done.

Many thanks

login to wasdev-b as ccspsql

cd /usr/local/mysql/backup/jo\_temp

gunzip **mysqlbackup.dump.backup-20111219.gz**

../scandump moodle &lt; **mysqlbackup.dump.backup-20111219** &gt; restore\_moodle\_20111219.sql

edit the file so that it uses a new database

vi restore\_moodle\_20111219.sql

use the arrow keys to move to the `use moodle;` line of code (probably within the first 10 lines of the file) and type dd

to delete the line of code.
To save the file and exit vi type::wq

Type:more restore\_moodle\_20111219.sql
to check that the `use moodle;` line has gone. (Ctrl+C to get back to the command prompt).

Start MySQL in the normal way

/usr/local/mysql/bin/mysql -uroot -p

Create a new database, and use the restored .sql file you created above to populate it:

create database moodle\_restore\_20111219;
use moodle\_restore\_20111219;
source /usr/local/mysql/backup/jo\_temp/restore\_moodle\_20111219.sql;

Edit the /data/apache/htdocs/moodle-dev/v1914/config.php on wasdev-b file to reflect the location of the files, the database you want it to use etc:

To make it clear what day your snapshot is from edit the Front Page to add the date to the top left corner of Moodle: Administration &gt; Front Page &gt; Front Page settings and edit the full and short site name to include the date of the snapshot. Scroll to the bottom of the page to Save your changes.
