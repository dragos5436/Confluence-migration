# SCORM

-   [Reports](#SCORM-Reports)
    -   [Requirements](#SCORM-Requirements)
    -   [Technical documentation](#SCORM-Technicaldocumentation)
        -   [class.DisplayReport.php](#SCORM-class.DisplayReport.php)
        -   [displayscormdata.php and displayQuizScores.php](#SCORM-displayscormdata.phpanddisplayQuizScores.php)
        -   [createCSV.php](#SCORM-createCSV.php)
        -   [/scripts/sortable.js](#SCORM-/scripts/sortable.js)
        -   [/images/](#SCORM-/images/)
        -   [/templates/ucl\_blue/scormreports.css](#SCORM-/templates/ucl_blue/scormreports.css)
    -   [Making the tables sortable(scp 3891)](#SCORM-Makingthetablessortable(scp3891))
-   [Importing data into scorm tables](#SCORM-Importingdataintoscormtables)
    -   [Background](#SCORM-Background)
    -   [Procedure](#SCORM-Procedure)
-   [Troubleshooting](#SCORM-Troubleshooting)

notes on the work Jo has done for Geoff etc ...

# Reports 

## Requirements

Geoff required a customised report to display activity information for users of Scorm modules in Geoff's course. Currently the reports with Moodle only display activity information for an individual. What he needed was a report that displays information for all individuals registered for a course, their progress within a lesson. In addition the data needed to be exported to a csv file so that it could be imported into Excel.

## Technical documentation

The scripts can be found in moodle/ucl\_scormreports and executed in the browser by loading  <http://moodle.ucl.ac.uk/ucl_scormreports/displayscormdata.php?id=995> or <http://moodle.ucl.ac.uk/ucl_scormreports/displayQuizScores.php?id=1927> where the id is the id of the course containing the scorm file

#### class.DisplayReport.php

This class creates a MySQL result set from the sql query string passed to it. It contains all the functions required by displayscormdata.php and createcsv.php including:

-   getUsers()
    creates an array of user names from the result set. It's used to populate the dropdown box. Returns an array.
-   getNumRecords()
    Returns the number of records selected in the result set.
-   getColHeadings()
    Creates an array of column headings from the result set and is used in the html table displayed and the csv file. Returns an array.
-   displayRecords()
    Displays an html table containing all the records from the query result set. The html table is formatted using /themes/ucl-blue/scormreports.css. To use the styles sheet, /themes/ucl-blue/styles\_layout.css must be modifed to include it.
-   createCSV()
    Creates a csv file from the result set and prompts the user to download or save the file.

#### displayscormdata.php and displayQuizScores.php

Creates an object of type DisplayReport and passes it the sql string. The query string gets generated dynamically depending the value selected in the drop down box. A link is provided to download the records selected by the query to a csv file. This script can be loaded from within a moodle course by specify a 'link to file' resource. The course id must be passed as a parameter in the url. It can also be loaded directly in the browser but again the course id must be specified. The course id is used to generate the query string. It is also used to check that the currently logged in user is authorised to view the results. If the user is not logged in to moodle, the moodle login form is displayed before running the script. This means that only authenticated moodle users can execute the script. If the user is a tutor or administrator a drop down box is displayed to allow the user to view the scorm scores of all users (default) or individual users. Students don't have the ability to view other users' scores so the drop down box is not displayed. A student can only see their own scores. These 2 scripts are almost identical except for the query.

#### createCSV.php

Creates a csv file from the query results which can be viewed or downloaded.

####  /scripts/sortable.js

Makes the table sortable

#### /images/

Clickable icons for sorting a column

#### /templates/ucl\_blue/scormreports.css

style sheet for the scorm reports 

## Making the tables sortable(scp 3891)

Geoff Gwilym requested that the report for the Data Protection Act (displayQuizScores.php) display sortable columns on all columns except the date and score columns. To do this I used a third party script from <http://www.joostdevalk.nl/code/sortable-table/.(attached>) I copied it to the /ucl\_scormreports/scripts directory and edited it to modify the location of the image files. (the images display the icons to allow the user to sort the columns). The images were copied to /ucl\_scormreports/images. displayQuizScores.php was then modified to include the javascript, the follow was inserted at the top of the file:

&lt;script type="text/javascript" src="scripts/sortable.js" &gt;&lt;/script&gt;
class.DisplayReport.php was modified by adding class="sortable" and id="sortabletable" to the table.

# Importing data into scorm tables

##### Background

Users had completed the data protection scorm module in Tutor pro but this would not be evident in Moodle without the user running the scorm module within moodle. This would mean that the user had to repeat the module again. In order to circumnavigate this, records were inserted into  the mdl\_scorm\_scoes\_track table for users who had completed the module using the tutorpro application via a csv file provided via noshir. A sql file was created from the csv (by Tim Gagen) so that records in the file could be inserted.

The update of the table was first attempted on moodle\_wasdev\_a database. There were some error messages displayed after the import but this was due to a userid in the mdl\_scorm\_scoes\_track table not existing in the mdl\_user table. See notes below:

in mdl\_scorm\_scoes\_track originally 981 records

import file contains 399 records

after import 1374

6 records were not imported imported because duplicate key existed

errors after import when viewing report <http://moodle-dev.ucl.ac.uk/mod/scorm/report.php?id=40123>

Notice: Trying to get property of non-object in /data/apache/htdocs/moodle/mod/scorm/report.php on line 151

Notice: Trying to get property of non-object in /data/apache/htdocs/moodle/lib/weblib.php on line 4353

Notice: Trying to get property of non-object in /data/apache/htdocs/moodle/lib/weblib.php on line 4376

report.php on line 151

$row\[\] = print\_user\_picture($scouser-&gt;userid, $course-&gt;id, $userdata-&gt;picture, false, true);

This could be due to a user id existing in mdl\_scorm\_scoes\_track that doesn't exist in mdl\_user. Running the following query produced

mysql&gt; SELECT mdl\_user.id, mdl\_scorm\_scoes\_track.userid

   -&gt; FROM mdl\_scorm\_scoes\_track

   -&gt; left JOIN mdl\_user ON mdl\_user.id = mdl\_scorm\_scoes\_track.userid

    -&gt; WHERE mdl\_user.id IS NULL;

+---+-----+

| id  | userid |

+---+-----+

| NULL | 59583 |

+---+-----+

1 row in set (0.01 sec)

Therefor 59583 doesn't exist in mdl\_user

mysql&gt; select id from mdl\_user where id=59583;

Empty set (0.00 sec)

This id doesn't exist in moodle\_wasdev\_a but does exist in moodle database.

Deleting this record from mdl\_scorm\_scoes\_track resulted in no errors being displayed when viewing the reports.

Looks ok to do on moodlepp

##### Procedure 

Log in to moodledb-a

backup table first:

moodledb-a:~&gt; mysqldump -uroot -p moodle\_pp mdl\_scorm\_scoes\_track &gt; mdl\_scorm\_scoes\_track.sql

import the records:
Log in to mysql.
Use moodle;
source live\_dpa\_export\_20090105.sql;

Test
Go to: <http://moodle.ucl.ac.uk/ucl_scormreports/displayQuizScores.php?id=1927>
Check that total users=number of records in sql file + number of users before export

No errors

# Troubleshooting

Noshir has reported the following error being displayed when he creates a new course:

Sorry you do not have permissions to do that (view scores)

This can be fixed by:

Find out what role the user is in the course. This applies to when the user is a course admin.

In the course for some reason Course Administrators do not have permissions to view scores so select Assign Roles and select the 'Override Permissions' tab. Select the 'Course Administrator' role and then search for the section about Scorm. Below the Scorm heading there's a row for 'view scores'. Make sure the 2nd radio button is selected which will allow Course Admins to view scorm scores and save the changes.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [sortable.zip](attachments/3113501/6947005.zip) (application/zip)

