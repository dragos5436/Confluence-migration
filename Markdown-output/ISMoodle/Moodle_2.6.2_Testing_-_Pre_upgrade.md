# Moodle 2.6.2 Testing - Pre upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v262.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Issue</p></th>
<th><p>Details</p></th>
<th><p>Who?<br />
</p></th>
<th><p>Browser?<br />
IE/FF/Ch<br />
(incl. v.)<br />
</p></th>
<th><p>Done?<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th><p>Outcome/Decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Essential Testing items, Pre and post upgrade</strong><br />
</p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a><br />
</p></td>
<td><p> </p></td>
<td><p>Domi</p></td>
<td><p>IE 11/ FF 29.0.1/ Ch 34.0.1847.131</p></td>
<td><p>[ISLTSS:TII001T] Create New Turnitin Assignment <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ISLTSS:TII002T] Check existing <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  - Not IE11<br />
[ISLTSS:TII003T] New functionality - N/A</p></td>
<td><p>With IE11 I could not open the Turnitin document viewer due to a 'certificate security' error. I believe this is related to it being on UAT and so see no reason why this should stop the upgrade. Noting it here so we can re-test in IE post upgrade. <br />
<br />
The was no new functionality and this will become relevant for testing with the Turntiin v2 upgrade.</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a><br />
</p></td>
<td><p> </p></td>
<td><p>Domi</p></td>
<td><p>FF 29.0.1</p></td>
<td><p>[QIZ001TS] : Testing Quiz <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ002TS] : Testing Quiz Timer <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  <br />
[QIZ003S] : Testing Quiz - repeat? <br />
[QIZ004S] : Testing Quiz (Each attempt builds on the last) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ005S] : Testing Quiz (Grading Method) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ006S]: Testing Quiz (Adaptive Mode and Apply Penalties) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ007TS]: Testing Quiz (Decimal Points) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ008TS]: Testing Quiz (Student's review - Immediately after the attempt) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ090TS]: Testing Quiz (Student's review - Later, while the quiz is still open) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ010TS]: Testing Quiz (Student's review - After the quiz is closed) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ011TS]: Testing Quiz (Browser security - JavaScript pop-up window) - Not needed <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
[QIZ012TS]: Testing Quiz (Require password) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Due to new collapsed menus in settings we should consider having at least 1 option available for each section. Otherwise you expand the menu only to have to click 'Show more...' to actually get any options.</p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a><br />
</p></td>
<td><p> </p></td>
<td><p>Domi</p></td>
<td><p>IE 11/ FF 29.0.1/ Ch 34.0.1847.131<br />
</p></td>
<td><p>[ASS001S]  Submit a Moodle Assignment <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS002TS] View and grade the assignment <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS003S] Submit a Moodle Assignment (online text) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS004T] View and grade an online text assginment <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>It is a bit confusing that the message to say you have saved a grade change comes up in red, a colour usually used to indicate a problem. But I'm not sure if it is worth editing this.</p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a><br />
</p></td>
<td><p> </p></td>
<td><p>ZW</p></td>
<td><p>FF29.0.1<br />
</p></td>
<td><p>[FOR001TS] : Testing Forum Type (Single Simple Discussion)<br />
[FOR002TS] : Testing Forum Type (Each person posts one discussion)<br />
[FOR003TS] : Testing Forum Type (Standard forum for general use)<br />
[FOR006TS] : Testing Forum Subscription<br />
[FOR007TS] : Testing Forum Subscription (Auto subscription)<br />
[FOR008TS] : Testing Forum Tracking<br />
[FOR009TS] : Testing Forum Ratings<br />
[FOR011TS] : Testing Forum Visibility</p></td>
<td><p><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
FOR008TS - Tracking dropdown has Optional or Off, cannot choose On.<br />
FOR009TS - Tutor can add and see ratings, student can only see rating for their own posts.<br />
FOR011TS - Hides form as required, but 'Sorry, this activity is currently hidden' message is huge &amp; grey.<br />
</p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test</p></td>
<td><p>MB</p></td>
<td><p>FF29</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Warning on backup and restore. Probably due to mismatch between data and database version.<br />
Hopefully OK when full data folder is in place.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:<br />
</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search <br />
Non-standard plugins   </li>
<li>blocks/course_menu</li>
<li>blocks/quickmail</li>
<li>blocks/bulk enrolment</li>
</ul></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p>FF29</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>See Non core plugins table under<br />
[https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+2.6+-+Upgrade+Tasks<br />
]<br />
<br />
</p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter)  - still relevant?</p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p>FF29</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p>FF29</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Works fine in Chrome. Doesnt work in FF29, but then neither does the JMol on LIVE Moodle - probably my browser.<br />
</p></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Second priority pre-upgrade test items</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>UCL in house fixes, hacks and Improvements - all historic since 2.4.7 </p></td>
<td><p>See trac list<br />
</p></td>
<td><p>MB</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>There have been no fixes since 2.4.7<br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>Non core plugins</strong><br />
</p>
<ul>
<li>Questionnaire - not core</li>
<li>Scheduler - not core</li>
<li>Certificate - not core</li>
</ul></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF29<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>See table in<br />
[https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+2.6+-+Upgrade+Tasks<br />
]<br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>Core plugins</strong><br />
</p></td>
<td><p>For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p>FF29, IE9, Chrome35</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p>ZW</p></td>
<td><p>FF29.0.1</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK - tested Allow Update, Limit number of responses, Time limit and Result views.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>FF29.01&amp;<br />
Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Created select, image, file fields and created basic list and single view templates<br />
 added text and image and sound file. Set view restricted until one contribution made and tested as student - all  worked as expected.</p></td>
</tr>
<tr class="even">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Tested on own test course when updating MRC documentation - functionality as expected although the interface is more confusing than previous version being split between blocks.<br />
Tested Chapter/subchapter creation and import of HTML files.</p></td>
</tr>
<tr class="odd">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Uploaded zip - unzipped- deleted original - preference set to display expanded tree by default - all worked fine.</p></td>
</tr>
<tr class="even">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p>RD<br />
</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td><p>MJ</p></td>
<td><p>Chrome latest</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Works as expected - existing and new.</p></td>
</tr>
<tr class="even">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p>ZW</p></td>
<td><p>FF29.0.1  &amp; IE11.0.9600.17107<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Adding a new Page from FF and IE works<br />
- but in IE it is not possible to convert text to url link.  Same on Page settings and Label setting, but URL resource is ok.<br />
</p></td>
</tr>
<tr class="even">
<td><p>Scorm</p></td>
<td><p>Borrowed a scorm package from ELEC1003<br />
</p></td>
<td><p>RD</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Uploaded zip - seemed to be OK to view - no other functionality tested</p></td>
</tr>
<tr class="odd">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>The surveys actually look quite useful in, for instance, gleaning the learning attitudes of a cohort of students (and how they might change) but the questions (non-editable) are aimed a professional distance learner - functionality-wise everything is OK</p></td>
</tr>
<tr class="even">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p>FF29, IE9, Chrome35</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>Chrome35.0.1916.114</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>13/6/14:</p>
<p><strong>Good stuff:</strong></p>
<ul>
<li>Tested badges stored in Mozilla Backpack - seems to work fine.</li>
<li>Liking the Latest News RSS feed at top level and individual course level :)</li>
<li>Prezi file displays ok in Psych Behaviour change technique course</li>
</ul>
<p><strong>Stuff that needs checked:</strong></p>
<ul>
<li>Page not found (under 'Staff help' &gt; 'FAQs')</li>
<li>Links not active under 'Services' menu</li>
<li>In some courses (e.g. COMP1008) the My Courses menu disappears but in other courses it is displayed.</li>
<li>CPD and Short Courses toolkit:
<ul>
<li>Image not copied over on home page</li>
<li>Content in this course is out of date too. Will this be updated during the actual migration?</li>
<li>Book menu on RHS doesn't look v. nice  - there's an extra line break after each link. Also shouldn't the TOC be on the LHS?</li>
</ul></li>
</ul>
<p><strong>Personal opinion:</strong></p>
<ul>
<li>I find the woman in the PPD block quite annoying after seeing her several times :-p</li>
</ul>
<p>Server has slowed to unusable level so stopping for now...</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by cceavda at Jun 13, 2014 11:25
</div></td>
</tr>
</tbody>
</table>


