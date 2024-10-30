# SITS filter

# ****

<a href="/pages/downloadallattachments.action?pageId=44139889" class="download-all-link" title="Download all the latest versions of attachments on this page as single zip file.">Download All</a>

# **Overview**

Sits\_Filter\_2 is a shell-based php application capable of interacting with multiple databases (namely Portico sisd,  moodle\_dev\_262\_sf2 and moodle\_sits\_management\_dev2) & generating custom data streams.

Based on the [CakePHP](http://cakephp.org/) MVC framework, it consists of the following features to facilitate data management:

-   **Database config file** (/usr/local/sits\_filter2/app/Config/database.php) – for specifying database connectivity parameters ( also for setting up a fixtures database for unit tests); more information can be found at  [Database Configuration](http://book.cakephp.org/2.0/en/development/configuration.html)
-   **Models** (located in /usr/local/sits\_filter2/app/models) – each model provides a reference to specific tables / views within the aforementioned databases.
-   **Oracle.php**  (/usr/local/sits\_filter2/lib/Cake/Model/Datasource/Database/) – plugin for accessing oracle databases; should be left as is
-    **RunsSits.php**  (/usr/local/sits\_filter2/app/Console/Command/) – file that handles entire application processes (reading from all aforementioned databases, writing to  moodle\_sits\_management\_dev2 and generating a sits\_output.xml file (for moodle export data). 

**
**

# **Architecture**

**
**

# **Components**

**
**

# **Installation**

**[Deployment on production](Deployment_on_production)**

**[Cloning production to uat](Cloning_production_to_uat)
**

# **Running it**

**
**

# **Common errors**

**
**

# **Testing
**

**[SITS Filter 2 Test Cases](SITS_Filter_2_Test_Cases)
**

# **Documentation about the code**

<table>
<thead>
<tr class="header">
<th><br />
</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>end user documentation</td>
<td><a href="https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M36+-+Moodle+enrolments+-+for+staff+and+student+access+to+your+course" class="uri">https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M36+-+Moodle+enrolments+-+for+staff+and+student+access+to+your+course</a></td>
</tr>
<tr class="even">
<td>Using CMIS data to import groups</td>
<td><a href="CMIS_-_Moodle_Integration">CMIS - Moodle Integration</a></td>
</tr>
</tbody>
</table>

**
**

# **Additional resources**

# Setting up Oracle SQL Developer to access the oracle views used for mpc

Create a new connection
connection name=mpc
username =  moodle
password = \*\*\*\*
ensure the Oracle tab is selected
role = default
connection type = ldap
ldap server = d5.adcom.ucl.ac.uk:4032:4031
context = cn=OracleContext,dc=cman,dc=adcom,dc=ucl,dc=ac,dc=uk
DB Service = SISD

The modules view is UCL\_SITS\_MV\_MOODLE\_MOD\_REG and the students view is UCL\_SITS\_MV\_MOODLE\_STUDENTS
select \* from UCL\_SITS\_MV\_MOODLE\_MOD\_REG;
select \* from UCL\_SITS\_MV\_MOODLE\_STUDENTS;

## Portico enrolment block

export <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/trunk/moodle/blocks/portico_enrolments/> to /data/apache/htdocs/moodle\_vxxx/blocks/portico\_enrolments

go to <https://v267.moodle-dev.ucl.ac.uk/admin/index.php> and select 'upgrade moodle database now'

Enable the block by clicking on the eye for Portico Enrolments in Site administration&gt;Plugins&gt;Blocks&gt;Manage blocks.

## Database schema

checkout [https://svn.ucl.ac.uk/projects/isd/moodle-sits-filter-2/browser/trunk/documentation/releases/Releasex.x.sql](https://svn.ucl.ac.uk/projects/isd/moodle-sits-filter-2/browser/trunk/documentation/releases/Release%201.2.sql) and ensure that the correct database is reference as the same file is used for prod, uat and dev.

Run the sql specified in the file

Code

checkout from <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/trunk/moodle-admin/usr/local/sits_filter2/> it needs to be installed on moodle-admin in /usr/local/sits\_filter2/

Before deploying the code, ensure app/Config/database.php has the correct database settings.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CMIS-Moodle Integration Test Scripts v1.0.xlsx](attachments/44139889/68848541.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [ELE-Moodle Integration Plan.xlsx](attachments/44139889/68848542.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CMIS-Moodle Integration Design.doc](attachments/44139889/68848543.doc) (application/msword)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SITS Filter - Import Process AS IS.txt](attachments/44139889/68848544.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SITS Filter - Import Process TO BE.txt](attachments/44139889/68848545.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SITS Filter - Threshold.txt](attachments/44139889/68848546.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [User Profile Fields Import - Local Plugin.txt](attachments/44139889/68848547.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MPC Project - Technical Note - Enrolment Sync.docx](attachments/44139889/68848549.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Database Object Installation v1.txt](attachments/44139889/68848550.txt) (text/plain)

