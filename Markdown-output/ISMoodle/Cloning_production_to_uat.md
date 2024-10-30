# Cloning production to uat

## Copy the database dump file

login in to moodle-db-b as ccspsql

scp /data/mysql/backup/mysqlbackup.dump.backup-yyyymmdd.gz <ccspsql@moodle-uat.ucl.ac.uk>:/data/mysql/mysql-5.6/backup/temp/jo (it takes ages to get the db out of the dump file, quicker to just backup the db)

## extract  the database

login in to moodle-uat as ccspsql

cd /data/mysql/mysql-5.6/backup/temp/jo

gunzip mysqlbackup.dump.backup-yyyymmdd.gz

./scandump --skipuse moodle\_sits\_management\_2 &lt; mysqlbackup.dump.backup-yyyymmdd &gt; moodle\_sits\_management\_2.sql

remove references to moodle production database

open moodle\_sits\_management\_2.sql in a text editor

search for moodle\_live and replace with the current moodle-uat database

search for moodle-db-a and replace with moodle-uat

## import the database

mysql -usitsfilteruser -p moodle\_sits\_management\_uat2 &lt; /data/mysql/mysql-5.6/backup/temp/jo/moodle\_sits\_management\_2.sql

permission issues

If you get error messages about permissions while importing it is likely to be because the dump file is referencing something to do with the live database

## Update the database with uat details:

login in to the mysql console as sitsfilteruser

mysql&gt; use  moodle\_sits\_management\_uat2;

mysql&gt; update system\_settings set setting='UCL\_SIS\_export.xml' where id=13;

mysql&gt; update system\_settings set setting='UCL\_SIS\_UserProfileFields.csv' where id=33;

mysql&gt; update system\_settings set setting="/data/moodle/UCL\_SIS/" where id=29;

mysql&gt; update system\_settings set setting="/data/moodle/UCL\_SIS/" where id=11;

mysql&gt; update system\_settings set setting=" <ccspmdl@moodle-admin-uat.ucl.ac.uk>" where id=3;

mysql&gt; update system\_settings set setting="SITS Filter 2 - XML Creation Complete (moodle-admin-uat)" where id=7;

## Update moodle with the location of the sits xml file

In moodle go to Site administration &gt; Plugins &gt; Enrolments &gt; [Portico enrolment](https://v289.moodle-dev.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise)

File location = /data/moodle247/UCL\_SIS/UCL\_SIS\_export.xml

 

## Updating the views

NB this appies to UAT. When setting up on the dev server make sure you replace the 'uat' with 'dev' in the query below.

There a 3 views which reference the moodle database. These are:

sf2\_v\_enrolcourses

sf2\_v\_enrolmemberships

sf2\_v\_personaltutorrole

These 3 views need to be updated so they reference the correct moodle database. It's best to do this within phpmyadmin. Select the Informationschema database. If you run the following query substituting moodle\_uat\_current for the name of the current moodle database and moodle\_uat\_new for the new database:

**query to generate sql to update the views**

``` java
SELECT
    TABLE_SCHEMA
  , TABLE_NAME
  , CONCAT('CREATE OR REPLACE VIEW ', TABLE_SCHEMA, '.', TABLE_NAME, ' AS ',
           REPLACE(VIEW_DEFINITION, 'moodle_uat_current', 'moodle_uat_new'), ';') AS sql_create
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'moodle_sits_management_uat2'
AND VIEW_DEFINITION LIKE '%moodle_uat_current%';
```

It will generate the 3 queries in the sql\_create column that you will then need to run to update the views with the correct database name.

The following example applies to \\moodle-sits-filter-2\\branches\\moodle-sits-filter-2\_release\\documentation\\ELE-Integration\\database\\sitsfilter-release-02 - AN - 151001.sql

replace the moodle database with the name of the instance being used eg replace moodle\_live with moodle\_uat\_20150924

 

Testing

Find some modules where the number of students in a group totals&gt;500 (you can select more than 1 group

select module\_code,COUNT(\*) from moodle\_v\_cmis\_studentgroup GROUP BY module\_code ORDER BY 2 DESC

MODULE\_CODE  COUNT(\*)               

------------ ----------------------

MSIN7004     423                    

SERS2002     115                    

SERS2001     64                     

ANTH7018     30                     

SERS2024     30                     

SERS2004     26 

 Go to any course in moodle-uat and map the module to the course

eg. go to <https://v288.moodle-uat.ucl.ac.uk/blocks/portico_enrolments/view.php?blockid=441679&courseid=29355> and map MSIN7004 and SERS2002 to the course and tick 'allow group import'

login to moodle-admin-uat as ccspmdu and run the following:

cd /usr/local/sits\_filter2/app && cake RunSits runCronJob

scp  /data/moodle/UCL\_SIS/UCL\_SIS\_export.xml ccspmdu@moodle-uat:/data/moodle247/UCL\_SIS/UCL\_SIS\_export.xml

Go to <https://v288.moodle-uat.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise> and make sure the file locations are set correctly, then select '[perform an IMS Enterprise import right now](https://v288.moodle-uat.ucl.ac.uk/enrol/imsenterprise/importnow.php?sesskey=HavT2H54mb)'

On moodle-admin-uat as ccspmdu

Run the cmis group import

login to moodle-admin-uat as ccspmdu and run the following:

cd /usr/local/sits\_filter2

cake RunCmis runCmisCronJob

 


