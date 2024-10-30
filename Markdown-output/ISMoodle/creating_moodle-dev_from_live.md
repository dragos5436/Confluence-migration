# creating moodle-dev from live

### Copy the db dump file from the previous nights backup on to moodle-dev

Login to moodle-db-a as ccspsql

Find the backup file you need in /data/mysql/backup/

scp mysqlbackup.dump.backup-yyyymmdd.gz ccspsql@moodle-dev.ucl.ac.uk:/data/mysql/mysql/backups

(For UAT, scp mysqlbackup.dump.backup-yyyymmdd.gz ccspsql@moodle-uat.ucl.ac.uk:/data/mysql/backup)

Login to moodle-dev as ccspsql

### Unzip the dump file

cd /data/mysql/mysql/backups

gunzip mysqlbackup.dump.backup-yyyymmdd.gz (24Gb = 5mins)

### Extract the moodle schema from the dump file

./scandump --skipuse moodle\_live &lt; mysqlbackup.dump.backup-20121031 &gt; restore\_moodle.sql (10Gb=3mins)

### Create the new database

Login in to moodle-dev as ccspsql

Login to mysql console as root

mysql -uroot -p

drop database moodle\_dev\_ver; (where ver is the database version that is the same as production

create database moodle\_dev\_ver default character set utf8 collate utf8\_unicode\_ci;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, CREATE TEMPORARY TABLES, DROP, INDEX, ALTER ON moodle\_dev\_ver.\* TO \`moodleuser\`@\`localhost\`;

use moodle\_dev\_ver;

set names 'utf8';

source restore\_moodle.sql (3 hours)

### Copy the moodle code

export the code from <https://svn.ucl.ac.uk/repos/isd/moodle2/moodle2-main/tags/live/20121203_scp6042> (or whatever tag is on production)

Modify the moodle config file

If you have exported the code from svn you probably have a copy of the config file for production moodle
Before loading moodle-dev in your browser, make sure you check the moodle config file to ensure that it is not pointing to the live database.

Search and replace moodle.ucl.ac.uk strings with moodle\_dev\_226.ucl.ac.ucl strings in the database.

in moodle go to /admin/tool/replace
