# Moodle 3.7.7 & Snapshot 19-20

Expected Release date: 13h July 2020 9pm-11pm

Deployment lead: AS

1) Delete locks - Moved into CR00007190 on 09/07/2020 9pm-10pm

Clear locks and check that restored course & Turnitin task are unlocked

<https://moodle.ucl.ac.uk/course/view.php?id=20663>

<https://moodle.ucl.ac.uk/admin/tool/task/schedule_task.php?task=mod_turnitintooltwo%5Ctask%5Cturnitintooltwo_task>

2) Update core Moodle to 3.7.7 with a full rebuild - <https://docs.moodle.org/dev/Moodle_3.7.7_release_notes>

Deploy zip artefact  (on branch MOODLE\_37\_UCL\_REL377)

After upgrade has run, re-enable DB R/W splitting:

``` java
cd /data/apache/htdocs/moodle && git fetch && git checkout -b MOODLE_37_UCL_REL377_DB_SLAVE origin/MOODLE_37_UCL_REL377_DB_SLAVE
```

3) Update Colours for Accessibility:

|                                           |                                    |                                       |
|-------------------------------------------|------------------------------------|---------------------------------------|
| **Setting**                               | **Before**                         | **After**                             |
| theme\_adaptable | footerbkcolor          | \#424242                           | \#383838                              |
| theme\_adaptable | headerbkcolor          | \#29A8B7                           | \#28A1AF                              |
| theme\_adaptable | tilesbordercolor       | \#006174                           | \#f0f0f0                              |
| theme\_adaptable | fontheadercolor        | \#AC145A                           | \#E5438E                              |
| theme\_adaptable | buttonhovercolorscnd   | \#009688                           | \#008577                              |
| theme\_adaptable | buttoncolorcancel      | \#EF5350                           | \#E91916                              |
| theme\_adaptable | buttonhovercolorcancel | \#E53935                           | \#E32926                              |
| theme\_adaptable | slidersubmitbgcolor    | \#009688                           | \#008577                              |
| theme\_adaptable | alertcolorinfo         | \#D9EDF7 (it was \#3a87ad on prod) | \#2F6E8E (if normal text is involved) |
| theme\_adaptable | alertcolorsuccess      | \#468847                           | \#3D763E                              |
| theme\_adaptable | loginbgopacity         | 0.8                                | 1.0                                   |

[<img src="rest/documentConversion/latest/conversion/thumbnail/137160064/1" height="250" />](/download/attachments/137139877/MoodleAdaptableTheme_ColourSettings.docx?version=1&modificationDate=1594632425000&api=v2)

Due to bug <https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues/137>

|                                        |                                                  |                           |
|----------------------------------------|--------------------------------------------------|---------------------------|
| **Setting**                            | **Before**                                       | **After**                 |
| theme\_adaptable | mysitessortoverride | Display all enrolled courses in single flat list | Use list from my overview |

4) For Moodle Snapshot

a) RSYNC from mdl-admin01:/moodlefs to mdl-snpsht-ap01

b) Take Database backup excluding log tables and restore on mdl-db01 as moodle\_archive\_1920, move log tables from moodle\_live to moodle\_archive\_1920 and recreate empty tables from DDL in moodle\_live

Leave URL change script  to run overnight and make 19-20 snapshot available on Tuesday 14th July.

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
<td>Al</td>
<td><p>Initial Rsync of Moodledata for each site:</p>
<ul>
<li>19-20</li>
</ul></td>
<td><div class="content-wrapper">
<p>06 Jul 2020 </p>
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>04 Jul 2020 </p>
</div></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>Roy</td>
<td>Dry-run of DB restore times on mdl-db02p</td>
<td><div class="content-wrapper">
<p>06 Jul 2020 </p>
</div></td>
<td><div class="content-wrapper">
<p>01 Jul 2020 </p>
</div></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Moodle 3.7.7 build &amp; config.php deployed for 19-20 on <a href="http://mdl-snpsht-ap01.ad">mdl-snpsht-ap01.ad</a> with .htaccess</td>
<td><div class="content-wrapper">
<p>13 Jul 2020 </p>
</div></td>
<td><div class="content-wrapper">
<p>13 Jul 2020 </p>
</div></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Dry-run upgrade of 19-20 on <a href="http://mdl-snpsht-ap01.ad">mdl-snpsht-ap01.ad</a> to test that all apache etc configs are good</td>
<td><div class="content-wrapper">
<p>06 Jul 2020 </p>
</div></td>
<td><div class="content-wrapper">
<p>13 Jul 2020 </p>
</div></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>penultimate Rsync of Moodledata for each site:</p>
<ul>
<li>19-20</li>
</ul></td>
<td><div class="content-wrapper">
<p>12 Jul 2020 </p>
</div></td>
<td><div class="content-wrapper">
<p>13 Jul 2020 </p>
</div></td>
</tr>
</tbody>
</table>

Required team under ESS

-MySQL DBA - Roy (13th 9pm-11pm)

-LA team x2 (13th 9pm-11pm)

Required team during business hours

--Ed Apps - All → AS/DK/EA/DO (busy throughout 14th)

## Day 1 - Take Moodle snapshot & Upgrade prod

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
<td>Activate Maintenance Mode on Moodle</td>
<td>9pm</td>
<td>9pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Apply .htaccess to redirect Prod Moodle to ISD News</td>
<td>9:01pm</td>
<td>9:01pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Give DBA all clear to start dump</td>
<td>9:03pm</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td><br />
</td>
<td>MySQL dump backup of moodle_live excluding log tables &amp; restore as moodle_archive_1920 on mdl-db01/mdl-db02</td>
<td>9:05pm</td>
<td>9:40pm</td>
<td><ul>
<li> start</li>
<li>completes</li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Final Rsync of Moodledata for 19-20</td>
<td>9:05pm</td>
<td>9:50pm</td>
<td><ul>
<li> start</li>
<li>completes</li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>On Snapsphot once rsync complete, clear all cache &amp; temp folders</p>
<p>rm -rf /data/moodle/19-20/cache/*</p>
<p>rm -rf /data/moodle/19-20/localcache/*</p>
<p>rm -rf /data/moodle/19-20/muc/*</p>
<p>rm -rf /data/moodle/19-20/sessions/*</p>
<p>rm -rf /data/moodle/19-20/temp/*</p></td>
<td>9:55pm</td>
<td>10:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>DBA</td>
<td>Move log tables from moodle_live to moodle_archive_1920</td>
<td>9:40pm</td>
<td>9:42pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>DBA</td>
<td>DBA</td>
<td>Create re-create schemas from DDL for moved tables</td>
<td>9:42pm</td>
<td>9:45pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td><br />
</td>
<td>DBA notify Learning Apps db backup, restore &amp; log table move complete</td>
<td>9:50pm</td>
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
<td>Remove .htaccess redirect &amp; Upgrade Moodle Prod to 3.7.7</td>
<td>9:50pm</td>
<td>9:52pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td>Smoke test Prod</td>
<td>9:52pm</td>
<td>9:55pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Switch off Maintenance mode on prod / release</td>
<td>9:55pm</td>
<td>10pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
</tbody>
</table>

## 
Create, upgrade & release snapshot on day 2

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
<td><p>Verify restore of moodle_archive_1920<strong> </strong>on mdl completes successfully &amp; moodleuser for mysql has access</p></td>
<td>9:50pm</td>
<td>10pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td>Update config.php to use the <a href="https://moodle-snapshot.ucl.ac.uk/19-20" class="uri">https://moodle-snapshot.ucl.ac.uk/19-20</a> url</td>
<td>10:00pm</td>
<td>10:00pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td>Remove .htaccess redirect &amp; Upgrade Moodle Snapshot to 3.7.7<br />
<br />
</td>
<td>10pm</td>
<td>10:15pm</td>
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
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Disable tasks:</p>
<ul>
<li>\enrol_imsenterprise\task\cron_task</li>
<li>\local_userprofilefields_import\task\cron_task</li>
<li>\tool_ally\task\content_updates_task</li>
<li>\tool_ally\task\file_updates_task</li>
</ul></td>
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
<td><p>Run URL update tool</p>
<p>php admin/tool/replace/cli/replace.php --search=' https://moodle.ucl.ac.uk/ ' --replace='https://moodle-snapshot.ucl.ac.uk/19-20/' --non-interactive --shorten=true</p></td>
<td>10:20pm</td>
<td>9am 14th July</td>
<td><ul>
<li> start</li>
<li>complete</li>
</ul></td>
</tr>
<tr class="odd">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Run URL update tool</p>
<p>php admin/tool/replace/cli/replace.php --search='https://moodle.ucl.ac.uk/' --replace='https://moodle-snapshot.ucl.ac.uk/19-20/' --non-interactive --shorten=true</p></td>
<td>2pm</td>
<td><br />
</td>
<td><p>need TBC</p>
<ul>
<li> start</li>
<li>complete</li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td><p>Remove use of read-only db instance for MyFeedback on snapshot</p>
<p> <a href="https://moodle-snapshot.ucl.ac.uk/19-20/admin/settings.php?section=reportmyfeedback" class="uri">https://moodle-snapshot.ucl.ac.uk/19-20/admin/settings.php?section=reportmyfeedback</a></p></td>
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
<td>Take 19-20 site out of Maintenance Mode</td>
<td>10:00am</td>
<td>10:05am</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Digi-ED</td>
<td><br />
</td>
<td>Make sure hub landing page content updated and ready for new LSA/snapshot <a href="https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub</a></td>
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
<td>Remove .htaccess and do a git pull in /data/apache/htdocs/moodle/ to update the index.php to add link to 19-20 snapshot</td>
<td>1:30pm</td>
<td>1:45pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Update Site Name to &quot;UCL Moodle 19/20&quot; - <a href="https://moodle-snapshot.ucl.ac.uk/19-20/admin/settings.php?section=frontpagesettings" class="uri">https://moodle-snapshot.ucl.ac.uk/19-20/admin/settings.php?section=frontpagesettings</a></td>
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
<td>add link to 19-20 snapshot on Live Moodle dashboard block</td>
<td>1:45pm</td>
<td>1:50pm</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td><br />
</td>
<td>Enable Hub <a href="https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub" class="uri">https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub</a></td>
<td>Wednesday</td>
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
<td>Comms that 19-20 snapshot released</td>
<td>Wednesday</td>
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
<td>Configure Redis Application Cache &amp; Session Store</td>
<td>Wednesday</td>
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
<td>Enable cron for 19-20 </td>
<td>Wednesday</td>
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
<td>Update prod roles to allow course resets - <a href="Disable_role_course_reset">Disable role course reset</a></td>
<td>Wednesday</td>
<td><br />
</td>
<td><ul>
<li> </li>
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
<td>Notify ele-core &amp; Service Desk that snapshot released</td>
<td><br />
</td>
<td><ul>
<li> </li>
</ul></td>
</tr>
<tr class="even">
<td>Learning Apps</td>
<td>Thank everyone involved</td>
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

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MoodleAdaptableTheme\_ColourSettings.docx](attachments/137139877/137160064.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

