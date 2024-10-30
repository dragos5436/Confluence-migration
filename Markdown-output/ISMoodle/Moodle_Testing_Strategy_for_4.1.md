# Moodle Testing Strategy for 4.1

We make the most of automated testing in preparing for major upgrades of Moodle by using the coverage provided by PHPUnit and Behat testing. We focus manual testing where we know there is no coverage, for plugins where maintainers aren't trusted and for data integrations. We strive to increase automated testing coverage and get to a 0 failing test build, however, it is a journey and we aren't there yet.

**A single pass of testing should be carried out for each of the below types of testing against the 4.1.0 build**. If errors are uncovered and resolved, only resolution needs to be tested. Theme may need a second pass of testing once all issues are closed if significant amounts of change.

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
<pre><code></code></pre>
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
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>Dry-run upgrades on Preview</td>
<td>all</td>
<td><br />
</td>
<td><ul>
<li><a href="https://github.com/drachels/moodle-mod_hotquestion/issues/58" class="uri">https://github.com/drachels/moodle-mod_hotquestion/issues/58</a></li>
<li><a href="https://github.com/catalyst/moodle-tool_objectfs/issues/516" class="uri">https://github.com/catalyst/moodle-tool_objectfs/issues/516</a></li>
</ul></td>
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
<td><ul>
<li><a href="https://github.com/ucl-isd/moodle-block_course_visibility/issues/2" class="uri">https://github.com/ucl-isd/moodle-block_course_visibility/issues/2</a></li>
<li><a href="https://github.com/ucl-isd/moodle-block_library_resources/issues/3" class="uri">https://github.com/ucl-isd/moodle-block_library_resources/issues/3</a></li>
</ul></td>
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
<td><ul>
<li><a href="https://github.com/uclmoodle/moodle-enrol_dbuserrel/issues/3" class="uri">https://github.com/uclmoodle/moodle-enrol_dbuserrel/issues/3</a></li>
</ul></td>
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
<ul>
<li><a href="https://github.com/ucl-isd/moodle-qtype_jme/issues/3" class="uri">https://github.com/ucl-isd/moodle-qtype_jme/issues/3</a></li>
<li>CTP-1581 - Fix UCL plugin moodle-qtype_algebra Done (qtype_algebra)</li>
</ul>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td>Manual testing of big changes</td>
<td><ul>
<li>Moodle Quiz</li>
<li>Reporting </li>
</ul></td>
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
<li>Adaptable</li>
<li>UCLLight</li>
<li>Titus theme</li>
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
<td>Issues identified with new plugins currently under review when tested in Moodle 4.1</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2022-3-31\_11-11-59.png](attachments/229246301/229246296.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [phpunitoutput-390-23June2020build3.txt](attachments/229246301/229246297.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [behat-390-left-to-triage.txt](attachments/229246301/229246298.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [behat-moodlesite-390-release-June-2020.txt](attachments/229246301/229246299.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [phpunitoutput-290-June2020build1.txt](attachments/229246301/229246300.txt) (text/plain)

