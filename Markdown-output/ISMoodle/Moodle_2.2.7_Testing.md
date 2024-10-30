# Moodle 2.2.7 Testing

Please log out of all other UCL Moodle's before you start testing!!

The Moodle 227 test course is available here: <https://v227.moodle-uat.ucl.ac.uk/course/view.php?id=15138>

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
<th><p>Done?<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></th>
<th><p>Testing notes</p></th>
<th><p>Details</p></th>
<th><p>who?<br />
</p></th>
<th><p>Browser?<br />
IE/FF/Ch<br />
(incl. v.)</p></th>
<th><p>outcome/decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h5 id="Moodle2.2.7Testing-EssentialTesting">Essential Testing</h5></td>
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
<td><p> </p></td>
<td><p><a href="http://docs.moodle.org/dev/Moodle_2.2.7_release_notes">Moodle.org Release notes 2.2.7</a><br />
<br />
Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p>Domi</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><a href="UCL_customisations_and_fixes">Fixes and Improvements</a> (inhouse)<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>These <a href="UCL_customisations_and_fixes">Trac tickets</a> have been applied to v227.moodle-uat.ucl.ac.uk<br />
</p></td>
<td><p>Domi</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><a href="Tests-Quiz">Quizzes</a><br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
- I followed all of the testing steps.</p></td>
<td><p>Domi</p></td>
<td><p>Chrome V. 24.0.1312.57 </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>New algebra question type </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p>Domi</p></td>
<td><p>Chrome V. 24.0.1312.57 </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Regular expression question type</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Notes from last testing: Seems to be working - used example 1 from this page <a href="http://docs.moodle.org/20/en/Regular_Expression_Short-Answer_question_type" class="uri">http://docs.moodle.org/20/en/Regular_Expression_Short-Answer_question_type</a></p></td>
<td><p>Domi</p></td>
<td><p>Chrome V. 24.0.1312.57 </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><a href="Tests-Turnitin">Turnitin</a><br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>please confirm whether tickets 341,346,315,170 are fixed.<br />
<br />
341, 346, 315 and 170 are fixed.</p></td>
<td><p>Domi</p></td>
<td><p>Chrome V. 24.0.1312.57 </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images) ok -   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Notes from previous testing: This is working OK but it's use is different in Moodle 2 making it more difficult to associate a file with a link - the jmol filter needs a file to work with so this now needs to be uploaded somewhere else (e.g a directory resource) before it can be linked to when creating a jmol link. <br />
see notes at: <a href="http://docs.moodle.org/22/en/Jmol_filter" class="uri">http://docs.moodle.org/22/en/Jmol_filter</a></p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>manual backups &amp; restore<br />
Importing</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Back up and restore with/without users from 'Moodle features demo' to 'Moodle 2.2.7'.<br />
Import all from 'Moodle Features Demo' to 'M 227 Import'</p></td>
<td><p>Fi</p></td>
<td><p>Chrome V.<br />
24.0.1312.57 m<br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
</p>
<ul>
<li>showing userid field in user lists (admin - browse list of users)</li>
<li>calendar export - recent activity is hard coded to 90 days instead of 60 </li>
<li>course edit form - a new course should default to being hidden from students </li>
<li>Turnitin integration - check layout issues* *</li>
<li>essay grading in lesson module - page sorts by surname (Moodle Pade id=5407)</li>
<li>Kosovo added to list of countries </li>
<li>quiz question numbering wraps instead of sitting on 1 long line</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Zaman: IE 9.0.8112.16421, FF 18.0.1, Chrome 24.0.1312.57<br />
<br />
- IE ok, FF ok, Chr ok.<br />
<br />
<br />
- IE 60 days, FF 60 days, Chr 60 days<br />
<br />
<br />
- IE ok, FF ok, Chr ok<br />
<br />
<br />
- IE ok, FF ok, Chr ok<br />
<br />
- IE ok, FF ok, Chr ok<br />
<br />
<br />
- IE ok, FF ok, Chr ok<br />
- IE ok, FF ok, Chr ok<br />
</p></td>
<td><p>Zaman</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><h5 id="Moodle2.2.7Testing-LessessentialTesting">Less essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Martin &amp; everyone</p></td>
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
<td></td>
</tr>
<tr class="even">
<td><p>Bespoke UCL plugins:<br />
<br />
<br />
</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search<br />
Non-standard plugins</li>
<li>blocks/course_menu</li>
<li>mod/book - the book plugin </li>
<li>mod/certificate</li>
<li>mod/flv - JW media player plugin</li>
<li>mod/questionnaire</li>
<li>mod/scheduler</li>
<li>mod/slideshow</li>
<li>blocks_email_list</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Custom certificate for Eastman dental    - Eastman Dental Bites certificate  displaying &quot;Mrs Ruth Glover, DCP tutor&quot;  - keep this - it will be used by Karen Widdowson for research projects in 2011/12<br />
<br />
Library - IE ok, FF ok, Chr ok.<br />
Timetable - IE ok, FF ok, Chr ok.<br />
Library Search - IE ok, FF ok, Chr ok.<br />
<br />
Course menu - IE ok, FF ok, Chr ok.<br />
Book - IE ok, FF ok, Chr ok.<br />
Certificate -<br />
flv -<br />
Questionnaire - IE ok, FF ok, Chr ok.<br />
Scheduler - IE ok, FF ok, Chr ok<br />
Slideshow -<br />
Email list -<br />
<br />
</p></td>
<td><p>Zaman</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>forum search </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>-  IE ok, FF ok, Chr ok.<br />
</p></td>
<td><p>Zaman</p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Choices<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>All tested OK<br />
</p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
<td></td>
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
<td><p> </p></td>
<td><p>May need to backup and restore files from live test course to be able test resources, as pp may no longer have any files</p></td>
<td><p><br />
<br />
</p></td>
<td><p> </p></td>
<td></td>
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
<td></td>
</tr>
</tbody>
</table>


