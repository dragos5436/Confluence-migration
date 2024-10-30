# Moodle 2.2.5 Testing

Please log out of all other UCL Moodle's before you start testing!!

The Moodle 225 test course is available here: <https://v225.moodle-uat.ucl.ac.uk/course/view.php?id=15138>

Any CONFIRMED bugs at UCL should go in TRAC: <https://svn.ucl.ac.uk/projects/isd/moodle2/>

Check that they don't already exist in previous versions make a note of this but it may not be necessary to fix this before the upgrade.

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
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
IE/FF/Ch<br />
(incl. v.)<br />
</p></th>
<th><p>outcome/decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h5 id="Moodle2.2.5Testing-EssentialTesting">Essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><br />
Fixes and Improvements (from moodle.org)<br />
</p></td>
<td><p> </p></td>
<td><p>None relevant at : <a href="http://tracker.moodle.org/secure/ReleaseNote.jspa?atl_token=A6PK-W2VX-0DZO-RZAV%7Cc11711d9830b04f9ea1caf6cfb650edf49ab69bc%7Clout&amp;version=10951&amp;styleName=Html&amp;projectId=10011&amp;Create=Create">Moodle.org Release notes 2.2.5</a></p></td>
<td><p><a href="http://tracker.moodle.org/secure/ReleaseNote.jspa?atl_token=A6PK-W2VX-0DZO-RZAV%7Cc11711d9830b04f9ea1caf6cfb650edf49ab69bc%7Clout&amp;version=10951&amp;styleName=Html&amp;projectId=10011&amp;Create=Create">Moodle.org Release notes 2.2.5</a><br />
<br />
Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p>Fi/Jess</p></td>
<td><p>N/A</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p><a href="UCL_customisations_and_fixes">Fixes and Improvements</a> (inhouse)<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>These <a href="UCL_customisations_and_fixes">Trac tickets</a> have been applied to v225.moodle-uat.ucl.ac.uk<br />
</p></td>
<td><p>Fi/Jess</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><a href="Tests-Quiz">Quizzes</a><br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>QIZ011TS : tested in IE 9, GC 22.0.1229.94m, FF 16.0.1. Worked in all but FF allows cntrl+a, however as no other command are allowed (e.g. copy, cut or paste) this seems irrelevant. <br />
<br />
QIZ012TS: message text to say not available in location appears on left bottom of page. Slightly odd place for it, perhaps it could be adjusted to replace the 're-attempt' button or at the top of the page with the other notes (eg. if you need a password/ if there is a time restriction)</p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p>Domi/Jess<br />
QIZ005S<br />
</p></td>
<td><p>IE v 9 (tutor) FF v 16.0.1 (student)</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>New algebra question type </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Displays fine.</p></td>
<td><p><strong>Rod's notes from last upgrade to 1912:</strong> Imported an algebra question set from Chem160x - tested 3 questions basic algebra manipulations including log question - looked OK 'cept for lack of LaTex for correct display.<br />
<strong>Jess notes:</strong> Using the Differentation category in the question bank directly in Chem160x. Get an error: &quot;Image not found!&quot; where all LaTeX images are supposed to be displayed. Fixed by Chris. Same error as last time (mimetex.linux needs execute permissions).</p></td>
<td><p>Domi/Jess</p></td>
<td><p>FF V 16.0.1</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Regular expression question type</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Seems to be working - used example 1 from this page <a href="http://docs.moodle.org/20/en/Regular_Expression_Short-Answer_question_type" class="uri">http://docs.moodle.org/20/en/Regular_Expression_Short-Answer_question_type</a></p></td>
<td><p> </p></td>
<td><p>Domi/ Jess</p></td>
<td><p>FF V 16.0.1</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><a href="Tests-Turnitin">Turnitin</a><br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>No real problems. The red apple has been replaced with a blue pencil, but this still doesn't open in a new window so no relevance. Just checking new features.</p></td>
<td><p>- Steve can you please check the layout problem you experienced on your netbook is still fixed please!</p></td>
<td><p>Domi/Jess</p></td>
<td><p>IE v 9</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Working as expected<br />
</p></td>
<td><p>*Rod's notes from last upgrade to 1912: *not interpreted currently so all quizzes (and other pages employing maths markup will have errors)RD - PR fixed by changing TEX filter permissions ( as above)</p></td>
<td><p>Rod</p></td>
<td><p>FF16.0.1</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images) ok -   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>This is working OK but it's use is different in Moodle 2 making it more difficult to associate a file with a link - the jmol filter needs a file to work with so this now needs to be uploaded somewhere else (e.g a directory resource) before it can be linked to when creating a jmol link.<br />
see notes at: <a href="http://docs.moodle.org/22/en/Jmol_filter" class="uri">http://docs.moodle.org/22/en/Jmol_filter</a></p></td>
<td><p><br />
</p></td>
<td><p>Rod/Pascale</p></td>
<td><p>FF16.0.1</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>manual backups &amp; restore<br />
Importing</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Pascale/Fi</p></td>
<td><p>FF13.01<br />
GC 22.01</p></td>
<td><p>Backup/Restore- Pass<br />
Import- Pass</p></td>
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
<br />
<br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<br />
<br />
<br />
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
<br />
<br />
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
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
<br />
<br />
<br />
Need to check this with Steve<br />
<br />
Was not applied in UAT- Raised Ticket<br />
<br />
<br />
FLV Module not available in Moodle 2.2.5<br />
<br />
<br />
<br />
Quiz navigation block- no need to test<br />
<br />
<br />
</p></td>
<td><p>These are listed in Pete's test course.<br />
</p>
<ul>
<li>Page sorts by surname - check Case of the month (id=5407 - <a href="http://v1913.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544" class="uri">http://v1913.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544</a>)</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the 2 drop-downs for the 'UCL Media streaming' service </li>
<li>Quiz question numbering wraps instead of sitting on 1 long line -  (test with 50+ questions with 1 per page)<br />
</li>
</ul></td>
<td><p>Pascale/Fi/Jess</p></td>
<td><p>FF13.01 <br />
GC 22.01<br />
<br />
<br />
</p></td>
<td><ul>
<li><strong>Calendar</strong>- Pass</li>
<li><strong>Default Hidden</strong>- Pass</li>
<li><strong>Kosovo-</strong> Pass</li>
<li><strong>FLV</strong> not applicable</li>
<li><strong>Turnitin</strong>- Steve to check</li>
<li><strong>Grade Essays-</strong> Raised ticket</li>
</ul></td>
</tr>
<tr class="even">
<td><h5 id="Moodle2.2.5Testing-LessessentialTesting">Less essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>previously detected issues w UCL Moodle * ##Add any outstanding issues found in TRAC</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>See if any outstanding issues have been resolved. See: <a href="https://svn.ucl.ac.uk/projects/isd/moodle/report/1" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/report/1</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
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
<li>blocks_email_list</li>
</ul></td>
<td><p><br />
<br />
</p></td>
<td><p> </p></td>
<td><p>Custom certificate for Eastman dental    - Eastman Dental Bites certificate  displaying &quot;Mrs Ruth Glover, DCP tutor&quot;  - keep this - it will be used by Karen Widdowson for research projects in 2011/12</p></td>
<td><p>Pascale/Fi</p></td>
<td><p>FF12/ IE<br />
Blocks tested (except mod/flv - JW media player plugin and blocks_email_list: no longer around)</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>forum search </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Checked via Search Forums Block simple search and<br />
advanced search under this block<br />
</p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p>FF16.01</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Choices<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Tested according to script:<br />
[https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Choice<br />
]</p></td>
<td><p>All tested OK<br />
</p></td>
<td><p>Rod<br />
</p></td>
<td><p>FF16.01<br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>All resources<br />
<br />
Popular activities:</p>
<ul>
<li><a href="Tests_-_Assignment">Assignments</a></li>
<li><a href="Tests-Forum">Forums</a></li>
<li><a href="Tests-Choice">Choice</a></li>
<li><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-+Wiki">Wiki</a><br />
 <br />
If there's time:<br />
</li>
<li>database</li>
<li>glossary</li>
<li>chat</li>
<li>lesson</li>
</ul></td>
<td><p> </p></td>
<td><p>Assignments = fine <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>May need to backup and restore files from live test course to be able test resources, as pp may no longer have any files</p></td>
<td><p>Assign-Domi<br />
Forums-Zaman<br />
Choice-Rod<br />
Wiki-Pascale<br />
<br />
If there's time - there's not!</p></td>
<td><p>Forums:GC22.012&amp;IE9.0.10&amp;FF15.0.1<br />
<br />
Assignments FF v 16.0.1</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Anything else that's been tested:<br />
<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


