# Moodle 1.9.17 testing

Please log out of all other UCL Moodle's before you start testing!!

The Moodle 1.9.17 test course is available here: <http://v1917.moodle-dev.ucl.ac.uk/course/view.php?id=15138>

Any CONFIRMED bugs at UCL should go in TRAC: <https://svn.ucl.ac.uk/projects/isd/moodle/report/1>

Check that they don't already exist in previous versions make a note of this but it may not be necessary to fix this before the upgrade.

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th><p>issue</p></th>
<th><p>Done? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></th>
<th><p>Testing notes</p></th>
<th><p>Details</p></th>
<th><p>who?<br />
</p></th>
<th><p>Browser?<br />
IE/FF/Ch <br />
(incl. v.)<br />
</p></th>
<th><p>outcome/decision<br />
</p></th>
<th><p><br />
</p></th>
<th><p> </p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h5 id="Moodle1.9.17testing-EssentialTesting">Essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><br />
</p>
<h3 id="Moodle1.9.17testing-Securityissues">Security issues</h3>
<ul>
<li><p><a href="http://moodle.org/mod/forum/discuss.php?d=198621">MSA-12-0013</a> - Database activity export permission issue</p>
<h3 id="Moodle1.9.17testing-Fixesandimprovements">Fixes and improvements</h3></li>
<li><a href="http://tracker.moodle.org/browse/MDL-31248">MDL-31248</a> Change to RC4 encryption is now backwards compatible - Note: all users will need to log in to set a new cookie after this update</li>
<li><a href="http://tracker.moodle.org/browse/MDL-31213">MDL-31213</a> Problem with new password form was fixed<br />
</li>
</ul></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />   <br />
<br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>db<br />
<br />
no idea how to test!?<br />
new usr OK</p></td>
<td><p><a href="http://docs.moodle.org/dev/Moodle_1.9.17_release_notes" class="uri">http://docs.moodle.org/dev/Moodle_1.9.17_release_notes</a><br />
<br />
Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p>Matt</p></td>
<td><p>Chrome 18<br />
</p></td>
<td><p>Not worried about the thing I can't test..<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Quizzes<br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>tested ECON1001 and Quizzes practice</p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p>Matt</p></td>
<td><p>FF 11<br />
</p></td>
<td><p>OK<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>New algebra question type </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>took sample questions in: <a href="https://v1917.moodle-dev.ucl.ac.uk/mod/quiz/view.php?id=665862" class="uri">https://v1917.moodle-dev.ucl.ac.uk/mod/quiz/view.php?id=665862</a> these seem to be working as expected. Created a new algebra question also working as expected</p></td>
<td><p>rod<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Turnitin plugin<br />
See below for instructions:<br />
<a href="https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing" class="uri">https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing</a></p></td>
<td><p><img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /><br />
<br />
</p></td>
<td><p>Jess - Happy to sign off Turnitin for 1.9.17 now!<br />
<br />
Got an error briefly saying the base URL was wrong when I tried to change the grade to be out of 3 instead of 100 for the part, but worked at 2nd attempt.<br />
Anon assignment result was not appearing in gradebook for some reason!! May have been caching as it works now!? see Anon assignment here: <a href="https://v1917.moodle-dev.ucl.ac.uk/grade/report/grader/index.php?id=15138" class="uri">https://v1917.moodle-dev.ucl.ac.uk/grade/report/grader/index.php?id=15138</a><br />
bulk downloading word and excel versions worked.Now PDF too. was orginally having trouble bulk downloading PDF version. It says preparing file for download, your download should begin shortly. but nothing happens for ages until it eventually times out. PDF eventually worked - perhaps turnitin UK was having issues?!<br />
Happy apart from the anonymous grade not showing!</p></td>
<td><p>- Steve can you please check the layout problem you experienced on your netbook is still fixed please!</p></td>
<td><p>matt<br />
</p></td>
<td><p> </p></td>
<td><p>currently unable to continue due to unlinking users not working <a href="https://svn.ucl.ac.uk/projects/isd/moodle/ticket/69">Trac #69</a><br />
Jess confirmed this is a bug. Needs fixing before we can complete testing - fixed by chris on 2/5/12</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Tex filters not turned originally but now fixed.<br />
</p></td>
<td><p>rod<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images) ok -   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>JMol working but Java asking for seperate (re)authentification to run the applet in  firefox - this doesn't happen in Opera.<br />
</p></td>
<td><p>rod</p></td>
<td><p>ff 5.0 and Opera 11.62 both on XP<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>manual backups &amp; restore<br />
Importing</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>ok</p></td>
<td><p> </p></td>
<td><p>matt</p></td>
<td><p>ff11</p></td>
<td><p>Works<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
* showing userid field in user lists (admin - browse list of users)</p>
<ul>
<li>calendar export - recent activity is hard coded to 90 days instead of 60 </li>
<li>course edit form - a new course should default to being hidden from students </li>
<li>Turnitin integration - check layout issues* *</li>
<li>essay grading in lesson module - page sorts by surname</li>
<li>flv module - when adding/editing</li>
<li>Kosovo added to list of countries </li>
<li>quiz question numbering wraps instead of sitting on 1 long line</li>
</ul></td>
<td><p><br />
<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>These are listed in Pete's test course.<br />
</p>
<ul>
<li>Page sorts by surname - check Case of the month (id=5407 - <a href="http://v1917.moodle-dev.ucl.ac.uk/course/view.php?id=15138" class="uri">http://v1917.moodle-dev.ucl.ac.uk/course/view.php?id=15138</a>)</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the 2 drop-downs for the 'UCL Media streaming' service </li>
<li>Quiz question numbering wraps instead of sitting on 1 long line -  (test with 50+ questions with 1 per page)<br />
</li>
</ul></td>
<td><p>matt<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
rod<br />
</p></td>
<td><p>FF11 and soem chrome<br />
<br />
<br />
<br />
<br />
<br />
<br />
on ff.5.5<br />
</p></td>
<td><p>All OK</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><h5 id="Moodle1.9.17testing-LessessentialTesting">Less essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>previously detected issues w UCL Moodle * ##Add any outstanding issues found in TRAC</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>None that I can see being important or addressed any time soon!</p></td>
<td><p>See if any outstanding issues have been resolved. See: <a href="https://svn.ucl.ac.uk/projects/isd/moodle/report/1" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/report/1</a></p></td>
<td><p>Matt</p></td>
<td><p>N/A</p></td>
<td><p> </p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Bespoke UCL plugins:<br />
</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search<br />
Non-standard plugins   </li>
<li>mod/book - the book plugin </li>
<li>mod/certificate</li>
<li>mod/flv - JW media player plugin</li>
<li>mod/questionnaire</li>
<li>mod/scheduler</li>
<li>mod/slideshow</li>
<li>blocks/course_menu</li>
<li>blocks_email_list - soon to be removed!!!</li>
</ul></td>
<td><p><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>Custom certificate for Eastman dental    - Eastman Dental Bites certificate  displaying &quot;Mrs Ruth Glover, DCP tutor&quot;  - keep this - it will be used by Karen Widdowson for research projects in 2011/12</p></td>
<td><p>Matt</p></td>
<td><p>FF11 and Chrome 18</p></td>
<td><p>email list will be gone soon</p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>forum search </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>mj</p></td>
<td><p>Chrome 18</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="even">
<td><p>All resources<br />
<br />
Popular activities:</p>
<ul>
<li>Assignments</li>
<li>Forums</li>
<li>Choice</li>
<li>Wiki <br />
 <br />
If there's time:<br />
</li>
<li>database</li>
<li>glossary</li>
<li>chat</li>
<li>lesson</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>May need to backup and restore files from live test course to be able test resources, as pp may no longer have any files</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Anything else that's been tested:<br />
<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
</tr>
</tbody>
</table>


