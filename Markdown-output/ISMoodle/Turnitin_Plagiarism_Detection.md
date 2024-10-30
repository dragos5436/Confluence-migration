# Turnitin Plagiarism Detection

[New version of Turnitin from Northumbria Learning](New_version_of_Turnitin_from_Northumbria_Learning)

See S:\\AASG\\Applications Development\\System Docs\\Moodle\\turnitin for zip files, documentation etc.

Turnitin uses SSL connection so this must be installed (this needs to be done by root).

1.  Save the turnitin files to your R: drive: ***tiiukmoodle\_plugin.zip*** and use FTP to move it to the /data/apache/htdocs/moodle/mod/assignment/type folder.
2.  Unzip the turnitin files, a new turnitin folder will be created for the unzipped files, eg /data/apache/htdocs/moodle/mod/assignment/type/turnitin
3.  For this plugin you don't move the language files but edit the existing file, instead edit the existing language pack file at /data/apache/htdocs/moodle/lang/en\_utf8/assignment.php and add the following two lines:

``` java
$string\['typeturnitin'\] = 'Turnitin';
$string\['helpturnitin'\] = 'For assistance with Turnitin please contact Bob Muid on 31399 (020 7679 1399)';
```

1.  Edit the file /data/apache/htdocs/moodle/mod/assignment/type/turnitin/lib.php to show the following text:

``` java
// CONFIGURABLE SECTION FOR SETUP
//===============================================================
define("TII_AID",2702);
define("TII_SHAREDKEY",'uc2702LM');
define("TII_WEBSERVICEURL",'http://moodle.ucl.ac.uk/mod/assignment/type/turnitin/ws/dispatcher.php');
define("TII_LOGGING",1);
//===============================================================
```

### To test:

1.  Go to a Moodle course and *Add an Activity*: choose *Assignment* from the drop down list.
2.  Create an assignment with the Type set to *turnitin*
3.  Click on Continue
    NOTE : Make sure you are logged in as a student or tutor (not admin)
4.  For advice on this I have been working with Julie at detection@nlearning.co.uk

**As we have just one account for Turnitin we cannot have it installed on more than one server at a time.** At the moment it is installed on moodle-b

6th April 2009

Turnitin

There is a new Turnitin module available for download (<http://moodle.org/mod/data/view.php?d=13&rid=1562&filter=1>) which is supposed  to be better integrated in to moodle than the one from Northumbria learning. Installing this module isn't straight forward as it overwrites some existing files:

moodle/mod/assignment/lib.php

moodle/admin/cron.php

and creates the following new tables:

To install it, download the zip file.

Make a copy of

moodle/admin/cron.php

moodle/mod/assignment/lib.php

extract the zip file in the moodle directory.

After meeting with Bob Muid to discuss how to configure the settings Bob suggested that this is not the module that we should be using because this module only allows one course administrator to be assigned to all the courses. Also the instructions for this module assume that we have a subscription to turnitin.com whereas our subscription is with submit.ac.uk 

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Stefanie Anyadi is keen to keep updated on this and is keen to help with testing (ISH0132371)</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by ccaamje at Mar 18, 2009 09:57
</div></td>
</tr>
</tbody>
</table>


