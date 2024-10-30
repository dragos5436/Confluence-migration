# Creating a dev instance of moodle

## Database Copy

Steps 1-4 below can be done manually, but also look at the script provided by Sam Washington. It lives on DEV and UAT under /data/mysql/backup

An example command to run it would be

    ./copy_live_moodle_to_dev_from_last_backup.sh moodle_dev_martins_db_copy subdomain.moodle-dev.ucl.ac.uk

Instructions are in the script - see code block at the end of this page.

### 1) Copy the db dump file from the previous nights backup on to moodle-dev

Login to moodle-db-a (no logfile but not recent)   or   moodle-db-b (big logfile but current)     as ccspsql

Find the backup file you need in /data/mysql/backup/

scp mysqlbackup.dump.backup-yyyymmdd.gz ccspsql@moodle-dev.ucl.ac.uk:/data/mysql/mysql-5.6/backup/temp/

Login to moodle-dev as ccspsql

### 2) Unzip the dump file

cd /data/mysql/mysql-5.6/backup/temp/

gunzip mysqlbackup.dump.backup-yyyymmdd.gz (24Gb = 5mins)

### 3) Extract the moodle schema from the dump file

./scandump --skipuse moodle\_live &lt; mysqlbackup.dump.backup-20121031 &gt; restore\_moodle.sql (10Gb=3mins)

### 4) Create the new database

Login in to moodle-dev as ccspsql

Login to mysql console as root

mysql -u root -p

drop database moodle\_dev\_date; (where ver is the database version that is the same as production

create database moodle\_dev\_date default character set utf8 collate utf8\_unicode\_ci;

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, CREATE TEMPORARY TABLES, DROP, INDEX, ALTER ON moodle\_dev\_ver.\* TO \`moodleuser\`@\`localhost\`;

use moodle\_dev\_date;

set names 'utf8';

source restore\_moodle.sql (3 hours)

Search and replace [moodle.ucl.ac.uk](http://moodle.ucl.ac.uk) strings with [vxxx.moodle-dev.ucl.ac](http://vxxx.moodle-dev.ucl.ac).ucl strings in the database.

## Moodle Data folder

Create a new folder in /data/moodle   with the name of the version of Moodle you are installing e.g. v317

Ender this path in the 'path to data' in the local settings - see below.

## Moodle Code

### Copy the moodle code

export the code from GIT

<https://git.dcs.ucl.ac.uk/lta/moodle>

<git@git.dcs.ucl.ac.uk>:lta/moodle.git

and place into a new folder on the DEV server

create a sim link to point to the new folder

create a new cache file and a new data file   eg "v314"    and "cache\_v314"   in /data/moodle

**Disable** Behat - comment out line "require\_once(dirname(\_\_FILE\_\_) . '/behat\_settings.php');" from moodle-vhosts/moodle\_vxxx

**Enable** Behat - create behat\_settings.php in moodle-vhosts/moodle\_vxxx and edit settings

copy the config and local settings files from another instance on the DEV server.   Config can stay unedited.

Local settings needs

-   URL of instance
-   Path to database
-   Path to data

Go to the url you specified above and hold your breath. It should start the upgrade process.

in moodle go to /admin/tool/replace.

Modify the banner

In order to make it obvious that this is dev or uat instance add a banner by selecting :
Site administration&gt; Appearance&gt;Additional HTML
copy the following text in to 'When Body is Opened'

&lt;div style="background-color: \#FF0000;height:50px;font-size:1.5em"&gt;&lt;b&gt;&lt;center&gt;This is the UAT instance of Moodle. Do not do any work here&lt;/b&gt;
&lt;/center&gt;
&lt;p style="font-size:0.5em"&gt;Database imported form live on 12/11/13
&lt;/div&gt;

But substitute the date with the date that the backup of the database was taken

====================================

### Sam W's script to automatically copy the db dump file from the previous nights backup on to moodle-dev

(bash)

**refresh\_db**

``` bash
# Refresh DEV database: copy live database to dev
# It's important you login as ccspsql. It's not going to work for another user.
# Script is intended to be used on moodle-dev.ucl.ac.uk
# Change accordingly if you use it elsewhere
#
# Make sure no one is using Moodle DEV
# copy blocks of code and paste on the terminal window
# if all is well, copy/paste the next block of code...

# define needed constants
NOW=$(date +"%Y%m%d") # will give us the date of the most recent backup
BACKUP_FILE="mysqlbackup.dump.backup-$NOW" # that's the backup file we want
TEMP_DIR="/data/mysql/mysql-5.6/backup/temp" # we'll be doing our work from that directory
BACKUP_HOST="moodle-db-b.ucl.ac.uk" # the server on which backups are kept
BACKUP_DIR="/data/mysql/backup" # on server (backup server), this is where files are kept 
MOODLE_SCHEMA="moodle_live" # target schema / database
# because later we enter passwords on the command line :( 
# and we don't want them to stay in the history
unset HISTFILE 
cd $TEMP_DIR
# copy recent database backup in current directory
# works because public key of $USER has been copied to $BACKUP_HOST
scp $USER@$BACKUP_HOST:$BACKUP_DIR/$FILE . # $USER is the logged in user: ccspsql
#uncompress file
gunzip ${BACKUP_FILE}.gz
#define name of unzipped file
RESTORE_FILE="restore_moodle-$NOW.sql"
./scandump --skipuse $MOODLE_SCHEMA < $BACKUP_FILE > $RESTORE_FILE 
# source databse credentials
# will set $DB_USER and $DB_PASSWORD
# Alternatively, type the following 2 lines on the command line (replace as appropriate)
#$DB_USER=xxx
#$DB_PASSWORD=yyy
. $HOME/.database_credentials # source databse credentials
#delete unnecessary file to free up disk space
rm $BACKUP_FILE
# create new database
echo "create database moodle_dev_$NOW default character set utf8 collate utf8_unicode_ci" | mysql -u $DB_USER -p$DB_PASSWORD
# execute statements
mysql -u $DB_USER -p$DB_PASSWORD moodle_dev_$NOW < $RESTORE_FILE # can last (3 hours)
# find name of old database
MOODLE_DIR="/data/apache/moodle-vhost/v2810"
OLD_DATABASE=$(grep '$CFG->dbname' $MOODLE_DIR/local_settings.php | cut -d"'" -f2)
#replace name of database in config file
sed -i s/${OLD_DATABASE}/moodle_dev_${NOW}/g $MOODLE_DIR/local_settings.php
# drop old database
echo "DROP DATABASE IF EXISTS $OLD_DATABASE" | mysql -u $DB_USER -p$DB_PASSWORD
# delete file used to restore database
rm $RESTORE_FILE
##
## End of script
## file is named refresh_db.sh
##
##
## execute the script at 03:00 (at your own risk)
##
at -f $HOME/refresh_db.sh 03:00 AM
```
