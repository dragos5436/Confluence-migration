# Manual Testing for 3.9

Bold ones must be done, the rest is out of caution

<table>
<thead>
<tr class="header">
<th>Why</th>
<th>Test Scripts</th>
<th>Who</th>
<th>Outcome (Pass/Fail - log fails in Jira)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Turnitin</strong></td>
<td><a href="https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=119348490">Turnitin Test Script 15/07/19</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td><strong>No coverage</strong></td>
<td><a href="http://wiki.ucl.ac.uk/display/ISLTSS/Bespoke+UCL+plugins-+testing+scripts">Bespoke UCL plugins- testing scripts</a></td>
<td>Al</td>
<td><p><strong>PASS</strong></p>
<p>Library Resources - Pass<br />
Library Search - Pass</p>
<p>Common Timetable - Pass</p>
<p>Course Visibility - Pass - is this plugin still needed? Core says it at the top.</p>
<p>Quickmail &amp; Bulk Enrolment email testing - can only verify on Prod</p>
<p>Test Account Automation - Pass</p>
<p>Repository File Upload - Pass - Is this still relevant with S3 storage? We might save space by moving towards that</p>
<p>Hub - Pass</p></td>
</tr>
<tr class="odd">
<td><strong>mid-year upgrade extra cautious</strong></td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests+-+Assignment">Tests - Assignment</a></td>
<td>DK</td>
<td><h5 id="ManualTestingfor3.9-PASS">PASS</h5>
<h5 id="ManualTestingfor3.9-[ASS003T]CreateanAnonymousVideoAssignment-optionnotavailable.">[ASS003T]  Create an Anonymous Video Assignment - option not available.</h5>
<p>All sections staff/student on scripts - PASS</p>
<p>Except - Document conversion related tests, annotate converted PDF, blank.  - OneDrive error after running plugin test - Conversion test failed: error/Could not upgrade oauth token</p></td>
</tr>
<tr class="even">
<td><strong>UCL Plugin, no automated coverage</strong></td>
<td><a href="Tests-MyFeedback" class="uri">Tests-MyFeedback</a></td>
<td>DK</td>
<td><p><strong>PASS</strong></p>
<ul>
<li>Print button colour looks wrong (minor)</li>
<li>In the 'My Students' tab as a tutor, when searching for a student using email address, nothing happens, all students are still displayed. (minor)</li>
</ul></td>
</tr>
<tr class="odd">
<td><strong>mid-year upgrade extra cautious</strong></td>
<td><a href="https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=119348739">Moodle Assignment with Turnitin Integration:Testing 16/07/19</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td><strong>BIG update</strong></td>
<td><p>Questionnaire (No test scripts - these were for Choice activity)</p></td>
<td>Nikola / Al</td>
<td><p><strong>PASS</strong></p>
<p>Questionnaire creation &amp; response worked well.</p>
<p>Existing data sets preserved. e.g. <a href="https://39.preview-moodle.ucl.ac.uk/mod/questionnaire/report.php?instance=13465&amp;byresponse=1&amp;action=vresp&amp;group=0" class="uri">https://39.preview-moodle.ucl.ac.uk/mod/questionnaire/report.php?instance=13465&amp;byresponse=1&amp;action=vresp&amp;group=0</a></p>
<p>Came across one weird bug -  <a href="https://ucldata.atlassian.net/browse/LNA-621" class="uri">https://ucldata.atlassian.net/browse/LNA-621</a></p></td>
</tr>
<tr class="odd">
<td><strong>Manual testing of Chemistry &amp; Maths plugins</strong></td>
<td><ul>
<li>qtype_jme</li>
<li>filter_jmol</li>
<li>qtype_pmatchjme</li>
<li>qtype_stack</li>
</ul></td>
<td>Al</td>
<td><p><strong>PASS</strong></p>
<p>JME - Pass</p>
<p>pmatchjme - no uses of this prod outside of demo courses - <a href="https://moodle.ucl.ac.uk/report/questioninstances/index.php?qtype=pmatchjme" class="uri">https://moodle.ucl.ac.uk/report/questioninstances/index.php?qtype=pmatchjme</a></p>
<p>STACK - Pass</p>
<p>JMOL - WR343674, LNA-621 - Tested by uploading <a href="attachments/151257578/151258671.pdb">water molecule .pdb file</a>, link turned into interactive embed which while clunky did work.</p>
<p>(Will review with Andrea Seller)</p></td>
</tr>
<tr class="even">
<td><strong>Core hacks</strong></td>
<td><a href="New_Moodle_-_Documented_changes_to_core">New Moodle - Documented changes to core</a></td>
<td>Al</td>
<td><p><strong>PASS</strong></p>
<p>UCLCoreHack1 - should get rid of this, we now have the infrastructure headroom to handle daily at least, hourly probably.</p>
<p>UCLCoreHack2 - Language strings are saved in moodledata we don't have mounted so assume this is ok. - test on Staging - done</p>
<p>UCLCoreHack3, UCLCoreHack4, UCLCoreHack5, UCLCoreHack6, UCLCoreHack7 - Pass</p>
<p>MDL-60666 / MDL-67428 - test on Staging - not really testable.</p></td>
</tr>
<tr class="odd">
<td><strong>Data Integrations</strong></td>
<td><ul>
<li>local_userprofilefields_import</li>
<li>block_portico_enrolments</li>
<li>enrol_dbuserrel</li>
<li>MIM</li>
</ul></td>
<td>Al</td>
<td><p><strong>PASS</strong></p>
<p>Test on Staging - need MIM database &amp; file exports</p>
<ul>
<li>block_portico_enrolments - Pass</li>
<li>local_userprofilefields_import - Pass</li>
<li>enrol_dbuserrel - Pass</li>
<li>MIM → ims enrol xml enrol → Pass</li>
</ul></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-+Attendance">Tests- Attendance</a></td>
<td>Ehsan</td>
<td><p><strong>PASSED</strong> - Staff Test Scripts</p>
<p><strong>PASS</strong> - Student Test Scripts</p></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-BlackboardCollaborate">Tests-BlackboardCollaborate</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Book">Tests-Book</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Choice">Tests-Choice</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-CourseFormats">Tests-CourseFormats</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Feedback">Tests-Feedback</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Folder">Tests-Folder</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Forum">Tests-Forum</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General">Tests-General</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Glossary">Tests-Glossary</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Gradebook">Tests-Gradebook</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-GroupChoice">Tests-GroupChoice</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Lecturecast+LTI">Tests-Lecturecast LTI</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Lesson">Tests-Lesson</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-PorticoEnrolments">Tests-PorticoEnrolments</a></td>
<td>Ehsan</td>
<td><strong>N/A - requires data integration</strong></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Quiz">Tests-Quiz</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><p><del><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Resource">Tests-Resource</a></del></p>
<p>Outdated test scripts from 2012 that don't reflect the current resource types on Moodle</p></td>
<td>Jon-Luc</td>
<td><p><strong>PASS</strong></p>
<p>Created one of each resource type and working as intended. Text editing allowing the range of options within each resource type and can do upload files/folders without an issue.</p>
<p>Existing resources still accessible and usable fully.</p></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Scheduler">Tests-Scheduler</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><p><del><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-SCORM">Tests-SCORM</a></del></p>
<p>No test scripts exist for SCORM</p></td>
<td>Jon-Luc</td>
<td><p><strong>PASS</strong></p>
<p>No tests scripts exist for SCORM but can upload and use a SCORM package as intended.</p></td>
</tr>
<tr class="odd">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Wiki">Tests-Wiki</a></td>
<td>Jon-Luc</td>
<td><strong>PASS</strong></td>
</tr>
<tr class="even">
<td>mid-year upgrade extra cautious</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Workshop">Tests-Workshop</a></td>
<td>Ehsan</td>
<td><strong>PASS</strong></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [water.pdb](attachments/151257578/151258671.pdb) (application/x-aportisdoc)

