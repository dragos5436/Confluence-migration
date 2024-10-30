# Moodle 2.8.6 Testing - Post upgrade

 

 

Please log out of all other UCL Moodle's before you start testing!!

Test on live Moodle - make sure you are not on wireless.  Use the 'Moodle Testing' course.

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
IE/FF/Ch/Saf<br />
(incl. v.)</p></th>
<th><p>Done?<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th><p>Outcome/Decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Essential Testing items<br />
</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a></p></td>
<td><div class="toc-macro rbtoc1436955852377">
V1<br />

<ul>
<li>[ISLTSS:TII001T] Create New Turnitin Assignment</li>
<li>[ISLTSS:TII002T] Check existing</li>
<li>[ISLTSS:TII003T] New functionality</li>
</ul>
<p>V2</p>
<ul>
<li>[ISLTSS:TII001T] Create New Turnitin Assignment</li>
<li>[ISLTSS:TII002T] Check existing</li>
<li>[ISLTSS:TII003T] New functionality</li>
</ul>
</div></td>
<td><p>DS<br />
DS<br />
DS</p>
<p>DSDS<br />
DS</p></td>
<td><p>Tut - Chrome</p>
<p>Stu - FF</p></td>
<td><p>V1 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>V2 <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /></p>
<p> </p></td>
<td><p>V2 - Choosing scale grading causes error - assignment not created.<br />
V2 - inconsistently displaying students attempt (could be related to test accounts).</p>
<p> </p>
<p>V2 - It is possible these issues will be fixed by the subsequent V2 upgrade.  </p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td><div class="toc-macro rbtoc1436955919157">
<ul>
<li>[QIZ001TS] : Testing Quiz</li>
<li>[QIZ002TS] : Testing Quiz Timer</li>
<li>[QIZ003S] : Testing Quiz</li>
<li>[QIZ004S] : Testing Quiz (Each attempt builds on the last)</li>
<li>[QIZ005S] : Testing Quiz (Grading Method )</li>
<li>[QIZ006S]: Testing Quiz (Adaptive Mode and Apply Penalties)</li>
<li>[QIZ007TS]: Testing Quiz (Decimal Points)</li>
<li>[QIZ008TS]: Testing Quiz (Student’s review – Immediately after the attempt)</li>
<li>[QIZ090TS]: Testing Quiz (Student’s review – Later, while the quiz is still open)</li>
<li>[QIZ010TS]: Testing Quiz (Student’s review – After the quiz is closed)</li>
<li>[QIZ011TS]: Testing Quiz (Browser security - JavaScript pop-up window)</li>
<li>[QIZ012TS]: Testing Quiz (Require password)e</li>
</ul>
</div></td>
<td><p>RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD<br />
RD </p></td>
<td><p>Tut - Chrom<br />
Stud- FF </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><ul>
<li>[ASS001S]  Submit a Moodle Assignment</li>
<li>[ASS002TS] View and grade the assignment</li>
<li>[ASS003S] Submit a Moodle Assignment (online text)</li>
<li>[ASS004T] View and grade an online text assginment</li>
</ul></td>
<td><p>DS<br />
DS<br />
DS<br />
DS </p></td>
<td><p>Tut - Chome<br />
Stu - FF </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> (all)</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><div class="toc-macro rbtoc1436955993908">
<ul>
<li>[FOR001TS] : Testing Forum Type (Single Simple Discussion)</li>
<li>[FOR002TS] : Testing Forum Type (Each person posts one discussion)</li>
<li>[FOR003TS] : Testing Forum Type (Standard forum for general use)</li>
<li>[FOR006TS] : Testing Forum Subscription</li>
<li>[FOR007TS] : Testing Forum Subscription (Auto subscription)</li>
<li>[FOR008TS] : Testing Forum Tracking</li>
<li>[FOR009T] : Testing Forum Ratings</li>
<li>[FOR011TS] : Testing Forum Visibility</li>
</ul>
</div></td>
<td><p>MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB<br />
MB</p></td>
<td><p>FF+Chr<br />
FF+Chr<br />
FF+Chr<br />
FF+Chr<br />
FF+Chr<br />
FF+Chr<br />
FF+Chr<br />
FF+Chr</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test: Used: <a href="https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=30284">id=30284</a> around 38MB to restore</p></td>
<td><p>MB</p></td>
<td><p>FF</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
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
<td><p>FH</p>
<p>FH</p>
<p>FH</p>
<p>FH</p>
<p> </p>
<p>FH</p>
<p>FH</p></td>
<td><p>GC</p>
<p>GC</p>
<p>GC</p>
<p>GC</p>
<p> </p>
<p>GC</p>
<p>GC</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC+FF</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>FF</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>UCL in house fixes, hacks and Improvements</p></td>
<td><p>See separate 2.8 hacks page</p></td>
<td><p><strong> </strong>MB</p></td>
<td><p>FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Some trac tickets raised</p></td>
</tr>
<tr class="odd">
<td><p>Course formats<strong><br />
</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong>MB</p></td>
<td><p>FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Some trac tickets raised</p></td>
</tr>
<tr class="even">
<td><p><strong>Second priority</strong></p></td>
<td><p> </p></td>
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
<li>Respository</li>
</ul></td>
<td><p> </p></td>
<td><p> FH</p>
<p>FH</p>
<p>FH </p>
<p>FH</p>
<p>FH</p>
<p>N/A</p>
<p>FH</p>
<p>N/A</p>
<p>FH</p>
<p>FH</p>
<p>FH</p>
<p>FH</p>
<p>FH</p>
<p> </p>
<p>JN</p></td>
<td><p> GC</p>
<p>GC</p>
<p>GC </p>
<p>GC </p>
<p>GC</p>
<p> </p>
<p>GC </p>
<p> </p>
<p>GC</p>
<p>GC</p>
<p>GC</p>
<p>GC</p>
<p>GC</p>
<p> </p>
<p>FF</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </p>
<p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p>
<p>Reading list</p>
<p>attendance</p>
<p>certificate</p>
<p>group choice</p>
<p>Campus pack being installed 08/15</p>
<p>blackboard collaborate</p>
<p>hot pot not checked</p>
<p>hot question</p>
<p>forum advanced</p>
<p>Questionnaire</p>
<p>Scheduler</p>
<p>Students cannot add comments- no option to edit permissions..</p>
<p>repository</p></td>
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
<td><p>check Rods trac ticket</p></td>
<td><p>DS</p></td>
<td>GC + FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>Tut - Chrom<br />
Stu - FF </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
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
<td><p>DS</p></td>
<td><p>Chrom + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Scorm</p></td>
<td><p>Borrow a scorm zip from a live course</p></td>
<td><p>JN</p></td>
<td><p>FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>CG + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>CG + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>GC + FF</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


