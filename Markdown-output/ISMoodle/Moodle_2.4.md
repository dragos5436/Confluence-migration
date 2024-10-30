# Moodle 2.4

-   [Upgrade Plan](#Moodle2.4-UpgradePlan)
-   [New Features](#Moodle2.4-NewFeatures)
    -   [Assignment](#Moodle2.4-Assignment)
        -   [Cut-off date](#Moodle2.4-Cut-offdate)
        -   [Require that students accept the Submission statement](#Moodle2.4-RequirethatstudentsaccepttheSubmissionstatement)
        -   [Students submit in groups](#Moodle2.4-Studentssubmitingroups)
        -   [Blind marking](#Moodle2.4-Blindmarking)
        -   [Uploading multiple feedback files](#Moodle2.4-Uploadingmultiplefeedbackfiles)
        -   [Offline grading worksheet](#Moodle2.4-Offlinegradingworksheet)
        -   [Submission Statement](#Moodle2.4-SubmissionStatement)
        -   [Notifications to graders](#Moodle2.4-Notificationstograders)
        -   [Submission settings](#Moodle2.4-Submissionsettings)
        -   [Submission comments](#Moodle2.4-Submissioncomments)
        -   [Feedback settings](#Moodle2.4-Feedbacksettings)
        -   [Grading method](#Moodle2.4-Gradingmethod)
-   [Issues](#Moodle2.4-Issues)
-   [Non Core Plugins](#Moodle2.4-NonCorePlugins)
-   [Upgrade Issues:](#Moodle2.4-UpgradeIssues:)

## Upgrade Plan

See [attached document](attachments/26518098/33489010.docx) for the upgrade plan

## New Features

### Assignment

#### Cut-off date

The Cut-off date is the date beyond which students will not be able to send in their assignment as the button for doing so will no longer be displayed. After that date (or time) a teacher may, on request, grant an extension by going to the class assignment grading screen, clicking the "Edit" column and choosing "grant extension" for the relevant student.

#### Require that students accept the Submission statement

An administrator can define a "Submission statement", ie, a statement where students promise the work is their own and which they must agree to before submitting their work. This may be done via *Settings&gt;Site administration&gt;Plugins&gt;Activity modules&gt;Assignment.*

If preferred, the available default statement which may be used instead: *This assignment is my own work, except where I have acknowledged the use of the works of other people*

If the administrator has given teachers the option of using a submission statement or not, then it will be available in the assignment settings screen. The section [\#Submission\_Statement](http://docs.moodle.org/24/en/Assignment_settings#Submission_Statement) explains how an administrator can set this up.

For more details, see this blog post ["All my own work"](http://ourlearning.co.uk/2012/10/moodle-assignment-all-my-own-work/)

When this setting is enabled, students will have to check a button before they can submit their assignment:

If the administrator has forced the statement throughout the site, a teacher will not have this option in the settings but a student will see the statement when accessing their assignment.

#### Students submit in groups

If this box is ticked, then students are able to collaborate on an assignment. This might involve for example, working in the same online text area, or one student uploading an MS Powerpoint which another student downloads, improves and re-uploads to the common assignment area.

When grading, the teacher may choose to give a common grade and feedback to all students in the group or to give individual grades and feedback to each member.

If no groups have been made, then Moodle will make a default group of every student in the course.

#### Blind marking

If this setting is enabled, then a teacher will not see the names of students who have submitted their assignments. Instead, they will see randomly generated Participant numbers. (The student view of the assignment does not change.) Once they have graded the assignment, it is however possible for teachers to see who submitted what by clicking on "Reveal student identities" in the Assignment settings.

#### Uploading multiple feedback files

It is also possible to upload multiple feedback files as a zip, from the dropdown above the grading list:

#### Offline grading worksheet

If set to yes, the teacher will have a link to download the grading list as a spreadsheet. They will then be able to enter grades and feedback comments offline

#### Submission Statement

An administrator can enter text in the box which will appear when students are about to submit their assignment.

#### Notifications to graders

In previous Moodle versions this setting was singular and was known as “Email alerts to teachers”. In Moodle 2.3 onwards. you are able to choose whether graders receive email notifications whenever a student submits an assignment (early, on time and late) or whether graders only receive email notifications whenever a student submits an assignment late. Only teachers who are able to grade the particular assignment are notified. So, for example, if the course uses separate groups, teachers restricted to particular groups will not receive notifications about students in other groups.

#### Submission settings

Submission settings allow you to determine how you would like your students to submit their assignment

#### Submission comments

If enabled, students may leave comments into a text area associated with the assignment. Comments can be used for communication with the grading person, assignment progress description, to let students alert the marker about which file is the master file (in case of inter-linked files), or any other type of communication between student and marker.

*New feature*
*in Moodle 2.3!* Submission comments will appear in the grading table (click on the assignment activity, then click on the View/Grade all Submission button), in the Submission comments column. Submission comments allow two-way communication between the student and teacher.

#### Feedback settings

Feedback settings allow you to determine the type of feedback you will provide to students.

#### Grading method

There are 3 options:

-   Simple direct grading (entering a grade or scale item)
-   [Marking guide](http://docs.moodle.org/23/en/Marking_guide)
-   [Rubric](http://docs.moodle.org/23/en/Rubric)

## Issues

## Non Core Plugins

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
<th><p>Plugin name<br />
</p></th>
<th><p>Release<br />
(Version)</p></th>
<th><p>Type/Path</p></th>
<th><p>Enabled in Production</p></th>
<th><p>Latest Compatible Moodle<br />
</p></th>
<th><p>Comments<br />
</p></th>
<th><p>Module main link</p></th>
<th><p>Source Code Used From</p></th>
<th><p>Other notes (1/3/13)</p></th>
<th><p>2.4 Compatibility Test (Local installation)</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Theme -<br />
ucl</p></td>
<td><p>N/A</p></td>
<td><p>Theme<br />
theme/ucl</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>In-house</p></td>
<td><p>N/A</p></td>
<td><p>Moodle DEV v227</p></td>
<td><p>Generates some warnings. Perhaps needs code refactoring.</p></td>
<td><p>FAIL<br />
(See ticket 366)</p></td>
</tr>
<tr class="even">
<td><p>Attendance</p></td>
<td><p> </p></td>
<td><p>Module<br />
mod/attforblock</p></td>
<td><p>No</p></td>
<td><p>2.4</p></td>
<td><p>Unofficial</p></td>
<td><p><a href="http://docs.moodle.org/23/en/Attendance_module" class="uri">http://docs.moodle.org/23/en/Attendance_module</a></p></td>
<td><p><a href="https://github.com/andreev-artem/moodle_mod_attforblock/archive/MDL_24.zip" class="uri">https://github.com/andreev-artem/moodle_mod_attforblock/archive/MDL_24.zip</a><br />
[SHA 2c76707f7bb76c57035323d430ff4ab2a29b9523]<br />
</p></td>
<td><p>Attendance module is not listed in Moodle plug-ins page and <br />
it's different than AttendanceRegister. <br />
Moodle 2.4 Update (unofficial) for Attendance module <br />
Haven't found this plugin installed in our moodle-dev server.<br />
</p></td>
<td><p>Pass<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Certificate</p></td>
<td><p>2012022001</p></td>
<td><p>Module<br />
mod/certificate <br />
</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_certificate" class="uri">https://moodle.org/plugins/view.php?plugin=mod_certificate</a></p></td>
<td><p><a href="https://moodle.org/plugins/download.php/2166/mod_certificate_moodle24_2013021200.zip" class="uri">https://moodle.org/plugins/download.php/2166/mod_certificate_moodle24_2013021200.zip</a></p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>HotPot</p></td>
<td><p>2010080328</p></td>
<td><p>Module<br />
mod/hotpot <br />
</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_hotpot" class="uri">https://moodle.org/plugins/view.php?plugin=mod_hotpot</a></p></td>
<td><p>[https://moodle.org/plugins/download.php/2399/mod_hotpot_moodle24_2010080358.zip</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Hot Question</p></td>
<td><p>2012050900<br />
2.1 beta<br />
</p></td>
<td><p>Module<br />
mod/hotquestion <br />
</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p><strong>2.1</strong></p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_hotquestion" class="uri">https://moodle.org/plugins/view.php?plugin=mod_hotquestion</a><br />
<br />
<br />
</p></td>
<td><p><a href="https://github.com/hit-moodle/moodle-mod_hotquestion&amp;nbsp">https://github.com/hit-moodle/moodle-mod_hotquestion</a>[SHA: 7a119964da06637c733231477d59129628775dbc]<br />
<br />
</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Questionnaire<br />
</p></td>
<td><p>2010110101</p></td>
<td><p>Module<br />
mod/<a href="https://moodle.org/plugins/view.php?plugin=mod_questionnaire">questionnaire</a></p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>Unofficial</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_questionnaire" class="uri">https://moodle.org/plugins/view.php?plugin=mod_questionnaire</a></p></td>
<td><p><a href="https://github.com/remotelearner/moodle-mod_questionnaire/tree/MOODLE_24_STABLE" class="uri">https://github.com/remotelearner/moodle-mod_questionnaire/tree/MOODLE_24_STABLE</a><br />
[SHA c13cb81d5f831c394de3ba5852d9a60d5e66d2d3]<br />
</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Scheduler</p></td>
<td><p>2011103002</p></td>
<td><p>Module<br />
mod/scheduler <br />
</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_scheduler" class="uri">https://moodle.org/plugins/view.php?plugin=mod_scheduler</a></p></td>
<td><p><a href="https://moodle.org/plugins/download.php/1585/mod_scheduler_moodle24_2012102800.zip" class="uri">https://moodle.org/plugins/download.php/1585/mod_scheduler_moodle24_2012102800.zip</a></p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>TurnItIn Tool</p></td>
<td><p>2012120402</p></td>
<td><p>Module<br />
 mod/turnitintool<br />
</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p><strong>2.3</strong></p></td>
<td><p>Official</p></td>
<td><p><a href="http://docs.moodle.org/23/en/Plagiarism_Prevention_Turnitin" class="uri">http://docs.moodle.org/23/en/Plagiarism_Prevention_Turnitin</a></p></td>
<td><p>Moodle-Dev v227</p></td>
<td><p>Awaiting next release</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Slideshow</p></td>
<td><p>2011101100<br />
<br />
</p></td>
<td><p>Module<br />
mod/slideshow</p></td>
<td><p>Yes</p></td>
<td><p><strong>2.0</strong></p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/mod/forum/discuss.php?d=38935</p></td>
<td><p>[https://github.com/noparadise/moodle-mod_slideshow<br />
] [SHA e56a76a5e2096a84f9d89f6b2f68c20e49c886c8]<br />
</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p> Hidden Course<br />
</p></td>
<td><p>2012020600</p></td>
<td><p>Block<br />
blocks/hidden_course</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p><strong>2.0</strong></p></td>
<td><p>In-house<br />
(?)</p></td>
<td><p> </p></td>
<td><p>Moodle-Dev v227</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Course Menu</p></td>
<td><p>2.0.1<br />
(2011120501)</p></td>
<td><p>Block<br />
blocks/course_menu</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p><strong>2.3</strong></p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=block_course_menu" class="uri">https://moodle.org/plugins/view.php?plugin=block_course_menu</a><br />
</p></td>
<td><p><a href="https://github.com/netsapiensis/moodle-block_course_menu/archive/MOODLE_23_STABLE.zip" class="uri">https://github.com/netsapiensis/moodle-block_course_menu/archive/MOODLE_23_STABLE.zip</a> (sha aae6b8813a80c59111bd8428e3ab930d2dac65ce)</p></td>
<td><p>GITHUB:<br />
[https://github.com/netsapiensis/moodle-block_course_menu/tree/MOODLE_23_STABLE <br />
]<br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Echo360 Configuration<br />
</p></td>
<td><p>2011062102</p></td>
<td><p>Block</p></td>
<td><p>No</p></td>
<td><p>?</p></td>
<td><p>Unofficial</p></td>
<td><p><a href="https://github.com/ULCC/moodle-block_echo360_configuration" class="uri">https://github.com/ULCC/moodle-block_echo360_configuration</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>-</p></td>
</tr>
<tr class="odd">
<td><p>Echo360<br />
Echocenter</p></td>
<td><p>2011062101</p></td>
<td><p>Block</p></td>
<td><p>No</p></td>
<td><p>?</p></td>
<td><p>Unofficial</p></td>
<td><p><a href="https://github.com/ULCC/moodle-block_echo360_echocenter" class="uri">https://github.com/ULCC/moodle-block_echo360_echocenter</a><br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>Library Resources<br />
</p></td>
<td><p>2011100101</p></td>
<td><p>Block<br />
blocks/library_resources</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>In-house<br />
</p></td>
<td><p> </p></td>
<td><p>Moodle-dev v227</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Library Search<br />
</p></td>
<td><p>2012013000</p></td>
<td><p>Block<br />
blocks/library_search</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4 <br />
</p></td>
<td><p>In-house<br />
</p></td>
<td><p> </p></td>
<td><p>Moodle-dev v227<br />
</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Quickmail<br />
</p></td>
<td><p>2012061112</p></td>
<td><p>Block<br />
blocks/quickmail</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.4</p></td>
<td><p>Unofficial</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=block_quickmail" class="uri">https://moodle.org/plugins/view.php?plugin=block_quickmail</a><br />
</p></td>
<td><p><a href="https://github.com/lsuits/quickmail/tree/2.4_DEV" class="uri">https://github.com/lsuits/quickmail/tree/2.4_DEV</a><br />
[SHA 3138ac7bcc23924a8f261ab5fea081c20b8c8a52] <br />
<a href="https://github.com/lsuits/quickmail/archive/2.4_DEV.zip&amp;nbsp">https://github.com/lsuits/quickmail/archive/2.4_DEV.zip</a></p></td>
<td><p>This is a development version for 2.4.</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Jmol</p></td>
<td><p>?</p></td>
<td><p>Filter<br />
filter/jmol</p></td>
<td><p><strong>Yes</strong></p></td>
<td><p>2.0</p></td>
<td><p>Unofficial</p></td>
<td><p>[http://docs.moodle.org/24/en/Jmol_filter</p></td>
<td><p><a href="https://github.com/geoffrowland/moodle-filter_jmol" class="uri">https://github.com/geoffrowland/moodle-filter_jmol</a><br />
[SHA: 048492b89a6b14a054148ba1e08a11a5b91fce08]<br />
[https://github.com/geoffrowland/moodle-filter_jmol/archive/master.zip<br />
]</p></td>
<td><p> </p></td>
<td><p>Pass<br />
</p></td>
</tr>
<tr class="even">
<td><p>Common Timetable<br />
</p></td>
<td><p>2012020300</p></td>
<td><p>Block<br />
blocks/timetable</p></td>
<td><p>Yes</p></td>
<td><p>2.4 <br />
</p></td>
<td><p>In-house<br />
</p></td>
<td><p> </p></td>
<td><p>Moodle-dev v227<br />
</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Tabs format<br />
(one topic)</p></td>
<td><p>2012021301</p></td>
<td><p>Course Format<br />
course/format/onetopic</p></td>
<td><p>Yes</p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=format_onetopic" class="uri">https://moodle.org/plugins/view.php?plugin=format_onetopic</a></p></td>
<td><p><a href="https://moodle.org/plugins/download.php/1742/format_onetopic_moodle24_2012112601.zip" class="uri">https://moodle.org/plugins/download.php/1742/format_onetopic_moodle24_2012112601.zip</a></p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Hotpot<br />
qformat_hotpot<br />
</p></td>
<td><p>?</p></td>
<td><p>Question Format<br />
question/format/hotpot</p></td>
<td><p>Yes</p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p>[https://moodle.org/plugins/view.php?plugin=qformat_hotpot<br />
]</p></td>
<td><p>[https://moodle.org/plugins/download.php/2238/qformat_hotpot_moodle24_2010112413.zip</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Question type -<br />
Select missing words</p></td>
<td><p>2011020100<br />
</p></td>
<td><p>Question type<br />
question/type/gapselect</p></td>
<td><p>Yes</p></td>
<td><p>2.4</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qtype_gapselect" class="uri">https://moodle.org/plugins/view.php?plugin=qtype_gapselect</a><br />
<br />
</p></td>
<td><p>[https://moodle.org/plugins/download.php/2361/qtype_gapselect_moodle24_2013031400.zip<br />
]</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Question type -<br />
Drag and drop into text<br />
</p></td>
<td><p> </p></td>
<td><p>Question type<br />
question/type/ddwtos<br />
</p></td>
<td><p>Yes</p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qtype_ddwtos" class="uri">https://moodle.org/plugins/view.php?plugin=qtype_ddwtos</a><br />
<br />
</p></td>
<td><p>[https://moodle.org/plugins/download.php/2362/qtype_ddwtos_moodle24_2013031400.zip<br />
]</p></td>
<td><p>Prerequisite: qtype_gapselect<br />
</p></td>
<td><p>Pass<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Question type -<br />
Algebra</p></td>
<td><p>2012061701<br />
1.0 <br />
</p></td>
<td><p>Question type <br />
question/type/algebra<br />
</p></td>
<td><p>Yes</p></td>
<td><p><strong>2.0</strong></p></td>
<td><p>Unofficial</p></td>
<td><p><a href="https://tracker.moodle.org/browse/CONTRIB-512" class="uri">https://tracker.moodle.org/browse/CONTRIB-512</a><br />
<a href="http://moodle.org/mod/data/view.php?d=13&amp;rid=1725" class="uri">http://moodle.org/mod/data/view.php?d=13&amp;rid=1725</a></p></td>
<td><p><a href="https://github.com/jmvedrine/moodle-qtype_algebra" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra</a> (master branch hash 345d68a51582fab0e47e176ef024aa46ea913ca0)<br />
<a href="https://github.com/jmvedrine/moodle-qtype_algebra/archive/master.zip" class="uri">https://github.com/jmvedrine/moodle-qtype_algebra/archive/master.zip</a><br />
(Official OLD): <a href="http://download.moodle.org/download.php/plugins/question/type/algebra.zip" class="uri">http://download.moodle.org/download.php/plugins/question/type/algebra.zip</a></p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Question type -<br />
Drag and drop markers<br />
</p></td>
<td><p>2012081600<br />
1.1 for M2.2</p></td>
<td><p>Question type<br />
question/type/ddmarker<br />
</p></td>
<td><p>Yes</p></td>
<td><p><strong>2.4</strong></p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qtype_ddmarker" class="uri">https://moodle.org/plugins/view.php?plugin=qtype_ddmarker</a></p></td>
<td><p>[https://moodle.org/plugins/download.php/2367/qtype_ddmarker_moodle24_2013031400.zip<br />
]</p></td>
<td><p>Prerequisite qtype_ddimageortext (2011020100)</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Question type -<br />
Drag and drop onto image<br />
</p></td>
<td><p>2012081600<br />
ddimageortext<br />
</p></td>
<td><p>Question type<br />
question/type/ddimageortext<br />
</p></td>
<td><p>Yes</p></td>
<td><p>2.4</p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=qtype_ddimageortext" class="uri">https://moodle.org/plugins/view.php?plugin=qtype_ddimageortext</a><br />
<br />
</p></td>
<td><p><a href="https://moodle.org/plugins/download.php/2366/qtype_ddimageortext_moodle24_2013031400.zip" class="uri">https://moodle.org/plugins/download.php/2366/qtype_ddimageortext_moodle24_2013031400.zip</a></p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Question type -<br />
Regular expression short answer<br />
</p></td>
<td><p>2011102001</p></td>
<td><p>Question type<br />
question/type/regexp<br />
</p></td>
<td><p>Yes</p></td>
<td><p><strong>2.3</strong></p></td>
<td><p>Official</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversion.php?id=1597" class="uri">https://moodle.org/plugins/pluginversion.php?id=1597</a><br />
<br />
</p></td>
<td><p><a href="https://moodle.org/plugins/download.php/1597/qtype_regexp_moodle23_2012102900.zip" class="uri">https://moodle.org/plugins/download.php/1597/qtype_regexp_moodle23_2012102900.zip</a><br />
<br />
Additional prerequisites:<br />
<a href="https://github.com/rezeau/moodle-qbehaviour_regexpadaptivewithhelp/tree/MOODLE_24_STABLE" class="uri">https://github.com/rezeau/moodle-qbehaviour_regexpadaptivewithhelp/tree/MOODLE_24_STABLE</a> (hash 7a770a5a550af53c8d2c5d523f5dd3970ae3553d)<br />
<a href="https://github.com/rezeau/moodle-qbehaviour_regexpadaptivewithhelpnopenalty/tree/MOODLE_23_STABL" class="uri">https://github.com/rezeau/moodle-qbehaviour_regexpadaptivewithhelpnopenalty/tree/MOODLE_23_STABL</a>E (hash 2d281b6146a2056c93b4cce946389347816886c3)</p></td>
<td><p>Prerequisite:<br />
qbehaviour_regexpadaptivewithhelp (2012022600)<br />
qbehaviour_regexpadaptivewithhelpnopenalty (2012022600)<br />
 <br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Local mass_enroll module</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><strong>2.3</strong></p></td>
<td><p> </p></td>
<td><p><a href="https://github.com/patrickpollet/moodle_local_mass_enroll/tree/moodle_23" class="uri">https://github.com/patrickpollet/moodle_local_mass_enroll/tree/moodle_23</a> (sha f960962b69cde78795379c554ecaa6bc6b7bdeac)<br />
</p></td>
<td><p>[https://github.com/patrickpollet/moodle_local_mass_enroll/archive/moodle_23.zip<br />
]</p></td>
<td><p> </p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Local mass_enroll block<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><strong>2.3</strong></p></td>
<td><p> </p></td>
<td><p><a href="https://github.com/patrickpollet/moodle_local_mass_enroll/tree/moodle_23" class="uri">https://github.com/patrickpollet/moodle_local_mass_enroll/tree/moodle_23</a> (sha f960962b69cde78795379c554ecaa6bc6b7bdeac)<br />
</p></td>
<td><p>[https://github.com/patrickpollet/moodle_local_mass_enroll/archive/moodle_23.zip<br />
]</p></td>
<td><p>Additional settings need to put in config.php<br />
$CFG-&gt;allow_mass_enroll_feature=1;<br />
</p></td>
<td><p>Pass</p></td>
</tr>
</tbody>
</table>

## Upgrade Issues:

- Incompatibale mod\_book: 

          <https://tracker.moodle.org/browse/MDL-36506>

[  Solution:](https://moodle.org/mod/forum/discuss.php?d=215626)

  Add the following code shown in BOLD:

to mod/book/db/upgradelib.php - function mod\_book\_migrate\_all\_areas() around line 117 just after$cm = get\_coursemodule\_from\_instance('book', $book-&gt;id);
if (!$cm-&gt;id) {
continue;
}

If someone else find this issue, this might help you..

You could also log those broken book id-s by doing the upgrade with developer messages switched on:if (!$cm-&gt;id) {
print\_r($book-&gt;id);
continue;
}
OR alternately: REMOVE book id **5625** from DB mdl\_book and mdl\_book\_tables as printed out by the code above.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle 2.4 upgrade plan v1.docx](attachments/26518098/33489010.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

