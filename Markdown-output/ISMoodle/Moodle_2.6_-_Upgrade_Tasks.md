# Moodle 2.6 - Upgrade Tasks

# Upgrade Tasks

**Sub pages**

-   [2.6 settings (Admin) menu](2.6_settings_Admin_menu)
-   [DB Settings for new 2.6 instance](DB_Settings_for_new_2.6_instance)
-   [2.6 upgrade housekeeping](2.6_upgrade_housekeeping)
-   [Moodle 2.6 ucl hacks](Moodle_2.6_ucl_hacks)
-   [Oustanding actions (for MB)](Oustanding_actions_for_MB_)
-   [Browser testing](Browser_testing)

**Timeline**

[Timeline spreadsheet](attachments/39454280/41845262.xlsx)

### Upgrade plans

[Moodle-v2.6 dry-run upgrade plan](attachments/39454280/42205483.docx)

### Upgrade Process

Process followed to upgrade on moodle-test server

Database-setup

Follow instructions from here - <https://wiki.ucl.ac.uk/display/ISMoodle/Creating+a+dev+instance+of+moodle#>

Code-base setup

1) Get moodle - v2.6.2 download from here - <http://download.moodle.org/>

2) Check if svn repo created for moodle-v2.6.2 exists- <https://svn.ucl.ac.uk/repos/isd/moodle26/>

3) Copy downloaded moodle-v2.6.2  into svn trunk -  <https://svn.ucl.ac.uk/repos/isd/moodle26/trunk/>

4) Also keep the copy of core moodle-v2.6.2 within svn branch - <https://svn.ucl.ac.uk/repos/isd/moodle26/branches/moodle_core-2.6.2/>

Note - 'moodle\_core-2.6.2' branch contains no custom code

5) Check for 'add-on' plugins(non-core moodle plugins) from here - <https://v247.moodle-uat.ucl.ac.uk/admin/plugins.php>

6) Check and download latest plugin version compatible with moodle - v2.6.2 from moodle plugins directory - <https://moodle.org/plugins/>

Note - This is manual process. Better to download each add-on plugin and upgrade moodle rather than upgrading moodle after adding all add-on plugins at once.

7) Check for UCL hacks by executing grep command on moodle- v2.4.7 code-base either on moodle-uat.ucl.ac.uk or moodle-dev.ucl.ac.uk servers

\[ccspmdd@moodle-dev v247\]$ grep -R "ucl hack" \*

8) Check for ucl-hacks within ucl\_release\_notes(root/ucl\_mdl\_release\_notes.txt)

9) Apply hacks(Either manually or using mergetools like Meld, WinMerge etc)

10) Using winscp/commandline(sftp/ftp) transfer moodle-v2.6.2 code from local to ccspmdu@moodle-test.uck.ac.uk (/data/apache/moodle-vhosts/v26-ucl)

Note- Make sure $CFG-&gt;wwwroot/local\_settings.php and $CFG-&gt;wwwroot/config.php scripts is updated with right values.

11) Login  - <https://v26-ucl.moodle-test.ucl.ac.uk/>

12) Follow Moodle instructions while installation. 

# Non Core Plugins

<table style="width:100%;">
<colgroup>
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Plugin name</p></th>
<th><p>Release<br />
(Version)</p></th>
<th><p>Type/Path</p></th>
<th><p>Enabled in Production</p></th>
<th><p>Latest Compatible Moodle</p></th>
<th><p>Comments</p></th>
<th><p>Module main link</p></th>
<th><p>Source Code Used From</p></th>
<th><p>Other notes</p></th>
<th><p>2.6 Compatibility Test (pass/fail)<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Attendance</p></td>
<td><p>2014022800</p></td>
<td><p>module<br />
<br />
</p></td>
<td><p>Disabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle plugin</p></td>
<td><p> </p></td>
<td><p>[http://docs.moodle.org/26/en/Attendance_module<br />
][https://moodle.org/plugins/browse.php?list=set&amp;id=36<br />
]</p></td>
<td><p>The module is renamed from 'attforblock' to 'attendance'.<br />
It is disabled on UAT- so I would presume it is disabled on production. Is it worth installing 2.6 version of module if it is disabled?<br />
</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Do not install on 2.6<br />
</p></td>
</tr>
<tr class="even">
<td><p>Certificate</p></td>
<td><p>2013102300</p></td>
<td><p>module<br />
/mod/certificate</p></td>
<td><p>Enabled</p></td>
<td><p>2.5,2.5,2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettingcertificate</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_certificate" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_certificate</a></p></td>
<td><p> </p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
All OK<br />
</p></td>
</tr>
<tr class="odd">
<td><p>HotPot</p></td>
<td><p>2014030304</p></td>
<td><p>module<br />
/mod/hotpot</p></td>
<td><p>Enabled</p></td>
<td><p>2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettinghotpot</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_hotpot" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_hotpot</a></p></td>
<td><p>Here are some extra 'review options' settings for the plugin<br />
</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Although the Hot pot software is no longer supported<br />
(Hot Potatoes for Windows 98/ME/NT4/2000/XP/Vista, version 6.3).<br />
there is a working plugin for M2.6<br />
Tested OK<br />
</p></td>
</tr>
<tr class="even">
<td><p>Hot Question</p></td>
<td><p>2013081200</p></td>
<td><p>module<br />
/mod/hotquestion/</p></td>
<td><p>Enabled</p></td>
<td><p>2.0, 2.1</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=mod_hotquestion<br />
] <a href="https://github.com/hit-moodle/moodle-mod_hotquestion" class="uri">https://github.com/hit-moodle/moodle-mod_hotquestion</a></p></td>
<td><p>I cloned repo from github. Need to check its compatibility for 2.6 moodle- as compatible versions is not updated within plugin documentation</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Tested in <a href="https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=15138" class="uri">https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=15138</a><br />
  All Ok<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Advanced Forum<br />
</p></td>
<td><p>2013020500</p></td>
<td><p>module<br />
/mod/hsuforum</p></td>
<td><p>Enabled</p></td>
<td><p>2.5</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettinghsuforum</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_hsuforum" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_hsuforum</a></p></td>
<td><p>Need to compare config settings within old and new version. Documentation doesn't say if it is compatible with 2.6 moodle version. The latest I could find was 2.5. Few tests would confirm compatibility with 2.6 moodle version.</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Tested in 2.6<br />
Looks to work OK<br />
</p></td>
</tr>
<tr class="even">
<td><p>Questionnaire</p></td>
<td><p>2014010301</p></td>
<td><p>module<br />
/mod/questionnaire</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettingquestionnaire</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_questionnaire" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_questionnaire</a></p></td>
<td><p>New config setting included within latest 'Questionnaire' version. There was no settings in the 2.4 version. So review the setting and its impact on current courses using this module.</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
New settings page is just one setting. The format is slightly re-arranged/simplified. All looks to work OK, although I havent gone in and created each question type and responded as a student.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Scheduler</p></td>
<td><p>2013092702</p></td>
<td><p>module<br />
/mod/scheduler</p></td>
<td><p>Enabled</p></td>
<td><p>2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettingscheduler</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_scheduler" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_scheduler</a></p></td>
<td><p>Need to compare config settings within old and new version.</p></td>
<td><p>MB<br />
Additional setting just adds a max students in list option.<br />
</p></td>
</tr>
<tr class="even">
<td><p>TurnItIn Tool</p></td>
<td><p>2013111402</p></td>
<td><p>module<br />
/mod/turnitintool</p></td>
<td><p>Enabled</p></td>
<td><p>2.4.8, 2.5.4,2.6.1</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettingturnitintool</p></td>
<td><p>[https://submit.ac.uk/account/2702/integrations/download/12?lang=en_us<br />
]<br />
Moodledirectv1</p></td>
<td><p> </p></td>
<td><p>DS<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
</tr>
<tr class="odd">
<td><p>Slideshow</p></td>
<td><p>2012122900</p></td>
<td><p>module<br />
/mod/slideshow</p></td>
<td><p>Enabled</p></td>
<td><p>&gt;2.2</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=modsettingslideshow</p></td>
<td><p> </p></td>
<td><p>Couldn't find this plugin to download. Ported  /mod/slideshow plugin from moodle 2.4.7 to moodle 2.6.1</p></td>
<td><p>MB<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
Ported version doesnt work in 2.6<br />
There is a slideshow block that might replicate functionality, but to be tested once 2.6. is in place.<br />
Notify current course owners with slideshow on?<br />
</p></td>
</tr>
<tr class="even">
<td><p>Hidden Course</p></td>
<td><p>2012020600</p></td>
<td><p>block<br />
/blocks/hidden_course</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Inhouse Plugin</p></td>
<td><p>No settings</p></td>
<td><p> </p></td>
<td><p>This block is developed inhouse. I have modified version.php file to reflect right tags within comments.</p></td>
<td><p><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
Currently this block is configurable (unlike 2.4) - it probably shouldn't be. Also, the closed eye image doesn't load - need to remember to add to pix folder<br />
Trac ticket created to fix image<br />
[https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/50<br />
]<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Course Menu</p></td>
<td><p>2014013001<br />
</p></td>
<td><p>block<br />
/blocks/course_menu</p></td>
<td><p>Enabled</p></td>
<td><p>2.3, 2.4, 2.5</p></td>
<td><p> </p></td>
<td><p>/admin/settings.php?section=blocksettingcourse_menu</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=block_course_menu" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=block_course_menu</a><br />
Latest version from github<br />
<a href="https://github.com/netsapiensis/moodle-block_course_menu/tree/MOODLE_23_DEV" class="uri">https://github.com/netsapiensis/moodle-block_course_menu/tree/MOODLE_23_DEV</a></p></td>
<td><p>Have applied code from DEV branch- as it had fixes for the issues that were specific to Moodle-v2.6.2</p></td>
<td><p>RD<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  works ok - configured with custom links, changed page position and checked navigation using different topic formats - all and single topics.</p></td>
</tr>
<tr class="even">
<td><p>Library Resources</p></td>
<td><p>2011100101</p></td>
<td><p>block<br />
/blocks/library_resources</p></td>
<td><p>Enabled</p></td>
<td><p>&gt;2.2</p></td>
<td><p>Inhouse Plugin</p></td>
<td><p>/admin/settings.php?section=blocksettinglibrary_resources</p></td>
<td><p> </p></td>
<td><p>This block is developed inhouse. I have modified the block to match moodle tree structure for blocks. Have added install.php and install.xml within blocks/library_resources/db/ folder. Moodle no longer supports/installs any new tables that are defined within mysql.php and mysql.sql scripts.</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
This all looks to work OK. Settings page works, the search boxes work, student view works. Tested in<br />
<a href="https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=52" class="uri">https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=52</a><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Library Search</p></td>
<td><p>2012013000</p></td>
<td><p>block<br />
/blocks/library_search</p></td>
<td><p>Enabled</p></td>
<td><p>&gt;2.2</p></td>
<td><p>Inhouse Plugin</p></td>
<td><p>/admin/settings.php?section=blocksettinglibrary_search</p></td>
<td><p> </p></td>
<td><p>This block is developed inhouse. I have modified the block to match moodle tree structure for blocks. Have added install.php and install.xml within blocks/library_search/db/ folder. Moodle no longer supports/installs any new tables that are defined within mysql.php and mysql.sql scripts.</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
This all looks to work OK. Settings page works, the search boxes work, student view works. Tested in [https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=774</p></td>
</tr>
<tr class="even">
<td><p>Bulk enrolments</p></td>
<td><p>2011120100</p></td>
<td><p>block<br />
blocks/mass_enroll</p></td>
<td><p>Enabled</p></td>
<td><p>&gt;2.2</p></td>
<td><p>Moodle plugin</p></td>
<td><p>No settings</p></td>
<td><p> </p></td>
<td><p>Couldn't find this block within- <a href="https://moodle.org/plugins/" class="uri">https://moodle.org/plugins/</a> So, ported current moodle 2.4.7 version to 2.6.1 version</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Works OK. Asked Niv to update &quot; user id column contains&quot; dropdown<br />
Trac<br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/9" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/9</a><br />
<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Mass enrollments</p></td>
<td><p>2012101009</p></td>
<td><p>local plugin<br />
/local/mass_enroll</p></td>
<td><p>Enabled</p></td>
<td><p>2.2, 2.3, 2.4</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>No settings</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=local_mass_enroll<br />
]<br />
<a href="https://github.com/patrickpollet/moodle_local_mass_enroll" class="uri">https://github.com/patrickpollet/moodle_local_mass_enroll</a></p></td>
<td><p>The current version for this plugin is the latest one- I could find. So ported the /local/mass_enroll plugin from moodle 2.4.7 to moodle 2.6.1</p></td>
<td><p>See above - linked plugins<br />
</p></td>
</tr>
<tr class="even">
<td><p>Quickmail</p></td>
<td><p>2013062611</p></td>
<td><p>block<br />
/blocks/quickmail</p></td>
<td><p>Enabled</p></td>
<td><p>2.4, 2.5</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=blocksettingquickmail</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=block_quickmail" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=block_quickmail</a></p></td>
<td><p> </p></td>
<td><p>RD</p></td>
</tr>
<tr class="odd">
<td><p>Common Timetable</p></td>
<td><p>2012020300</p></td>
<td><p>block<br />
/blocks/timetable</p></td>
<td><p>Enabled</p></td>
<td><p>&gt;2.2</p></td>
<td><p>Inhouse Plugin</p></td>
<td><p>/admin/settings.php?section=blocksettingtimetable</p></td>
<td><p> </p></td>
<td><p>This block is developed inhouse. I have modified the block to match moodle tree structure for blocks. Have added install.php and install.xml within blocks/timetable/db/ folder. Moodle no longer supports/installs any new tables that are defined within mysql.php and mysql.sql scripts.</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
This all looks to work OK. Settings page works, the links work, student view works. Tested in <a href="https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=52" class="uri">https://v26-ucl.moodle-test.ucl.ac.uk/course/view.php?id=52</a><br />
</p></td>
</tr>
<tr class="even">
<td><p>algebra</p></td>
<td><p>2013062500</p></td>
<td><p>qtype<br />
/question/type/algebra</p></td>
<td><p>Enabled</p></td>
<td><p>2.5</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>/admin/settings.php?section=qtypesettingalgebra</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qtype_algebra" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qtype_algebra</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Drag and drop markers</p></td>
<td><p>2014010800</p></td>
<td><p>qtype<br />
/question/type/ddmarker</p></td>
<td><p>Enabled</p></td>
<td><p>2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddmarker" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddmarker</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Drag and drop into text</p></td>
<td><p>2013070100</p></td>
<td><p>qtype<br />
/question/type/ddwtos</p></td>
<td><p>Enabled</p></td>
<td><p>2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddwtos" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddwtos</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Drag and drop onto image<br />
</p></td>
<td><p>2014010800</p></td>
<td><p>qtype<br />
/question/type/ddimageortext</p></td>
<td><p>Enabled</p></td>
<td><p>2.5, 2.6</p></td>
<td><p>Moodle Plugin<br />
</p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/plugins/view.php?plugin=qtype_ddimageortext<br />
]</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Select missing words</p></td>
<td><p>2014010800</p></td>
<td><p>qtype<br />
question/type/gapselect</p></td>
<td><p>Enabled</p></td>
<td><p>2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qtype_gapselect" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qtype_gapselect</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Regular expression short answer</p></td>
<td><p>2013111801</p></td>
<td><p>qtype<br />
question/type/regexp</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qtype_regexp" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qtype_regexp</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>RegExp Adaptive mode with Help</p></td>
<td><p>2013040900</p></td>
<td><p>qbehaviour<br />
question/qbehaviour/regexpadaptivewithhelp</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=qbehaviour_regexpadaptivewithhelp<br />
]</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>RegExp Adaptive mode with Help (no penalties)</p></td>
<td><p>2013040900</p></td>
<td><p>qbehaviour<br />
question/qbehaviour/regexpadaptivewithhelpnopenalty</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qbehaviour_regexpadaptivewithhelpnopenalty" class="uri">https://moodle.org/plugins/view.php?plugin=qbehaviour_regexpadaptivewithhelpnopenalty</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Potatoes XML format</p></td>
<td><p>2013113015</p></td>
<td><p>qformat<br />
question/format/hotpot</p></td>
<td><p>Enabled</p></td>
<td><p>2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qformat_hotpot" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qformat_hotpot</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Microsoft Word table format (wordtable)<br />
</p></td>
<td><p>2014022701</p></td>
<td><p>qformat<br />
question/format/wordtable</p></td>
<td><p>Enabled</p></td>
<td><p>2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qformat_wordtable" class="uri">https://moodle.org/plugins/view.php?plugin=qformat_wordtable</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Jmol</p></td>
<td><p>2013121500<br />
</p></td>
<td><p>filter<br />
filter/jmol</p></td>
<td><p>Enabled</p></td>
<td><p>2.3, 2.4, 2.5, 2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=filter_jmol" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=filter_jmol</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Onetopic format</p></td>
<td><p>2014012001</p></td>
<td><p>format<br />
course/format/onetopic</p></td>
<td><p>Enabled</p></td>
<td><p>2.6</p></td>
<td><p>Moodle Plugin</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=format_onetopic" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=format_onetopic</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Potatoes output formats</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/attempt/hp</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>No Longer using the HotPot plugin<br />
This is part of /mod/hotpot module</p></td>
<td><p>MB - see comments</p></td>
</tr>
<tr class="odd">
<td><p>HTML output formats</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/attempt/html</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Qedoc output formats</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/attempt/qedoc</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Hot Potatoes source files</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/source/hp</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>HTML source files</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/source/html</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Qedoc source files</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/source/qedoc</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Statistical analysis report</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/report/analysis/</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Click trail report</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/report/clicktrail/</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Overview report</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/report/overview/</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Responses report</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/report/responses/</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Scores report</p></td>
<td><p>n/a</p></td>
<td><p>/mod/hotpot/report/scores/</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>This is part of /mod/hotpot module<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Profile switches</p></td>
<td><p>2012092101</p></td>
<td><p>local plugin<br />
/local/profileswitches</p></td>
<td><p>Enabled</p></td>
<td><p>2.2, 2.3, 2.4, 2.5</p></td>
<td><p>Moodle Plugin</p></td>
<td><p>No settings</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=local_profileswitches" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=local_profileswitches</a></p></td>
<td><p>The current version for this plugin is the latest one- I could find. So ported the /local/mass_enroll plugin from moodle 2.4.7 to moodle 2.6.1</p></td>
<td><p>MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Now fixed - Trac ticket<br />
<a href="https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/8" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/8</a><br />
</p></td>
</tr>
<tr class="odd">
<td><p>ucl_tools</p></td>
<td><p>n/a</p></td>
<td><p>/ucl_tools</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Old custom code developed by UCL- Resides with root folder /ucl_tools/</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>essential theme</p></td>
<td><p>2014020300<br />
</p></td>
<td><p>/theme/essential</p></td>
<td><p> </p></td>
<td><p>2.6</p></td>
<td><p>Moodle plugin</p></td>
<td><p>/admin/settings.php?section=theme_essential_generic<br />
</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=theme_essential" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=theme_essential</a><br />
</p></td>
<td><p>This theme would act as base theme/parent theme on top of which new theme work according to specification will be carried out.</p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845315.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845316.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845317.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845318.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845319.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/42205649.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle 2 6 upgrade dry-run v1.0.docx](attachments/39454280/42205483.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 timeline-3.xlsx](attachments/39454280/41845262.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

