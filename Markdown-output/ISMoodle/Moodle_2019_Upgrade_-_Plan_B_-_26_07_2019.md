# Moodle 2019 Upgrade - Plan B - 26/07/2019

**WE WENT AHEAD WITH PLAN A <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /> - irrelevant**

## Step 0 - Prep

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
<td>Moodle 3.7 build &amp; config.php deployed on all Apps &amp; Admin servers (current servers)</td>
<td>17/07/19</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>initial Rsync of Moodledata to snapshot environment</td>
<td>19/07/19</td>
<td><div class="content-wrapper">
<p>snapshot 06 Jul 2019 </p>
<p>rhel7</p>
<p>not started</p>
</div></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>penultimate Rsync of snapshot environment</td>
<td>26/07/19 10am</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PI</td>
<td>GTM/LTM config setup ready to go for switch from moodle-1819.ucl.ac.uk to moodle.ucl.ac.uk</td>
<td>19/07/19</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>PI</td>
<td>URL rewrite from moodle-1819.ucl.ac.uk to equivalent path on moodle.ucl.ac.uk ready to go</td>
<td>19/07/19</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PI</td>
<td>Disable cron for MIM</td>
<td>26/07/19 4pm</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Required team under ESS

-MySQL DBA - Roy 

-PI - Sam Washington

-Ed Apps →  EA for start, AS / DK for rest of night / weekend

-Digi-Ed → ? (?pm for final sanity check and comms)

We should reserve a bank of seats/room in BH or 1SMLG to do this & pre-order some food.

## Step 1 - Follow regular [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)

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
<td>Outage Manager warning to start at 14h00min on 26/07/19</td>
<td>2:00pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PI</td>
<td>Switch off Cron on moodle-admin-01 for moodle</td>
<td><p>5:00pm</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Activate Maintenance Mode</td>
<td>5:01pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PI</td>
<td>Redirect moodle-1819 and moodle traffic to maintenance page</td>
<td>5:03pm</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Step 2 - Upgrades

**Priority 1 - Upgrade**

TODO - Amend steps to account for moodle\_live being backed up excluding the mdl\_logostore\_standard\_log table and that being restored onto mdl-db01.ad (with schema added), and then on MySDB04, and the log table should be dumped separately and restored on MySDB04

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
<td>DBA</td>
<td>MySQL dump backup of moodle_live</td>
<td>5:45pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Notify Learning Apps MySQL dump complete</td>
<td>5:50pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Check everything in place</td>
<td>6:00pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Run the Upgrade</td>
<td>6:30pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><p><a href="https://moodle.ucl.ac.uk/admin/settings.php?section=theme_adaptable_color" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=theme_adaptable_color</a></p>
<p>Update menubkcolor to #02598C</p></td>
<td>6:31pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Validate that the site is upgraded successfully</td>
<td>6:35pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Notify PI that site can be made available</td>
<td>6:40pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PI</td>
<td>Make moodle.ucl.ac.uk available</td>
<td>6:45pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>PI</td>
<td>Implement moodle-1819.ucl.ac.uk rewrite to moodle.ucl.ac.uk</td>
<td>6:50pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Disable Activities block (This duplicates the &quot;This Course&quot; dropdown)</td>
<td>7:00pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Set Navigation block setting &quot;Generate navigation for the following&quot; to &quot;Categories and courses&quot;</td>
<td>7:00pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Digi-Ed</td>
<td>Login to site (Still in Maintenance mode) and do a final sanity check</td>
<td>7:05pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Take site out of Maintenance Mode after sign-off from Digi-Ed</td>
<td>7:10pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Digi-Ed</td>
<td>Comms that New New Moodle is live</td>
<td>7:30pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>PI</td>
<td>enable cron on new RHEL7 admin servers</td>
<td>7:30pm</td>
<td><br />
</td>
</tr>
</tbody>
</table>

**Secondary Priority - Moodle 1819 snapshot**

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
<td>DBA</td>
<td>Final Rsync of Moodledata to Snapshot /18-19</td>
<td>5:50pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>restore db backup on snapshot DB server as moodle_archive_1819</td>
<td>6:45pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>Notify Learning Apps restore complete</td>
<td>8:55pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Check everything in place</td>
<td>9:00pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Run the Upgrade</td>
<td>9:25pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Validate that the site is upgraded successfully</td>
<td>9:35pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Make site live (remove .htaccess)</td>
<td>9:40pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Digi-Ed</td>
<td>Login to site (Still in Maintenance mode) and do a final sanity check</td>
<td>9:45pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Take site out of Maintenance Mode after sign-off from Digi-Ed &amp; add link on snapshot homepage</td>
<td>9:50pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Digi-Ed</td>
<td>Comms that Moodle 1819 snapshot is live</td>
<td>10:00pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>re allow course reset capability for roles <a href="Disable_role_course_reset">Disable role course reset</a></td>
<td>10:05pm</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Step 3 - Complete

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
<td>Notify ele-core &amp; Service Desk that upgrade &amp; snapshot complete</td>
<td>10:10pm</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Thank everyone involved and let everyone go home</td>
<td>10:20pm</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td>Update CR and mark change as complete and succesful</td>
<td>10:30pm</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Future date (in August preferably) - migrate moodle.ucl.ac.uk from RHEL6 to RHEL7 servers


