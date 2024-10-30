# Moodle 2.2.9 Testing

Please log out of all other UCL Moodle's before you start testing!!

<https://v229.moodle-uat.ucl.ac.uk/>

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
<th><p>Issue</p></th>
<th><p>Done?<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
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
<td><p>Fixes and Improvements - From Moodle<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Find new release note link from <a href="http://docs.moodle.org/dev/Releases" class="uri">http://docs.moodle.org/dev/Releases</a> and update URL<br />
<br />
No testing needed? Note down fixes and improvements and pass on relevant ones to staff in an email to Moodle designers - all the bugs in the new release have been thoroughly tested by moodle.org and don't need retesting<br />
</p></td>
<td><p>FH</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>Fixes and Improvements - In House<br />
<br />
<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>348<br />
356<br />
358  - Moodle version present but only first two orders eg 2.2   not 2.2.9<br />
371 - Block installed. Some tweak to functionality preferred, but Ok to go live.<br />
</p></td>
<td><p>MB<br />
MB<br />
MB<br />
MB/FH<br />
</p></td>
<td><p>FF+CHR+IE9/W7<br />
<br />
<br />
FF/W7<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Core Moodle functionality<br />
<a href="Tests">See Moodle Tests page</a><br />
<br />
Resources<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>May need to backup and restore files from live test course to be able test resources, as pp may no longer have any files<br />
</p></td>
<td><p>FH, ZW<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><ul>
<li>Quizzes</li>
</ul></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><a href="https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=15138" class="uri">https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=15138</a></p></td>
<td><p>ZW</p></td>
<td><p>ZW: Admin FF 19.0.2 Student IE 9.0.8112.16421</p></td>
<td><p>Passed</p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Assignments (not Turnitin)</li>
</ul></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><a href="https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=16344&amp;topic=23" class="uri">https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=16344&amp;topic=23</a></p></td>
<td><p>FH</p></td>
<td><p>Chrome 25</p></td>
<td><p>Passed</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Forums - including forum search</li>
</ul></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><a href="https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=16344" class="uri">https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=16344</a></p></td>
<td><p>FH</p></td>
<td><p>Chrome 25</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Choice</li>
</ul></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>tested on:  <a href="https://v229.moodle-uat.ucl.ac.uk/mod/choice/view.php(/">https://v229.moodle-uat.ucl.ac.uk/mod/choice/view.php</a> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>RD</p></td>
<td><p>Chrome v/ 25.0.1364.172 m</p></td>
<td><p>Passed<br />
Postupgrade-passed</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Wiki</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><a href="https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=15138" class="uri">https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=15138</a></p></td>
<td><p>ZW</p></td>
<td><p>FF 19.0.2</p></td>
<td><p>Passed</p></td>
</tr>
<tr class="odd">
<td><p>If there's time:</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><ul>
<li>Database</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Glossary</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><ul>
<li>Chat</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><ul>
<li>Lesson</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Turnitin<br />
See below for instructions:<br />
<a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Turnitin" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Turnitin</a></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Followed instructions for testing and all seems to work. Titles of assignments display, even in anonymous, can set up new and view old submission in boxes. Groups now work to filter submissions.<br />
</p></td>
<td><p>DS<br />
</p></td>
<td><p>FF v19.0.2</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Use  'Moodle Features Demo'    to test<br />
</p></td>
<td><p>FH<br />
</p></td>
<td><p>Chrome</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
<br />
See <a href="UCL_customisations_and_fixes">UCL Moodle Fixes and Hacks</a><br />
</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Various courses to test</p></td>
<td><p>ZW &amp; FH<br />
</p></td>
<td><p> </p></td>
<td><p>Pass (most)</p></td>
</tr>
<tr class="odd">
<td><p>More UCL Hacks:<br />
- New course default Not visible to students<br />
</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>ZW<br />
</p></td>
<td><p>FF 19.0.2<br />
</p></td>
<td><p>Pass<br />
</p></td>
</tr>
<tr class="even">
<td><p>- Quiz question block - numbering wrapped not all on one long line<br />
</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>ZW<br />
</p></td>
<td><p>FF 19.0.2<br />
</p></td>
<td><p>Pass<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:<br />
</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search<br />
Non-standard plugins   </li>
<li>mod/book - the book plugin </li>
<li>mod/certificate</li>
<li>mod/questionnaire</li>
<li>mod/scheduler</li>
<li>mod/slideshow</li>
<li>blocks/course_menu</li>
<li>blocks_email_list<br />
</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>lib_res <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  (very slow to  update) Common_time<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Lib_search<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> certificate<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Course_menu<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> questionnaire<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>RD<br />
</p></td>
<td><p>Chrome v/ 25.0.1364.172 m</p></td>
<td><p>Passed<br />
Postupgrade-Passed<br />
<br />
</p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter)  - still relevant?</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Still displays, not sure if this test is necessary any more?  This should be tested as latex images are cached so you may stuff created before can look like it's working even if the LaTex filter is not functioning correctly (RD) - tested with new sample $$\sum$$ <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>DS<br />
</p></td>
<td><p>FF v19.0.2, GC v25.0.1364.172</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Tested <a href="https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=4083&amp;nbsp;(/">https://v229.moodle-uat.ucl.ac.uk/course/view.php?id=4083<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></a></p></td>
<td><p>RD<br />
</p></td>
<td><p>Chrome v/ 25.0.1364.172 m</p></td>
<td><p>Passed<br />
Postupgrade - Passed<br />
</p></td>
</tr>
<tr class="even">
<td><p>Anything else that's not covered above</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>ALL<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


