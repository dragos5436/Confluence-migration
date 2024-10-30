# Moodle 2.4.3 Testing

Please log out of all other UCL Moodle's before you start testing!!

Use

<https://v243.moodle-uat.ucl.ac.uk/course/view.php?id=15138>

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
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>New Features<br />
</p></td>
<td><ul>
<li>DnD of file onto course page and into file picker       </li>
<li>DnD repositioning of blocks</li>
<li>Quick section add/remove</li>
<li>Quick title edit</li>
<li>Activity chooser</li>
<li>Single topic view in course format</li>
</ul></td>
<td><p>MB<br />
</p></td>
<td><p>FF20 IE10 Chr26</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a><br />
</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>Chr26</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a><br />
</p></td>
<td><p> </p></td>
<td><p>RD/MB<br />
</p></td>
<td><p>FF20/Chr26</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a><br />
</p></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF20</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>All tested except for email notifications<br />
</p></td>
</tr>
<tr class="even">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a><br />
</p></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF20</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test</p></td>
<td><p>FH</p></td>
<td><p>FF19/GC26</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Some funky new option when backing up which breaks restore.  raised trac ticket #27</p></td>
</tr>
<tr class="even">
<td><p>UCL in house fixes, hacks and Improvements - since last upgrade</p></td>
<td><p>Mark complete in <a href="UCL_customisations_and_fixes">UCL Fixes and Hacks</a> There were none since 2.2.9 upgrade</p></td>
<td><p>MB</p></td>
<td><p>N/A</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK - nothing to check<br />
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
<li>blocks_email_list </li>
<li>blocks/bulk enrolment</li>
</ul></td>
<td><p> </p></td>
<td><p>FH</p></td>
<td><p>FF19/GC26</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Blocks working fine, but Jo still investigating blocks 'jumping' on page<br />
MB raised ticket #28 about orphaned blocks<br />
</p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter)  - use new equation to generate a new image</p></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF20<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF20<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK</p></td>
</tr>
<tr class="even">
<td><p>Groups Scheduler</p></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p>FF20</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK. Groups mode works as per documentation. This does mean that students can schedule for their whole group.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>UCL in house fixes, hacks and Improvements - all historic since 2.x</p></td>
<td><p>Mark complete in <a href="UCL_customisations_and_fixes">UCL Fixes and Hacks</a></p></td>
<td><p>MB</p></td>
<td><p>FF20</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>a couple of very minor impact code changes not rolled forward - see F &amp; H page<br />
Ticket #38 raised<br />
</p></td>
</tr>
<tr class="even">
<td><p><strong>Second priority pre-upgrade test items</strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><ul>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Page</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Folder</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Questionnaire - not core</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Book</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Choice</li>
<li><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> Scorm - need to ask around for a scorm package to import</li>
<li>Wiki</li>
<li>Lesson</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Scheduler - not core</li>
<li><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Glossary</li>
<li>Database</li>
<li>Chat</li>
<li>Hot Potato</li>
<li>Hot Question</li>
<li>Certificate - not core</li>
<li>Workshop</li>
<li>Survey</li>
<li>Slideshow - not core</li>
</ul></td>
<td><p>For resources - may need to backup and restore files from live test course to be able test resources, as pp may no longer have any files</p></td>
<td><p>MB</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


