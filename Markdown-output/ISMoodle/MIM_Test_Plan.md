# MIM Test Plan

## Introduction

The purpose of this document is to create a desirable but acceptable level of requirements to test the MIM application.

For a detailed description of MIM please visit [Moodle Integration Manager (MIM) - SITS/CMIS integration](Moodle_Integration_Manager_MIM_-_SITS_CMIS_integration)

## Build setup

1.  Run CI/CD pipeline to deploy Moodle instance on preview - <https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/AWS_39_DEV/>
2.  Restore latest MIM and Moodle database from backup - [Restoring a Moodle db backup to the AWS dev/test environment](Restoring_a_Moodle_db_backup_to_the_AWS_dev_test_environment)
3.  Clone Segan repo on to mdl-admin02p -  <git@git.automation.ucl.ac.uk>:cceabab/mim.git
4.  Follow readme instructions to complete MIM setup - <https://git.automation.ucl.ac.uk/cceabab/mim/-/blob/master/README.md>
5.  Update MIM database email settings so that the results will be sent to your desired email address.

    <table>
    <thead>
    <tr class="header">
    <th>update moodle_int_management.system_settings<br />
    set setting = &quot;myemail@<a href="http://ucl.ac.uk">ucl.ac.uk</a>&quot;<br />
    where id in (5,25);</th>
    </tr>
    </thead>
    <tbody>
    </tbody>
    </table>

## Test environment

-   AWS RDS instance - Mysql 5.7, moodle and mim database: <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fucl-cloud.awsapps.com%2Fstart%23%2F&data=04%7C01%7C%7Cc2da8bddbb3140f05a5508d93222ecd9%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C637595947849551983%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=YEyZHDKjiE2JEeQtWIkGFQX3bazRk%2F9De1I2ClsesAY%3D&reserved=0>
-   Admin02p on PHP 7.2.34
-   Moodle Instance on Preview - 3.9.x (<https://39-aws-release.preview-moodle.ucl.ac.uk/my/>)
-   MIM application - CakePHP 4.x (Code from Segan's MIM repo installed on admin02p )

| Compatibility              | Moodle | CakePHP |
|----------------------------|--------|---------|
| version                    | 3.9.x  | 4.x     |
| compatible with PHP 7.2    | ✔      | ✔       |
| compatible with PHP 7.3.28 | ✔      | ✔       |
| Compatible  with MySQL 5.7 | ✔      | ✔       |

## Test steps - SITS

<table>
<thead>
<tr class="header">
<th>Action</th>
<th>Notes</th>
<th>Pre Prod</th>
<th>Prod</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Check moodle preview server to confirm that IMS enterprise file location exists - <a href="https://39-aws-release.preview-moodle.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise" class="uri">https://39-aws-release.preview-moodle.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise</a></td>
<td>Moodle Preview contained the folder in the correct path /data/moodle/mim-pp-share</td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Use the test course in Moodle (<a href="https://39-aws-release.preview-moodle.ucl.ac.uk/course/view.php?id=13097" class="uri">https://39-aws-release.preview-moodle.ucl.ac.uk/course/view.php?id=13097</a>), turn on editing and click on the Portico block. Now search for a mapping, you can use ANTH0213</td>
<td>Search results listed 1 Module Delivery mappings</td>
<td><div class="content-wrapper">
<p>PASSED</p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Test REST webservice with your token - <a href="https://39-aws-release.preview-moodle.ucl.ac.uk/webservice/rest/server.php?wstoken=eeda2b63c4ab022c12033929540fb956&amp;wsfunction=core_group_get_group_members&amp;moodlewsrestformat=json&amp;groupids%5B0%5D=21979">https://39-aws-release.preview-moodle.ucl.ac.uk/webservice/rest/server.php?wstoken=YOURTOKEN&amp;wsfunction=core_group_get_group_members&amp;moodlewsrestformat=json&amp;groupids[0]=21979</a></p>
<p>You can locate your token by running this query - </p>
<p>select token from mdl_external_tokens where externalserviceid in (select id from mdl_external_services where name like '%mim%');</p></td>
<td>Call successfully returned a json array - 
<pre><code>&quot;groupid&quot;:21979,&quot;userids&quot;:[xxxxxxx]</code></pre></td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>ssh to admin02p, and run the SITS sync job - ./bin/cake sync_portico_data</td>
<td>Job ran successfully</td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Check if the sits filter email has been sent - XML Creation Complete</td>
<td>Email received</td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Check if the files have been created for the MIM output - <code>/data/moodle/mim-pp-share</code><code>/UCL_SIS_export.xml and UCL_SIS_UserProfileFields.csv</code></td>
<td>Both files were created</td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><ul>
<li>Configure portico settings within MIM app_local.php file to point to SIS</li>
<li>Copy current output files from <code>/data/moodle/mim-pp-share</code> to another directory then delete the files</li>
<li>Run SITS sync job again and compare output files against MIM prod output files to test integrity</li>
</ul></td>
<td><div class="content-wrapper">
<p>XML files compared. Looking at the attached files, result count from the majority of processes were identical, others were similar but considering there was a time difference between runs this is expected.</p>
<p><a href="/download/attachments/172467033/xmlpp.txt?version=1&amp;modificationDate=1626876749000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/172467629/1" height="150" /></a> <a href="/download/attachments/172467033/xmlprod.txt?version=1&amp;modificationDate=1626876897000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/172467631/1" height="150" /></a></p>
</div></td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><ul>
<li>Use the test course and activate portico mapping for uat test module ANTH0213 </li>
<li>Make sure that all other mappings are disabled on this instance, you can check by running this query on the mim database to find out the number of sits_moduleoccurence_mapping -  SELECT * FROM moodle_int_management.sits_moduleoccurence_mapping;</li>
<li>manually run the IMS enterprise task - <a href="https://39-aws-release.preview-moodle.ucl.ac.uk/admin/tool/task/schedule_task.php?task=enrol_imsenterprise%5Ctask%5Ccron_task">https://39-aws-release.preview-moodle.ucl.ac.uk/admin/tool/task/schedule_task.php?task=enrol_imsenterprise%5Ctask%5Ccron_task</a></li>
<li>If there are issues running the IMS task, run this using the cli - php admin/cli/scheduled_task.php --execute='\enrol_imsenterprise\task\cron_task'</li>
<li>Check if there were any errors in the log file and confirm if the task completed successfully.</li>
</ul></td>
<td><div class="content-wrapper">
<p>Task completed successfully</p>
<p><a href="/download/attachments/172467033/imslog.txt?version=1&amp;modificationDate=1626894427000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/172467731/1" height="150" /></a> </p>
</div></td>
<td>PASSED</td>
<td><p><br />
</p>
<p><br />
</p></td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<ul>
<li>Check settings at <a href="https://moodle.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=enrolsettingsimsenterprise</a> Allow the IMS data to unenrol students/teachers enrol_imsenterprise | imsunenrol Default: No</li>
</ul>
<p>Check and compare mapping and enrolments for the following courses: </p>
<ul>
<li><a href="https://moodle.ucl.ac.uk/course/view.php?id=24866" class="uri">https://moodle.ucl.ac.uk/course/view.php?id=24866</a> (mapping is active)</li>
<li><a href="https://moodle.ucl.ac.uk/user/index.php?id=3107" class="uri">https://moodle.ucl.ac.uk/user/index.php?id=3107</a> (mapping is inactive)</li>
<li><a href="https://moodle.ucl.ac.uk/course/view.php?id=24549" class="uri">https://moodle.ucl.ac.uk/course/view.php?id=24549</a> (mapping is active)</li>
<li><a href="https://moodle.ucl.ac.uk/course/view.php?id=23991" class="uri">https://moodle.ucl.ac.uk/course/view.php?id=23991</a> (mapping is inactive)</li>
</ul>
<p>Re-run query for list of all courses with mappings active and inactive after running the Schedule Task '<em>php?task=enrol_imsenterprise%5Ctask%5Ccron_task'</em></p>
<p>Check enrolled users at <a href="https://moodle.ucl.ac.uk/admin/settings.php?section=manageenrols" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=manageenrols</a> (6021 / 509308)</p>
<p><img src="attachments/172467033/172469045.png" width="475" /></p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Test steps - CMIS

<table>
<thead>
<tr class="header">
<th>Action</th>
<th>Notes</th>
<th>Pre Prod</th>
<th>Prod</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Test REST webservice with your token - <a href="https://39-aws-release.preview-moodle.ucl.ac.uk/webservice/rest/server.php?wstoken=eeda2b63c4ab022c12033929540fb956&amp;wsfunction=core_group_get_group_members&amp;moodlewsrestformat=json&amp;groupids%5B0%5D=21979">https://39-aws-release.preview-moodle.ucl.ac.uk/webservice/rest/server.php?wstoken=YOURTOKEN&amp;wsfunction=core_group_get_group_members&amp;moodlewsrestformat=json&amp;groupids[0]=21979</a></p>
<p>You can locate your token by running this query - </p>
<p>select token from mdl_external_tokens where externalserviceid in (select id from mdl_external_services where name like '%mim%');</p></td>
<td>Call successfully returned a json array - 
<pre><code>&quot;groupid&quot;:21979,&quot;userids&quot;:[xxxxxxx]</code></pre></td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>ssh to admin02p, and run the SITS sync job - ./bin/cake sync_cmis_groups</td>
<td>Job ran successfully</td>
<td>PASSED</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Check log to confirm that students were added to a group (search for: Calling Moodle service to add X users to group with Moodle Id XXXXX)</td>
<td><div class="content-wrapper">
<p>Students were added to groups</p>
<p><a href="/download/attachments/172467033/cmis_grp.txt?version=1&amp;modificationDate=1628602544000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/174626092/1" height="150" /></a></p>
</div></td>
<td>PASSED</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [xmlpp.txt](attachments/172467033/172467629.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [xmlprod.txt](attachments/172467033/172467631.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [imslog.txt](attachments/172467033/172467731.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-7-26\_13-55-30.png](attachments/172467033/172469045.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [cmis\_grp.txt](attachments/172467033/174626092.txt) (text/plain)

