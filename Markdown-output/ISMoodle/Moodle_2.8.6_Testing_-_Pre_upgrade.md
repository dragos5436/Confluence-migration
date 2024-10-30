# Moodle 2.8.6 Testing - Pre upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v286.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

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
<th><p>Who?</p></th>
<th><p>Browser?<br />
IE/FF/Ch<br />
(incl. v.)</p></th>
<th><p>Done?<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th><p>Outcome/Decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Essential Testing items, Pre and post upgrade</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>gradebook scrolling <strong>-</strong> <a href="https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/9" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/9</a></p>
<p><strong>V1</strong><br />
ISLTSS:TII001T - MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ISLTSS:TII002T - MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ISLTSS:TII003T - MB - no new functionality</p>
<p><strong>V2</strong><br />
ISLTSS:TII001T - MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ISLTSS:TII002T - MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ISLTSS:TII003T - MB hard to test - no easy release notes to look at.</p>
<p>T&amp;C link box needs to be bigger. Flow is not clear - this may be a TII issue?</p>
<p> </p>
<p><strong>Turnitin tests on iPad:</strong></p>
<p>Tested creation and viewing of assigs - all OK. Upload hard to test because of lack of suitable files on the iPad.</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p>QIZ001TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ002TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ003S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ004S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ005S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ006S<br />
QIZ007TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ008TS <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> but see trac #5</p>
<p>QIZ090TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ010TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
QIZ011TS<br />
QIZ012TS<br />
QIZ012TS</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p> </p></td>
<td><p>ASS001S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ASS002TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> (also used PDF annotator)<br />
ASS003S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
ASS004TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p>..........................................</p>
<p>FOR001TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
FOR002TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>FOR003TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>FOR006TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
FOR007TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
FOR008TS <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Trac No #1<br />
FOR009TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
FOR011TS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test: Used: <a href="https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=30284" class="uri">https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=30284</a> around 38MB to restore - seemed to tak a long time (about 4-5 mins to get started) but maybe this was to do with resources available to this instance. Turnitin Assignmnents gave duplicate warnings as expected.</p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search  </li>
<li>blocks/course_visibility</li>
<li>blocks/portico_enrolments<br />
Non-standard plugins   </li>
<li>blocks/course_menu</li>
<li>blocks/quickmail</li>
<li>blocks/bulk enrolment</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>FF</p></td>
<td><p>.................................................<br />
blocks/library_resources <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Rod + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>blocks/common timetable <strong><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></strong> Martin + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/library_search  <strong><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></strong> Martin + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/course_visibility <strong><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></strong> Martin + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/portico_enrolments <strong><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></strong> Martin + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/course_menu <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Domi looking at this + iPad MB<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/quickmail  <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> Hard to test in UAT, block looks OK Martin<br />
blocks/bulk enrolment <strong><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></strong> Martin - hard to test on iPad</p>
<p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p><del>notrendered: <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Trac No #2</del></p>
<p>Fixed.</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> no longer requires java seems to use javascript now</p></td>
<td><p> </p></td>
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
<td><p>UCL in house fixes, hacks and Improvements</p></td>
<td><p>See separate 2.8 hacks page</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Non core plugins</strong></p>
<ul>
<li>Reading lits items</li>
<li>Attendance</li>
<li>Certificate</li>
<li>Group Choice</li>
<li>Campus pack</li>
<li>Blackboard collaborate</li>
<li>Hot pot</li>
<li>Hot question</li>
<li>Forum advanced</li>
<li>Questionnaire</li>
<li>Scheduler</li>
<li>Slideshow</li>
</ul></td>
<td><p> </p></td>
<td><p> </p>
<p>MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB</p></td>
<td><p> </p>
<p>FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF<br />
FF</p></td>
<td><p> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />   Campus pack not ready yet<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />    Hard to test without hotpot file<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Hard to test thoroughly, but looks OK<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Hard to test thoroughly, but looks OK<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><strong>Core plugins</strong></p></td>
<td><p>For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p>Normal chat window doesn't seem to function in Chrome:v 43.0.2357.81 m.</p>
<p>Working OK In firefox and Opera</p></td>
<td><p> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Trac #8</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
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
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Scorm</p></td>
<td><p>Borrow a scorm zip from a live course</p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


