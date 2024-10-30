# Moodle Snapshot Part 2 of 2019 Upgrade - 05-06/07/2019

Days 0 - Prep

<table>
<thead>
<tr class="header">
<th>Team</th>
<th>Who</th>
<th>What</th>
<th>Expected Completion</th>
<th>Completed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Learning Apps</td>
<td>Ehsan</td>
<td><p>Initial Rsync of Moodledata for each site:</p>
<ul>
<li>17-18</li>
</ul></td>
<td><div class="content-wrapper">
<p>01 Jul 2019 </p>
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>28 Jun 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>DBA</td>
<td><br />
</td>
<td>Dry-run of DB restore times on MySDB04</td>
<td><div class="content-wrapper">
<p>01 Jul 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>03 Jul 2019 </p>
</div></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Moodle 3.5.5 build &amp; config.php deployed for 17-18 on mdl-snpsht-ap01.ad with .htaccess</td>
<td><div class="content-wrapper">
<p>04 Jul 2019</p>
</div></td>
<td><div class="content-wrapper">
<p>03 Jul 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Dry-run upgrade of 17-18 on mdl-snpsht-ap01.ad to test that all apache etc configs are good</td>
<td><div class="content-wrapper">
<p>04 Jul 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>03 Jul 2019 </p>
</div></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>penultimate Rsync of Moodledata for each site:</p>
<ul>
<li>17-18</li>
</ul></td>
<td><div class="content-wrapper">
<p>04 Jul 2019</p>
</div></td>
<td><div class="content-wrapper">
<p>04 Jul 2019 </p>
</div></td>
</tr>
</tbody>
</table>

Required team under ESS

-MySQL DBA - Roy (5th & 6th)

-Ed Apps x1 on 5th, ? on 6th

-Digi-Ed →  x1 - JLH? (9:30am - 11am for final sanity check and comms)

Required team during business hours

-PI - Mark Alcock 5th 2pm  to do f5 redirect of servers

-Ed Apps - All → AS/DK/EA/DO (busy throughout )

## Day 1 - Start Legacy Moodle snapshot

<table>
<thead>
<tr class="header">
<th>Team</th>
<th>Who</th>
<th>What</th>
<th>Start time</th>
<th>Expected Completion</th>
<th>Completed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Apply .htaccess to redirect Legacy Moodle to New Moodle</td>
<td>2:00pm</td>
<td>2:01pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Activate Maintenance Mode on Legacy Moodle</td>
<td>2:01pm</td>
<td>2:02pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Go to <a href="https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub</a> and set to No hubenabled</td>
<td>2:02pm</td>
<td>2:03pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Give DBA all clear to start dump</td>
<td>2:03pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td><br />
</td>
<td>MySQL dump backup of moodle_live</td>
<td>2:05pm</td>
<td>4:05pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>EA</td>
<td>Final Rsync of Moodledata for 17-18</td>
<td>2:05pm</td>
<td>3:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>rm -rf /data/moodle/17-18/cache/*</p>
<p>rm -rf /data/moodle/17-18/localcache/*</p>
<p>rm -rf /data/moodle/17-18/muc/*</p>
<p>rm -rf /data/moodle/17-18/sessions/*</p>
<p>rm -rf /data/moodle/17-18/temp/*</p></td>
<td>3:05pm</td>
<td>3:10pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>DBA</td>
<td>Copy moodle_live mysqldump onto MySDB04</td>
<td>3:05pm</td>
<td>3:35pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>Sabitha</td>
<td>Start restore of moodle_live as moodle_archive_1718 on MySDB04</td>
<td>3:45pm</td>
<td>26th 6:00am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td><br />
</td>
<td>DBA notify Learning Apps restore has started</td>
<td>5:05pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>ALL</td>
<td><br />
</td>
<td>GO HOME</td>
<td>5:00pm</td>
<td>9:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
</tbody>
</table>

## 
Day 2 - Upgrade of Legacy & release

<table>
<thead>
<tr class="header">
<th>Team</th>
<th>Who</th>
<th>What</th>
<th>Start time</th>
<th>Expected Completion</th>
<th>Completed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>DBA</td>
<td>DBA</td>
<td><p>Verify restore of moodle_archive_17<strong>18</strong> on MySDB04 completes successfully &amp; moodleuser for mysql has access</p></td>
<td>9:00am</td>
<td>9:15am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td><br />
</td>
<td>Notify Learning Apps moodle_archive_1718 restore complete</td>
<td>9:15am</td>
<td>9:20am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>cd /data/apache/htdocs/moodle/17-18/ &amp;&amp; php admin/cli/upgrade.php</td>
<td>9:20am</td>
<td>10:10am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><p>chmod -R 777 /data/moodle/17-18/cache/*</p>
<p>chmod -R 777 /data/moodle/17-18/localcache/*</p>
<p>chmod -R 777 /data/moodle/17-18/temp/*</p></td>
<td>10:10pm</td>
<td>10:15pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Ehsan</td>
<td>delete row from `mdl_registration_hubs`</td>
<td>10:15am</td>
<td>10:15am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Go to Site Admin &gt; Appearance &gt; Theme selector and select Adaptable</p>
<p><br />
</p>
<p>Apply Adaptable config from snippet to:</p>
<p>Themes &gt; Adaptable &gt; Import / Export</p></td>
<td>10:20am</td>
<td>10:25am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><p>Add to Custom CSS on <a href="https://moodle-snapshot.ucl.ac.uk/17-18/admin/settings.php?section=theme_adaptable_generic" class="uri">https://moodle-snapshot.ucl.ac.uk/17-18/admin/settings.php?section=theme_adaptable_generic</a></p>
<p>.block_myoverview .myoverviewimg {<br />
height: 0px;<br />
}</p></td>
<td>10:25am</td>
<td>10:30am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Update LDAP settings - make sure TLS disabled and ldap url uses ldap:// and not ldaps://</td>
<td>10:30am</td>
<td>10:35am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Update Site Administrators</td>
<td>10am</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>site admin &gt; plugin &gt; block &gt; manage block &gt; disable portico plugin</td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td>Update config.php to use the <a href="https://moodle-snapshot.ucl.ac.uk/17-18" class="uri">https://moodle-snapshot.ucl.ac.uk/17-18</a> url</td>
<td>10:05am</td>
<td>10:10am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Convert from Antelope to Barracuda table compression</p>
<p>php admin/cli/mysql_compressed_rows.php --list</p>
<p>php admin/cli/mysql_compressed_rows.php --fix</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Run URL update tool</p>
<p>php admin/tool/replace/cli/replace.php --search=' https://moodle.ucl.ac.uk/ ' --replace='https://moodle-snapshot.ucl.ac.uk/17-18/' --non-interactive --shorten=true</p></td>
<td>10:10am</td>
<td>1pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><p><strong>Navbar Tools Menu</strong></p>
<p>To remove the duplicate “help” dropdowns from the navbar, two settings were changed here /admin/settings.php?section=theme_adaptable_header_navbar_menu</p>
<ul>
<li>Tools Menu 2, Custom Profile Field: postundergrad=X</li>
<li>Tools Menu 3, Custom Profile Field: postundergrad=UG</li>
</ul>
<p><br />
</p>
<p>No values were set before which was causing the additional items to appear.</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p><strong>News ticket items</strong></p>
<p>Removed all announcements except for the one regarding Flash support and set the number of announcements to 1. /admin/settings.php?section=theme_adaptable_frontpage_ticker</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><p><strong>Resolves navbar issues (also fixes some courses on 13-14 not showing the navbar)</strong></p>
<p>Ensured the following settings in /admin/settings.php?section=themesettings to match production New Moodle</p>
<p>Theme List Adaptable</p>
<p>Theme designer mode No</p>
<p>Allow user themes No</p>
<p>Allow course themes No</p>
<p>Allow category themes No</p>
<p>Allow cohort themes No</p>
<p>Allow theme changes in the URL Yes</p>
<p>Allow users to hide blocks Yes</p>
<p>Allow blocks to use the dock Yes</p>
<p>User menu items preferences,moodle|/user/preferences.php|preferences</p>
<p>Enable device detection No</p>
<p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><p>Custom menu items update to below:</p>
<p>Staff Help</p>
<p>-Login Problems?|<a href="https://wiki.ucl.ac.uk/x/FBtiAQ" class="uri">https://wiki.ucl.ac.uk/x/FBtiAQ</a> &quot;target=\&quot;_blank</p>
<p>-Moodle Staff Guides|<a href="https://wiki.ucl.ac.uk/x/-xliAQ" class="uri">https://wiki.ucl.ac.uk/x/-xliAQ</a>   &quot;target=\&quot;_blank</p>
<p>-Lecturecast Staff Guides|<a href="https://wiki.ucl.ac.uk/x/ZBhiAQ" class="uri">https://wiki.ucl.ac.uk/x/ZBhiAQ</a></p>
<p>-FAQs|<a href="https://wiki.ucl.ac.uk/x/FBtiAQ" class="uri">https://wiki.ucl.ac.uk/x/FBtiAQ</a>   &quot;target=\&quot;_blank</p>
<p>-Request a Moodle Course|<a href="https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl#/support/problem-requests/all?id=a3S0J000000LjRiUAK" class="uri">https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl#/support/problem-requests/all?id=a3S0J000000LjRiUAK</a>   &quot;target=\&quot;_blank</p>
<p>-Moodle Exam Notification|<a href="https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl#/support/problem-requests/all?id=a3S0J0000026LLoUAM" class="uri">https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl#/support/problem-requests/all?id=a3S0J0000026LLoUAM</a>&quot;target=\&quot;_blank</p>
<p>-Moodle Training|<a href="https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/e-learning-training-for-staff" class="uri">https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/e-learning-training-for-staff</a>   &quot;target=\&quot;_blank</p>
<p>-Contact Moodle Support|<a href="https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/about-e-learning-services/submit-request-for-support" class="uri">https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/about-e-learning-services/submit-request-for-support</a>   &quot;target=\&quot;_blank</p>
<p>-UCL Moodle User Group|<a href="https://moodle-1819.ucl.ac.uk/course/view.php?id=12159" class="uri">https://moodle-1819.ucl.ac.uk/course/view.php?id=12159</a>   &quot;target=\&quot;_blank</p>
<p>-About Moodle at UCL|<a href="https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/e-learning-core-tools/moodle-for-staff" class="uri">https://www.ucl.ac.uk/isd/services/learning-teaching/e-learning-staff/e-learning-core-tools/moodle-for-staff</a> &quot;target=\&quot;_blank</p>
<p>Student Help</p>
<p>-Login issues?|<a href="https://wiki.ucl.ac.uk/x/-AKmAQ" class="uri">https://wiki.ucl.ac.uk/x/-AKmAQ</a>  &quot;target=\&quot;_blank</p>
<p>-Moodle Quick Start guide|<a href="https://wiki.ucl.ac.uk/x/oASmAQ" class="uri">https://wiki.ucl.ac.uk/x/oASmAQ</a>  &quot;target=\&quot;_blank</p>
<p>-Moodle for Assessment guides|<a href="https://wiki.ucl.ac.uk/x/igWmAQ" class="uri">https://wiki.ucl.ac.uk/x/igWmAQ</a>  &quot;target=\&quot;_blank</p>
<p>-Moodle FAQs|<a href="https://wiki.ucl.ac.uk/x/-AKmAQ" class="uri">https://wiki.ucl.ac.uk/x/-AKmAQ</a>  &quot;target=\&quot;_blank</p>
<p>-Learning with Technology|<a href="https://moodle-1819.ucl.ac.uk/course/view.php?id=9119" class="uri">https://moodle-1819.ucl.ac.uk/course/view.php?id=9119</a>  &quot;target=\&quot;_blank</p>
<p>-Plagiarism &amp; Academic Writing|<a href="https://moodle-1819.ucl.ac.uk/course/view.php?id=34" class="uri">https://moodle-1819.ucl.ac.uk/course/view.php?id=34</a>  &quot;target=\&quot;_blank</p>
<p>-LibrarySkills@UCL|<a href="https://www.ucl.ac.uk/library/training" class="uri">https://www.ucl.ac.uk/library/training</a>  &quot;target=\&quot;_blank</p>
<p>-Student IT Training|<a href="https://www.ucl.ac.uk/isd/services/learning-teaching/digital-skills/courses-materials/student-courses-training-materials" class="uri">https://www.ucl.ac.uk/isd/services/learning-teaching/digital-skills/courses-materials/student-courses-training-materials</a>   &quot;target=\&quot;_blank</p>
<p>-UCL Student resources|<a href="https://www.ucl.ac.uk/students/" class="uri">https://www.ucl.ac.uk/students/</a> &quot;target=\&quot;_blank</p>
<p>Services</p>
<p>-Legacy Moodle|<a href="https://moodle.ucl.ac.uk/login" class="uri">https://moodle.ucl.ac.uk/login</a> &quot;target=\&quot;_blank</p>
<p>-Moodle Snapshot|<a href="https://moodle-snapshot.ucl.ac.uk/" class="uri">https://moodle-snapshot.ucl.ac.uk/</a> &quot;target=\&quot;_blank</p>
<p>-Lynda|<a href="http://www.ucl.ac.uk/lynda" class="uri">http://www.ucl.ac.uk/lynda</a> &quot;target=\&quot;_blank</p>
<p>-Box of Broadcasts|<a href="http://bobnational.net/" class="uri">http://bobnational.net/</a> &quot;target=\&quot;_blank</p>
<p>-Portico|<a href="http://www.ucl.ac.uk/portico" class="uri">http://www.ucl.ac.uk/portico</a> &quot;target=\&quot;_blank</p>
<p>-Common Timetable|<a href="http://www.ucl.ac.uk/timetable" class="uri">http://www.ucl.ac.uk/timetable</a> &quot;target=\&quot;_blank</p>
<p>-Library|<a href="http://www.ucl.ac.uk/library" class="uri">http://www.ucl.ac.uk/library</a> &quot;target=\&quot;_blank</p>
<p>-MyAccount|<a href="https://myaccount.ucl.ac.uk/" class="uri">https://myaccount.ucl.ac.uk/</a> &quot;target=\&quot;_blank</p>
<p>-Live@UCL Email|<a href="http://outlook.com/live.ucl.ac.uk" class="uri">http://outlook.com/live.ucl.ac.uk</a> &quot;target=\&quot;_blank</p>
<p>-MyPortfolio|<a href="https://myportfolio.ucl.ac.uk/">https://myportfolio.ucl.ac.uk</a> &quot;target=\&quot;_blank</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Disable newly installed plugins</td>
<td>1pm</td>
<td>1:15pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Take 17-18 site out of Maintenance Mode</td>
<td>10:00am</td>
<td>10:05am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Remove .htaccess and do a git pull in /data/apache/htdocs/moodle/ to update the index.php to add link to 17-18 snapshot</td>
<td>1:30pm</td>
<td>1:45pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>add link to 17-18 snapshot on New Moodle dropdowns</td>
<td>1:45pm</td>
<td>1:50pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>ALL</td>
<td><br />
</td>
<td>GO HOME</td>
<td>2pm</td>
<td>2pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Digi-Ed</td>
<td><br />
</td>
<td>JLH test</td>
<td>Monday morning</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td>JLH make staff roles read-only</td>
<td>Monday morning</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Digi-Ed</td>
<td><br />
</td>
<td>Comms that 17-18 snapshot released</td>
<td>Monday morning</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><ul>
<li>Update to utf8mb4 collation</li>
</ul>
<p>php admin/cli/mysql_collation.php --collation=utf8mb4_unicode_ci</p>
<ul>
<li>run following query in workbench to check the tables are now utf8mb4</li>
</ul>
<p>select table_name,table_collation from information_schema.tables where table_schema = 'database name';</p>
<ul>
<li>update config.php $CFG→dboptions 'dbcollation' =&gt; 'utf8mb4_unicode_ci</li>
</ul></td>
<td>Sunday 00:30</td>
<td>Sunday 14:55</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Apply minor security release 3.5.7 (from 3.5.6)</p></td>
<td><br />
</td>
<td><br />
</td>
<td><ul>
<li>14-15</li>
<li>15-16</li>
<li>17-18</li>
<li>13-14</li>
<li>16-17</li>
</ul></td>
</tr>
</tbody>
</table>

Step 3 - Complete

<table>
<thead>
<tr class="header">
<th>Who</th>
<th>What</th>
<th>Expected Completion</th>
<th>Completed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Learning Apps</td>
<td>Notify ele-core &amp; Service Desk that part 2 - legacy snapshot complete</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Thank everyone involved and let everyone go home</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Update CR and mark change as complete and succesful</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
</tbody>
</table>


