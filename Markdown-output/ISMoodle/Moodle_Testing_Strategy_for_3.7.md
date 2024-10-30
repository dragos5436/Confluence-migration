# Moodle Testing Strategy for 3.7

We are pivoting towards making the most of automated testing where these tests already exist and implement automated tests in UCL plugins which historically have not had any.This should increase our confidence in releasing regular updates to Moodle and reduce the amount of manual testing required. 

The final **production build will be created on the 8th/9th of July based on Moodle 3.7.1** and latest branches for all plugins and will be available on the new RHEL7 Pre-Production environment which should be available at** <https://moodle-pp.ucl.ac.uk/>** .  **A single pass of testing should be carried out for each of the below types of testing against the 3.7.1 build**. If errors are uncovered and resolved, only resolution needs to be tested. Theme will need a second pass of testing once all issues are closed (first pass already carried out on Moodle 3.7.0).

Issues should be logged in - <https://liveuclac-my.sharepoint.com/:x:/g/personal/cceaasp_ucl_ac_uk/EakSk5t-QopFol_PXGQ2pRoBJM-BdHe9-qmPgpFWAQP4PA?rtime=PejnPO7-1kg>

3.7.0 build on <https://moodle-1819-pp.ucl.ac.uk/> - upgrade notes:

-   Update to latest version of Helix plugins required (<https://github.com/streamingltd/MEDIAL-Moodle-Activity/issues/3> )
-   Turnitin PP [v2019060601](https://github.com/turnitin/moodle-plagiarism_turnitin/blob/master/CHANGELOG.md#date-------2019-june-06) is not production ready - held mod on v2019012401 and PP on v2019031301 (<https://github.com/turnitin/moodle-plagiarism_turnitin/issues/437> ) 
-   theme needs work as expected
-   otherwise ok

<table>
<thead>
<tr class="header">
<th>Testing Type</th>
<th>Coverage</th>
<th>Who</th>
<th>Results</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ul>
<li>PHPUnit</li>
</ul></td>
<td><ul>
<li>core Moodle</li>
<li>3rd party plugins</li>
</ul></td>
<td><p><a href="https://ucldata.atlassian.net/browse/ISD-3161" class="uri">https://ucldata.atlassian.net/browse/ISD-3161</a></p>
<p>Alistair Spark</p></td>
<td><p>Unstable 3.7 - <a href="https://moodle37.moodle-01-u.ucl.ac.uk/phpunitoutput-37-april2019.txt" class="uri">https://moodle37.moodle-01-u.ucl.ac.uk/phpunitoutput-37-april2019.txt</a></p>
<p><strong>3.7.1 - <a href="https://348-clean.moodle-01-u.ucl.ac.uk/phpunitoutput-371-july2019build.txt" class="uri">https://348-clean.moodle-01-u.ucl.ac.uk/phpunitoutput-371-july2019build.txt</a></strong></p>
<p>Issues logged:</p>
<p><a href="https://tracker.moodle.org/browse/CONTRIB-7772" class="uri">https://tracker.moodle.org/browse/CONTRIB-7772</a> (Fix on the way <a href="https://github.com/blackboard-open-source/moodle-mod_hsuforum/pull/15" class="uri">https://github.com/blackboard-open-source/moodle-mod_hsuforum/pull/15</a> )</p>
<p><a href="https://tracker.moodle.org/browse/CONTRIB-7773" class="uri">https://tracker.moodle.org/browse/CONTRIB-7773</a></p>
<p><a href="https://github.com/ecampbell/moodle-qformat_wordtable/issues/3" class="uri">https://github.com/ecampbell/moodle-qformat_wordtable/issues/3</a></p>
<p><a href="https://github.com/streamingltd/MEDIAL-Moodle-Activity/issues/1" class="uri">https://github.com/streamingltd/MEDIAL-Moodle-Activity/issues/1</a> - which despite being closed is not fixed ... yet</p>
<p>Fine otherwise, 7772 is a must fix, the rest is acceptable noise.</p></td>
</tr>
<tr class="even">
<td><ul>
<li>Behat</li>
</ul></td>
<td><ul>
<li>core Moodle</li>
<li>3rd party plugins</li>
</ul></td>
<td><p><a href="https://ucldata.atlassian.net/browse/ISD-3689" class="uri">https://ucldata.atlassian.net/browse/ISD-3689</a></p>
<p>Ehsan Anwar</p></td>
<td>Behat tests will not be run this time due to lack of proper infrastructure for this. We look forward to the DevOps project's rollout of Jenkins to run this for us.</td>
</tr>
<tr class="odd">
<td>Manual testing UCL plugins</td>
<td><ul>
<li>MyFeedback</li>
<li>Test Account Automation</li>
<li>Repository File Upload</li>
<li>UCL Tools</li>
<li>block_course_visibility</li>
<li>block_library_resources</li>
<li>block_library_search</li>
<li>block_timetable</li>
</ul></td>
<td><p>Jon-Luc Holmes</p>
<p><br />
</p>
<p>Need to review the Testing Scripts in the Digi-Ed wiki for these aspects.</p></td>
<td>All clear.</td>
</tr>
<tr class="even">
<td>Manual Testing of Turnitin</td>
<td><ul>
<li>Turnitintooltwo</li>
<li>Turnitin PP in Moodle Assignment</li>
</ul></td>
<td>Janice Kiugu /Eliot Hoving</td>
<td><h2 id="MoodleTestingStrategyfor3.7-SummaryTurnitinPlugintestingV2(Turnitintooltwo)-JK">Summary Turnitin Plugin testing V2 (Turnitintooltwo) - JK</h2>
<p>Detailed test results : <a href="https://wiki.ucl.ac.uk/x/Ch0dBw" class="uri">https://wiki.ucl.ac.uk/x/Ch0dBw</a></p>
<p>Test done on  <a href="https://moodle-1819-pp.ucl.ac.uk/" class="uri">https://moodle-1819-pp.ucl.ac.uk/</a></p>
<ol>
<li>Not able to test that students are receiving an email ( digital receipt)  for their submission as emails have been disabled. I did get an error message on one occasion when I made a submission. Please refer to the image in row 1.2 on test script- <a href="https://wiki.ucl.ac.uk/x/Ch0dBw" class="uri">https://wiki.ucl.ac.uk/x/Ch0dBw</a></li>
<li>Used Firefox  for testing and it required the installation of Flash  player to add voice comments- tested this on ‘live’ Moodle and Google Chrome and the voice comment tool doesn’t seem to work at all (JK to log this with TII )</li>
<li>Please see interface ‘issues’ in screen shots in row 2.8, 3.5  and image placed under the heading additional comments at the bottom of the <a href="https://wiki.ucl.ac.uk/x/Ch0dBw">detailed test results page</a></li>
</ol>
<h2 id="MoodleTestingStrategyfor3.7-SummaryMoodlewithTurnitinintegrationtesting">Summary Moodle with Turnitin integration testing</h2>
<p>No issues with plugin found. However:</p>
<ol>
<li><p>Tutor role was still not able to add or edit activities but Course administrator can.</p></li>
<li>Tutor and Course Administrator role were not able to reset course</li>
<li>Compared to current Moodle, overdue assignments aren't as obvious. As a student, I could only see overdue assignments on the Timeline block by selecting 'Overdue'. Overdue is defined as assignments that have not been submitted and the deadline has passed, if a late assignment is submitted they are removed from Overdue. Otherwise to see overdue assignments I have to go to events page and under the monthly view calendar block I can click past events but they are not flagged to the student. Is there a way for overdue assignments to be flagged on Events tab?</li>
</ol>
<p>Detailed test results: <a href="https://wiki.ucl.ac.uk/x/Ax4dBw" class="uri">https://wiki.ucl.ac.uk/x/Ax4dBw</a></p>
<p><br />
</p>
<p>** Default maximum file size for  users when they create a  TII assignments should be 40MB . This doesn't  seem to be the default on PP.</p>
<p><br />
</p>
<p>*** Regarding resets: We will need the ' UCL FIX' that will ensure that the 'use new assignment dates'  dates is selected by default  when  a user chooses to do a Default  Reset reset .. If user's miss ticking this,  TII submissions will not work as desired.</p>
<p></p>
<p>****Email response from TII regarding Timeline- is this something we can/should check?</p>
<p><br />
_____________</p>
<p>Thank you for your email and sorry to hear that the recent plugin update has not resolved the timeline issue.</p>
<p><br />
</p>
<p><br />
</p>
<p>I have liaised with our Tier 2 team who have asked if you can trying using the classic or boost themes instead to see if this then reveals the assignments in the timeline? Also can you confirm whether or not the cache was purged when you upgraded?</p>
<p><br />
</p>
<p><br />
</p>
<p>Many thanks in advance and kind regards,</p>
<p><br />
</p>
<p>____________________</p></td>
</tr>
<tr class="odd">
<td>Manual Testing UCL Data Integration plugins</td>
<td><ul>
<li>local_userprofilefields_import</li>
<li>block_portico_enrolments</li>
<li>enrol_dbuserrel</li>
<li>MIM</li>
</ul></td>
<td><p>AS/AN/DK</p></td>
<td>MIM end to end testing in progress for AMP change</td>
</tr>
<tr class="even">
<td>Load Testing</td>
<td><ul>
<li>Quiz</li>
<li>Assignment</li>
<li>Forums</li>
<li>Quiz reports</li>
<li>Turnitintooltwo</li>
<li>Assignment with Turnitin PP</li>
<li>Blackboard Ally</li>
<li>My Feedback</li>
<li>Grader Report</li>
<li>Downloading logs</li>
<li>Questionnaire</li>
<li>Attendance</li>
<li>Attendance reports / exports</li>
<li>Download some slides (folder/embedded - what is prevalent at UCL?)</li>
</ul></td>
<td>Ehsan Anwar / Pete Castle / Jason Lopez</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Review Open issues</td>
<td><p>All 3rd Party plugins - go to relevant issue tracker and look for any major issues affecting the version we are upgrading to.</p>
<p><br />
</p></td>
<td>AS</td>
<td>nothing to report</td>
</tr>
<tr class="even">
<td>Manual Testing of Theme</td>
<td><ul>
<li>Adaptable BS4</li>
</ul>
<p>Testing on:</p>
<ul>
<li>Android</li>
<li>iOS</li>
<li>MacOS</li>
<li>Windows 10</li>
</ul>
<p>Browsers:</p>
<ul>
<li>Chrome</li>
<li>Firefox</li>
<li>IE 11 (Windows)</li>
<li>Safari (iOS/MacOS)</li>
<li>Edge</li>
</ul></td>
<td><p>General &amp; Mobile Testing - Jon-Luc Holmes</p>
<p>Accessibility Testing - James Prime and Michelle Farmer</p>
<p><br />
</p>
<p>Fixing - Titus Learning and Coventry</p>
<p>Issues should be logged with the UCL tag in the upstream repository:</p>
<p><a href="https://gitlab.com/3bits/moodle-theme_adaptable2/issues?scope=all&amp;utf8=%E2%9C%93&amp;state=opened&amp;label_name%5B%5D=UCL">https://gitlab.com/3bits/moodle-theme_adaptable2/issues?scope=all&amp;utf8=%E2%9C%93&amp;state=opened&amp;label_name[]=UCL</a></p>
<p>Accessibility Issues will have the additional Accessibility tag</p>
<p>Issues currently being worked on should have the tag Doing and be assigned to the relevant developer.</p></td>
<td><div class="content-wrapper">
<p>UCL Moodle Accessibility Testing Final Report - <a href="attachments/119345156/119345218.docx">UCL Moodle - Accessibility testing - Final report - 24-06-2019.docx</a></p>
<p>Accessibility fixes implemented - <a href="https://gitlab.com/3bits/moodle-theme_adaptable2/issues?scope=all&amp;utf8=%E2%9C%93&amp;state=closed&amp;label_name%5B%5D=Accessibility&amp;label_name%5B%5D=UCL">https://gitlab.com/3bits/moodle-theme_adaptable2/issues?scope=all&amp;utf8=%E2%9C%93&amp;state=closed&amp;label_name[]=Accessibility&amp;label_name[]=UCL</a></p>
<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td>Manual testing of UCL hacks of Core Moodle</td>
<td><ul>
<li><a href="New_Moodle_-_Documented_changes_to_core">New Moodle - Documented changes to core</a></li>
</ul></td>
<td>Jon-Luc Holmes and Digital Education Core/Advisory team as appropriate</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [UCL Moodle - Accessibility testing - Final report - 24-06-2019.docx](attachments/119345156/119345218.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

