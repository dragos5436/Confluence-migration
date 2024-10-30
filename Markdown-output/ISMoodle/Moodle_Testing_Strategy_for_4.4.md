# Moodle Testing Strategy for 4.4

We make the most of automated testing in preparing for major upgrades of Moodle by using the coverage provided by PHPUnit and Behat testing. We focus manual testing where we know there is no coverage, for plugins where maintainers aren't trusted and for data integrations. We strive to increase automated testing coverage and get to a 0 failing test build, however, it is a journey and we aren't there yet.

**A single pass of testing should be carried out for each of the below types of testing against the 4.3.0 build**. If errors are uncovered and resolved, only resolution needs to be tested. Theme may need a second pass of testing once all issues are closed if significant amounts of change.

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
<td><br />
</td>
<td><div class="content-wrapper">
<pre><code>https://github.com/moodleou/moodle-qtype_varnumunit/issues/11
</code></pre>
</div></td>
</tr>
<tr class="even">
<td><ul>
<li>Behat</li>
</ul></td>
<td><ul>
<li>core Moodle</li>
<li>3rd party plugins</li>
</ul></td>
<td><br />
</td>
<td><ul>
<li><a href="https://github.com/davosmith/moodle-checklist/issues/118" class="uri">https://github.com/davosmith/moodle-checklist/issues/118</a></li>
<li><a href="https://github.com/open-lms-open-source/moodle-mod_hsuforum/issues/52" class="uri">https://github.com/open-lms-open-source/moodle-mod_hsuforum/issues/52</a></li>
<li><a href="https://github.com/ucl-isd/moodle-report_editdates/issues/4" class="uri">https://github.com/ucl-isd/moodle-report_editdates/issues/4</a></li>
<li><a href="https://github.com/lsuonline/lsuce-block_quickmail/issues/75" class="uri">https://github.com/lsuonline/lsuce-block_quickmail/issues/75</a></li>
<li><a href="https://github.com/microsoft/o365-moodle/issues/2547" class="uri">https://github.com/microsoft/o365-moodle/issues/2547</a></li>
<li><a href="https://github.com/davidherney/moodle-format_onetopic/issues/175" class="uri">https://github.com/davidherney/moodle-format_onetopic/issues/175</a></li>
<li><a href="https://github.com/catalyst/moodle-tool_abconfig/issues/65" class="uri">https://github.com/catalyst/moodle-tool_abconfig/issues/65</a></li>
<li><a href="https://github.com/catalyst/moodle-tool_heartbeat/issues/180" class="uri">https://github.com/catalyst/moodle-tool_heartbeat/issues/180</a></li>
<li><a href="https://github.com/bmbrands/moodle-local_analytics/issues/38" class="uri">https://github.com/bmbrands/moodle-local_analytics/issues/38</a></li>
<li><a href="https://github.com/catalyst/moodle-auth_outage/issues/334" class="uri">https://github.com/catalyst/moodle-auth_outage/issues/334</a></li>
<li><a href="https://github.com/ucl-isd/moodle-local_examguard/issues/3" class="uri">https://github.com/ucl-isd/moodle-local_examguard/issues/3</a></li>
<li><a href="https://github.com/anthology-ally/moodle-report_allylti/issues/9" class="uri">https://github.com/anthology-ally/moodle-report_allylti/issues/9</a></li>
</ul></td>
</tr>
<tr class="odd">
<td>Dry-run upgrades on Preview</td>
<td>all</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
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
<td><br />
</td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>Manual Testing of Turnitin</td>
<td><ul>
<li>Turnitintooltwo</li>
<li>Turnitin PP in Moodle Assignment</li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Manual Testing UCL Data Integration plugins</td>
<td><ul>
<li>local_userprofilefields_import</li>
<li>block_portico_enrolments</li>
<li>enrol_dbuserrel</li>
<li>local_ucl_clc_admin</li>
<li>local_courserollover</li>
<li>report_courserollover</li>
<li>block_lifecycle</li>
<li>MIM (cakephp)</li>
</ul></td>
<td><br />
</td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>Manual testing of Chemistry &amp; Maths plugins</td>
<td><ul>
<li>qtype_jme</li>
<li>filter_jmol</li>
<li>qtype_pmatchjme</li>
<li>qtype_stack</li>
<li>qtype_algebra</li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td>Manual testing of big changes</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
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
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Review Open issues</td>
<td><p>All 3rd Party plugins - go to relevant issue tracker and look for any major issues affecting the version we are upgrading to.</p>
<p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Manual Testing of Theme</td>
<td><ul>
<li>theme_norse</li>
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
<li>Safari (iOS/MacOS)</li>
<li>Edge</li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Manual testing of UCL hacks of Core Moodle</td>
<td><ul>
<li><a href="New_Moodle_-_Documented_changes_to_core">New Moodle - Documented changes to core</a></li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>New Plugins</td>
<td>Issues identified with new plugins currently under review when tested in Moodle 4.3</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>


