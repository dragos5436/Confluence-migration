# Moodle Snapshot Part 1 of 2019 Upgrade - 25-27/06/2019

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
<td>Ed-Apps</td>
<td>Ehsan</td>
<td><p>Initial Rsync of Moodledata for each site:</p>
<ul>
<li>13-14</li>
<li>14-15</li>
<li>15-16</li>
<li>16-17</li>
</ul></td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>18 Jun 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Sabitha</td>
<td>Dry-run of DB restore times on MySDB04</td>
<td><div class="content-wrapper">
<p>21 Jun 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>21 Jun 2019 </p>
</div></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td><br />
</td>
<td>Moodle 3.5.5 build &amp; config.php deployed for each snapshot in a folder of their own on mdl-snpsht-ap01.ad. Add .htaccess redirects on all but 16-17</td>
<td><div class="content-wrapper">
<p>24 Jun 2019</p>
</div></td>
<td><div class="content-wrapper">
<p>25 Jun 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td><br />
</td>
<td>Dry-run upgrade of 16-17 on mdl-snpsht-ap01.ad to test that all apache etc configs are good</td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>25 Jun 2019 </p>
</div></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td><br />
</td>
<td><p>penultimate Rsync of Moodledata for each site:</p>
<ul>
<li>13-14</li>
<li>14-15</li>
<li>15-16</li>
<li>16-17</li>
</ul></td>
<td><div class="content-wrapper">
<p>24 Jun 2019</p>
</div></td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>PI</td>
<td><br />
</td>
<td>New RHEL7 server GTM/LTM, network ports etc config setup ready to go on <a href="http://moodle.ucl.ac.uk">moodle-snapshot.ucl.ac.uk</a></td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>25 Jun 2019 </p>
</div></td>
</tr>
<tr class="odd">
<td>PI</td>
<td><br />
</td>
<td>Ensure X-forwarded headers provide mdl-snpsht-ap01.ad with IP address of user</td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>25 Jun 2019 </p>
</div></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td><br />
</td>
<td>Moodle Snapshot index.php &amp; assets in git, with initial version deployed indicating 2016-17 snapshot available and all others unavailable, message about older ones not coming back &amp; 13-14, 15-16, 16-17 being available shortly with link to ISD News</td>
<td><div class="content-wrapper">
<p>24 Jun 2019 </p>
</div></td>
<td><div class="content-wrapper">
<p>25 Jun 2019 </p>
</div></td>
</tr>
</tbody>
</table>

Required team under ESS

-MySQL DBA - Roy (25th & 26th)

-Ed Apps x1 on 26th, all on 27th

Required team during business hours

-PI - Mark Alcock 26th 9am-11am (and days prior) for any apache issue, 11am to do f5 switchover of servers

-HIS - Tony → Any issues with puppet config of mdl-snpsht-ap01.ad

-Ed Apps - All → AS/DK/EA/DO (busy throughout )

-Digi-Ed →  x1 - JLH? (10:30am - 5pm for final sanity check and comms)

We should reserve a bank of seats/room in BH or 1SMLG to do this with Ed Apps & DBA throughout, and with PI on 26th

## Day 1 - Start 16-17 snapshot

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
<td>PI</td>
<td>Mark Alcock</td>
<td>Enable maintenance mode for 16-17</td>
<td>2:00pm</td>
<td><p>2:00pm</p></td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>David</td>
<td>Activate Maintenance Mode on 16-17 snapshot</td>
<td>3:00pm</td>
<td>3:01pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>David</td>
<td>Apply .htaccess to redirect 16-17 snapshot traffic to ISD News</td>
<td>3:02pm</td>
<td>3:03pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>David</td>
<td>Give DBA all clear to start dump</td>
<td>3:03pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>Sabitha</td>
<td>MySQL dump backup of moodle_archive_1617</td>
<td>3:05pm</td>
<td>4:05pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>EA</td>
<td>Final Rsync of Moodledata for 16-17</td>
<td>3:05pm</td>
<td>3:30pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>DBA</td>
<td>Copy moodle_archive_1617 mysqldump onto MySDB04</td>
<td>4:05pm</td>
<td>4:35pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Sabitha</td>
<td>Start restore of moodle_archive_1617on MySDB04</td>
<td>4:40pm</td>
<td>26th 7:00am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td><br />
</td>
<td>DBA notify Ed-Apps restore has started</td>
<td>4:45pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
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
Day 2 - Upgrades

[Moodle Snapshot Upgrade Steps](Moodle_Snapshot_Upgrade_Steps)

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
<td>Verify restore of moodle_archive_1617 on MySDB04 completes succesfully &amp; moodleuser for mysql has access</td>
<td>8:00am</td>
<td>8:15am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td><br />
</td>
<td>Notify Ed-Apps moodle_archive_1617 restore complete</td>
<td>8:20am</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>David</td>
<td>Activate Maintenance Mode on <strong>15-16</strong> snapshot</td>
<td>8:00am</td>
<td>8:01am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>David</td>
<td>Apply .htaccess to redirect <strong>15-16</strong> snapshot traffic to ISD News</td>
<td>8:02am</td>
<td>8:03am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>David</td>
<td>Inform DBA's to start dump of 15-16</td>
<td>8:05am</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Sabitha</td>
<td>MySQL dump backup of moodle_archive_<strong>1516</strong> &amp; transfer to Mysdb04</td>
<td>8:25am</td>
<td>9:05am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>EA</td>
<td>Final Rsync of Moodledata for <strong>15-16</strong></td>
<td>8:05am</td>
<td>8:30am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Sabitha</td>
<td>Start restore of moodle_archive_<strong>1516</strong> on MySDB04</td>
<td>09:10am</td>
<td>1:20pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Upgrade 16-17 snapshot to 3.5.5 build on mdl-snpsht-ap01.ad</td>
<td>08:20am</td>
<td>09:30am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Apply Adaptable config from New Moodle</td>
<td>09:30am</td>
<td>09:35am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Test and verify 16-17 upgrade successful</td>
<td>09:35</td>
<td>10:00</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Notify PI and DBA's upgrade is signed off and Switch over can happen</td>
<td>10:00am</td>
<td>10:05am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Alistair</td>
<td>Update ISD News with any update on timings</td>
<td>10:00am</td>
<td>10:05am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>PI</td>
<td>Mark</td>
<td>Update F5 config - switchover from moodle-snapshot-a to mdl-snpsht-ap01.ad for moodle-snapshot.ucl.ac.uk domain</td>
<td>10:10am</td>
<td>10:20am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Digi-Ed</td>
<td>to confirm</td>
<td>Login to 16-17 site (Still in Maintenance mode) and do a final sanity check</td>
<td>10:20am</td>
<td>10:25am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Take 16-17 site out of Maintenance Mode after sign-off from Digi-Ed</td>
<td>10:25am</td>
<td>10:30am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Digi-Ed</td>
<td><br />
</td>
<td>Comms that 16-17 snapshot released and update on schedule for other snapshots</td>
<td>10:30am</td>
<td>10:35am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Alistair</td>
<td>Nortify DBA's 13-14 and 14-15 dumps can start</td>
<td>10:25</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>Sabitha</td>
<td>Start MySQL dump backup of moodle_archive_<strong>1314</strong> and moodle_archive_<strong><strong>1415 and transfer to MySDB04</strong></strong></td>
<td>10:30am</td>
<td>11:30am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td><p>Final Rsync of Moodledata for each site:</p>
<ul>
<li>13-14</li>
<li>14-15</li>
<li>15-16</li>
</ul></td>
<td>10:35am</td>
<td>11:00am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>DBA's</td>
<td>Notify Ed-Apps 15-16 restore completed</td>
<td>1:30pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Sabitha</td>
<td>Start restore of 13-14 database</td>
<td>1:35pm</td>
<td>2:35pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Alistair</td>
<td>Upgrading 15-16</td>
<td>1:35pm</td>
<td>3:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Alistair</td>
<td>Test and release 15-16</td>
<td>3:05pm</td>
<td>3:30pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA's</td>
<td>DBA's</td>
<td>DBA's notify 13-14 restore complete</td>
<td>2:35pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Upgrade 13-14</td>
<td>2:40pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Ehsan</td>
<td>Test and release 13-14</td>
<td>4:00pm</td>
<td>4:30pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA's</td>
<td>Sabitha</td>
<td>Start 14-15 database restore</td>
<td>2:40pm</td>
<td>4:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA's</td>
<td>DBA's</td>
<td>DBA's notify 14-15 completed</td>
<td>4:05pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>David</td>
<td>Start upgrade of 14-15</td>
<td>4:10pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>David</td>
<td>Test and release 14-15</td>
<td>5:30pm</td>
<td>6:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>ALL</td>
<td><br />
</td>
<td>GO HOME</td>
<td>6:00pm</td>
<td>10pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
</tbody>
</table>

No overrun <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /> 

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
<td>Ed-Apps</td>
<td>Notify ele-core &amp; Service Desk that upgrade of snapshot complete</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Ed-Apps</td>
<td>Thank everyone involved and let everyone go home</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Ed-Apps</td>
<td>Update CR and mark change as complete and succesful</td>
<td><br />
</td>
<td><p>N/A - CR to be updated once part 2 complete </p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>party time!!!</td>
<td><br />
</td>
<td><p>SJ's drinks Thursday &amp; George friday</p>
<p>Moodle drinks once Part 3 complete</p></td>
</tr>
</tbody>
</table>


