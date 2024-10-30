# production deployment - 21/01/16

## Deploy the CMIS group import code

Deploy the CMIS group import code from

[https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/moodle-sits-filter-2\_release/moodle-admin/usr/local/sits\_filter2/app](https://svn.ucl.ac.uk/projects/isd/moodle-sits-filter-2/browser/branches/moodle-sits-filter-2_release/moodle-admin/usr/local/sits_filter2/app) 

to

/usr/local/sits\_filter2/app on moodle-admin.

changed files:
moodle-sits-filter-2\\branches\\moodle-sits-filter-2\_release\\moodle-admin\\usr\\local\\sits\_filter2\\app\\Model\\StudentImport.php
moodle-sits-filter-2\\branches\\moodle-sits-filter-2\_release\\moodle-admin\\usr\\local\\sits\_filter2\\app\\Controller\\RestConfig.php
moodle-sits-filter-2\\branches\\moodle-sits-filter-2\_release\\moodle-admin\\usr\\local\\sits\_filter2\\app\\Console\\Command\\RunCmisShell.php

## Update the moodle\_sits\_management\_2 database

copy 

moodle-sits-filter-2\\branches\\moodle-sits-filter-2\_release\\documentation\\ELE-Integration\\database\\sitsfilter-release-02 - AN - 151001.sql 

to

/data/mysql/backup/temp on moodledb-a

Login to moodledb-a as ccspsql

cd /data/mysql/backup/temp

## Edit the database script for the instance of moodle

Edit sitsfilter-release-02 - AN - 151001.sql and 

remove reference to moodle\_sits\_management\_dev2

replace moodle\_dev\_20150728 with moodle\_live

## Run the script to update the database schema

mysql -umoodleuser -p

mysql&gt;use moodle\_sits\_management\_2

mysql&gt;source sitsfilter-release-02 - AN - 151001.sql

**Changes in this release**

The new release contains the following:

-   Personal tutor import from SITS
-   Additional user profile fields
-   Fix to the 500 limit on webservice calls
-   A view to use for the pre-approval block query, with additional indexes

 
