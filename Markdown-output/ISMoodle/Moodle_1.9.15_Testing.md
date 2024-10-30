# Moodle 1.9.15 Testing

The Moodle v1.9.15 Moodle Testing course is available here: <http://v1915.moodle-pp.ucl.ac.uk/course/view.php?id=15138>

Any CONFIRMED bugs at UCL should go in TRAC: <https://svn.ucl.ac.uk/projects/isd/moodle>

Check that they don't already exist in previous versions make a note of this but it may not be necessary to fix this before the upgrade.

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
<th><p>issue</p></th>
<th><p>Done? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></th>
<th><p>Testing notes</p></th>
<th><p>Details</p></th>
<th><p>who?<br />
</p></th>
<th><p>outcome/decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h5 id="Moodle1.9.15Testing-EssentialTesting">Essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><br />
Fixes and Improvements<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />  mnet is still enabled on PP (but it's disabled on UCL Moodle)</p></td>
<td><p><a href="http://docs.moodle.org/dev/Moodle_1.9.15_release_notes">Moodle.org Release notes 1.9.15</a> <br />
<br />
Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p>Matt</p></td>
<td><p>MDL-29991 - Moodle 1.9 servers still expect the &quot;confirmed&quot; field from MNet - Check why Mnet was still enabled for PP<br />
<br />
MDL-29529 - Fixed database error when assignments were sorted by status = tested &amp; ok<br />
MDL-16553 - Student can see response file for Advanced uploading assignment with no grade - OK</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes<br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p>Matt</p></td>
<td><p>Look OK!</p></td>
</tr>
<tr class="even">
<td><p>New algebra question type </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p><strong>Rod's notes from last upgrade to 1912:</strong> Imported an algebra question set from Chem160x - tested 3 questions basic algebra manipulations including log question - looked OK 'cept for lack of LaTex for correct display.<br />
<strong>Jess notes:</strong> Using the Differentation category in the question bank directly in Chem160x. Get an error: &quot;Image not found!&quot; where all LaTeX images are supposed to be displayed. Fixed by Chris. Same error as last time (mimetex.linux needs execute permissions).</p></td>
<td><p>Matt &amp; Rod</p></td>
<td><p>Was acting a little strangely with the LaTex renderer but then resolved. Not sure if it was just me so passing to Rod to confirm.</p></td>
</tr>
<tr class="odd">
<td><p>Turnitin plugin version 2011072901<br />
See below for instructions:<br />
<a href="https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing" class="uri">https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+Testing</a></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>- Steve can you please check the layout problem you experienced on your netbook is still fixed please!</p></td>
<td><p> </p></td>
<td><p>Font size too small fixed by applying missing patch at <a href="https://svn.ucl.ac.uk/projects/isd/moodle/changeset/17807" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/changeset/17807</a><br />
<br />
The bottom of the document icon in the submission inbox is cut off in IE9 Existing issue - ADD TO TRAK<br />
<br />
Grademark opens in the same window. It tends to do this on pp, but not on live for some reason?!? seems to have fixed itself<br />
<br />
In IE9 when you try to upload a file type that isn't allowed the tabs overlap and don't display properly. Existing issue - ADD TO TRAK<br />
<br />
</p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><br />
</p></td>
<td><p>*Rod's notes from last upgrade to 1912: *not interpreted currently so all quizzes (and other pages employing maths markup will have errors)RD - PR fixed by changing TEX filter permissions ( as above)</p></td>
<td><p>Jess<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images) ok -   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><br />
</p></td>
<td><p>*Rod's notes from last upgrade to 1912: *Link to jmol file was pointing at wrong server - fixed by editing the offending page.</p></td>
<td><p>Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>manual backups &amp; restore<br />
Importing</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Jess</p></td>
<td><p>Turnitin assignments still don't restore :(<br />
&quot;Assignment (Turnitin) : There was an error linking your Turnitin Class. You can have only one Turnitin Class associated with one Moodle Course, and no two Moodle courses may link to the same Turnitin Class.&quot;</p></td>
</tr>
<tr class="odd">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
* showing userid field in user lists (admin - browse list of users)</p>
<ul>
<li>calendar export - recent activity is hard coded to 90 days instead of 60 </li>
<li>course edit form - a new course should default to being hidden from students </li>
<li>Turnitin integration - check layout issues* *</li>
<li>essay grading in lesson module - page sorts by surname</li>
<li>flv module - UCL streaming service</li>
<li>Kosovo added to list of countries </li>
<li>quiz question numbering wraps instead of sitting on 1 long line</li>
</ul></td>
<td><p><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><br />
</p></td>
<td><p>These are listed in Pete's test course.<br />
</p>
<ul>
<li>Page sorts by surname - check Case of the month (id=5407 - <a href="http://v1915.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544" class="uri">http://v1915.moodle-pp.ucl.ac.uk/mod/lesson/report.php?id=269544</a>)</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the 2 drop-downs for the 'UCL Media streaming' service </li>
<li>Quiz question numbering wraps instead of sitting on 1 long line -  (test with 50+ questions with 1 per page)<br />
</li>
</ul></td>
<td><p>Jess</p></td>
<td></td>
</tr>
<tr class="even">
<td><h5 id="Moodle1.9.15Testing-LessessentialTesting">Less essential Testing</h5></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>previously detected issues w UCL Moodle * ##Add any outstanding issues found in TRAC</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>See if any outstanding issues have been resolved. See: <a href="https://svn.ucl.ac.uk/projects/isd/moodle/report/1" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle/report/1</a></p></td>
<td><p> </p></td>
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
<li>blocks_email_list</li>
</ul></td>
<td><p><br />
<br />
</p></td>
<td><p> </p></td>
<td><p>Custom certificate for Eastman dental    - Eastman Dental Bites certificate  displaying &quot;Mrs Ruth Glover, DCP tutor&quot;  - keep this - it will be used by Karen Widdowson for research projects in 2011/12</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>forum search </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
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
</tr>
</tbody>
</table>


