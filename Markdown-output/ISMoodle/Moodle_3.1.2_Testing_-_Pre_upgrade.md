# Moodle 3.1.2 Testing - Pre upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v312.moodle-dev.ucl.ac.uk> (or even: <https://moodle-pp.ucl.ac.uk>  !!! like it says in the calendar invite)-    you can use the 'Moodle Testing' course.

 

<https://docs.moodle.org/dev/Moodle_3.1.2_release_notes>

 

Testing complete by end 1st Nov

 

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
<td><p><strong><br />
</strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a></p></td>
<td><p>Tested on PP</p></td>
<td><p><strong> FH</strong></p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><p>File upload assignment created - Moodle Assignment 3.1 testing FILE 31_10_16 - <a href="https://moodle-pp.ucl.ac.uk/mod/assign/view.php?id=2416255" class="uri">https://moodle-pp.ucl.ac.uk/mod/assign/view.php?id=2416255</a><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Logged in as student (Eirini Adam) uploaded file - 'nutritionpublichealth_clip.docx' <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Logged in as tutor (Training account 8) gave mark of 77/100 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> uploaded feedback file <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Could not markup document as PDF generated appeared blank <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> but was able to markup PDF in dev environment: <a href="https://v312.moodle-dev.ucl.ac.uk/mod/assign/view.php?id=2571404&amp;action=grader" class="uri">https://v312.moodle-dev.ucl.ac.uk/mod/assign/view.php?id=2571404&amp;action=grader</a> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Logged into assignment as student again to view grade and feedback files <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>Logged into gradebook as student again to view grade</p>
<p><br />
<br />
</p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:</p>
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
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p>not working in label at: <a href="https://v312.moodle-dev.ucl.ac.uk/course/view.php?id=15138&amp;section=3" class="uri">https://v312.moodle-dev.ucl.ac.uk/course/view.php?id=15138&amp;section=3</a> just gives latex markup- \frac{-b\pm\sqrt{b^2-4ac}}{2a}</p>
<p>OK on <a href="https://moodle-pp.ucl.ac.uk/course/view.php?id=15138&amp;section=3" class="uri">https://moodle-pp.ucl.ac.uk/course/view.php?id=15138&amp;section=3</a> though where I should have been looking in the first place !!!!</p></td>
<td><p>RD</p></td>
<td><p>Chrome</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
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
<td><strong>Upgrade specific items</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>PDF converter for assignments</td>
<td>Documentation needs preparing</td>
<td>RD</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Recycle bin</td>
<td><p>Tested on PP. Documentation needs preparing.</p></td>
<td><p><strong>DS</strong></p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>Updated plugins</p>
<p>mod_choicegroup</p>
<p>mod_helixmedia</p>
<p>mod_scheduler</p>
<p>mod_questionnaire</p>
<p>qbehaviour_regexpadaptivewithhelp</p>
<p>qbehaviour_regexpadaptivewithhelpnopenalty</p>
<p>mod_hsuforum</p>
<p>mod_turnitintooltwo</p>
<p>format_onetopic</p>
<p>coursebank</p></td>
<td><p> </p>
<p> </p>
<p>N/A</p>
<p> </p>
<p> </p>
<p> </p>
<p> </p>
<p> </p>
<p>TII - See above</p>
<p>Tab format</p>
<p>Not live</p></td>
<td>ZW</td>
<td><p>Edge 38.14393.0.0</p></td>
<td><p> </p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>N/A</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>-</p>
<p>-</p>
<p>-</p>
<p>-</p>
<p>TII</p>
<p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p>N/A</p></td>
<td><p> </p>
<p>OK</p>
<p>N/A</p>
<p>OK</p>
<p>-</p>
<p>-</p>
<p>-</p>
<p>-</p>
<p>Above</p>
<p>OK</p>
<p>N/A</p></td>
</tr>
<tr class="odd">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><p><strong>Second priority pre-upgrade test items</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>UCL in house fixes, hacks and Improvements</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><strong>Non core plugins</strong></p>
<ul>
<li>Questionnaire - not core</li>
<li>Scheduler - not core</li>
<li>Certificate - not core</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Core plugins</strong></p></td>
<td><p>For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Scorm</p></td>
<td><p>Borrow a scorm zip from a live course</p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


