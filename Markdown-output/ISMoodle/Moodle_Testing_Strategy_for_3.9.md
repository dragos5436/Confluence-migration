# Moodle Testing Strategy for 3.9

Following on from the success of the [Moodle Testing Strategy for 3.7](Moodle_Testing_Strategy_for_3.7) we will continue to make the most of automated testing where these tests already exist and implement automated tests in UCL plugins which historically have not had any.This should increase our confidence in releasing regular updates to Moodle and reduce the amount of manual testing required. 

**A single pass of testing should be carried out for each of the below types of testing against the 3.9.0 build**. If errors are uncovered and resolved, only resolution needs to be tested. Theme may need a second pass of testing once all issues are closed if significant amounts of change.

3.9.0 [build](https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/a2c208717618006c0c4c4cf40eea27cdde2fa537) on <https://mdl-preview01u.ad.ucl.ac.uk/39> - upgrade notes:

-   Core Moodle upgrade bug - <https://tracker.moodle.org/browse/MDL-69049> - FIXED
-   Questionnaire version inconsistent - <https://github.com/PoetOS/moodle-mod_questionnaire/issues/293> - RESOLVED
-   theme needs testing but looks ok
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
<td><p>Alistair Spark</p></td>
<td><div class="content-wrapper">
<p><strong>PASS</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /> </p>
<p>3.9.0 - <a href="attachments/137150309/137150304.txt">phpunitoutput-290-June2020build1.txt</a></p>
<p>3.9.0+ - <a href="attachments/137150309/137153810.txt">phpunitoutput-390-23June2020build3.txt</a></p>
<p><a href="moodle_3.9.2+_phpunit_tests_results">moodle 3.9.2+ phpunit tests results</a></p>
<ul>
<li>Echo360 Atto/Filter plugins language strings → upgrade to v1.0.24 - FIXED</li>
<li><a href="https://github.com/dualcube/Drag-and-Drop-Matching/issues/5" class="uri">https://github.com/dualcube/Drag-and-Drop-Matching/issues/5</a> → <a href="https://ucldata.atlassian.net/browse/LNA-620" class="uri">https://ucldata.atlassian.net/browse/LNA-620</a> (Segun taking care of it)</li>
<li><a href="https://github.com/dualcube/Drag-and-Drop-Matching/issues/6" class="uri">https://github.com/dualcube/Drag-and-Drop-Matching/issues/6</a> - FIXED</li>
<li><a href="https://tracker.moodle.org/browse/MDL-68222" class="uri">https://tracker.moodle.org/browse/MDL-68222</a> - FIXED</li>
<li><a href="https://github.com/ndunand/moodle-tool_mergeusers/issues/177" class="uri">https://github.com/ndunand/moodle-tool_mergeusers/issues/177</a> - only affects behat</li>
<li><a href="https://ucldata.atlassian.net/browse/LNA-626" class="uri">https://ucldata.atlassian.net/browse/LNA-626</a> (Segun taking care of it)</li>
<li>Quickmail errors covered by manual testing.</li>
<li>Wordtable works, test needs updating</li>
<li>The rest is privacy provider warnings</li>
</ul>
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
<td><p>Learning Apps &amp; Devops team</p></td>
<td><div class="content-wrapper">
<p>3.9.0 - <a href="attachments/137150309/137152334.txt">behat-moodlesite-390-release-June-2020.txt</a></p>
<p>3.9.2+ - <a href="https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/execution/node/79/log" class="uri">https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/execution/node/79/log</a></p>
<p><a href="https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/artifact/mdl-cand-cicd/results/text/report_behat_1.txt" class="uri">https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/artifact/mdl-cand-cicd/results/text/report_behat_1.txt</a></p>
<p><a href="https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/artifact/mdl-cand-cicd/results/text/report_behat_2.txt" class="uri">https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/artifact/mdl-cand-cicd/results/text/report_behat_2.txt</a></p>
<ul>
<li><a href="https://github.com/blackboard-open-source/moodle-mod_collaborate/blob/1eab9ef8e0231051b3a67e75fe03d64fbd860511/tests/behat/collaborate.feature#L77" class="uri">https://github.com/blackboard-open-source/moodle-mod_collaborate/blob/1eab9ef8e0231051b3a67e75fe03d64fbd860511/tests/behat/collaborate.feature#L77</a> - NO ACTION REQUIRED</li>
</ul>
<ul>
<li><a href="https://github.com/blackboard-open-source/moodle-filter_ally/blob/ad569bfb7fbefb1f59a85011cfece2f32a86f58a/tests/behat/forum_files.feature#L31" class="uri">https://github.com/blackboard-open-source/moodle-filter_ally/blob/ad569bfb7fbefb1f59a85011cfece2f32a86f58a/tests/behat/forum_files.feature#L31</a> - NO ACTION REQUIRED</li>
</ul>
<ul>
<li>imsenterprise:unenrol (enrol_imsenterprise) - caused by core hack 7 - <a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/blame/MOODLE_39_UCL_REL390/enrol/imsenterprise/db/access.php#L36" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/blame/MOODLE_39_UCL_REL390/enrol/imsenterprise/db/access.php#L36</a> - FIXED</li>
</ul>
<ul>
<li>filetrash:view (report_filetrash) - <a href="https://github.com/elearningstudio/moodle-report_filetrash/issues/1" class="uri">https://github.com/elearningstudio/moodle-report_filetrash/issues/1</a> - FIXED</li>
</ul>
<ul>
<li>Setup STACK properly for phpunit/behat testing - <a href="https://github.com/maths/moodle-qtype_stack/blob/master/doc/en/Developer/Unit_tests.md" class="uri">https://github.com/maths/moodle-qtype_stack/blob/master/doc/en/Developer/Unit_tests.md</a></li>
</ul>
<ul>
<li>Turnitin deprecations - see Turnitin section below</li>
<li> <a href="https://github.com/blackboard-open-source/moodle-mod_collaborate/issues/12" class="uri">https://github.com/blackboard-open-source/moodle-mod_collaborate/issues/12</a></li>
<li><a href="https://github.com/blackboard-open-source/moodle-filter_ally/issues/21" class="uri">https://github.com/blackboard-open-source/moodle-filter_ally/issues/21</a></li>
</ul>
<p>Manual test addition: hotquestion - Pass</p>
<p><a href="Behat_Triage_3.9_Results">Behat Triage 3.9 Results</a></p>
<p><a href="Behat_Triage_3.9.2+_Results">Behat Triage 3.9.2+ Results</a></p>
<div class="content-wrapper">
<p><br />
</p>
<p>20201026 build:</p>
</div>
<ul>
<li><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/issues/557" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/issues/557</a></li>
<li><a href="https://github.com/dualcube/Drag-and-Drop-Matching/issues/9" class="uri">https://github.com/dualcube/Drag-and-Drop-Matching/issues/9</a> - FIXED</li>
<li><a href="https://ucldata.atlassian.net/browse/LNA-628" class="uri">https://ucldata.atlassian.net/browse/LNA-628</a></li>
<li><a href="https://ucldata.atlassian.net/browse/LNA-629" class="uri">https://ucldata.atlassian.net/browse/LNA-629</a></li>
<li><a href="https://ucldata.atlassian.net/browse/LNA-630" class="uri">https://ucldata.atlassian.net/browse/LNA-630</a></li>
</ul>
<p>20201027 build:</p>
<ul>
<li><a href="https://github.com/ecampbell/moodle-qtype_multichoiceset/pull/7/files" class="uri">https://github.com/ecampbell/moodle-qtype_multichoiceset/pull/7/files</a></li>
</ul>
<p><br />
</p>
</div></td>
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
<td><p><a href="https://wiki.ucl.ac.uk/display/ECARC/Bespoke+UCL+plugins-+testing+scripts">Bespoke UCL plugins- testing scripts</a></p>
<p><a href="Tests-MyFeedback" class="uri">Tests-MyFeedback</a></p>
<p><br />
</p></td>
<td><p><strong>PASS</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /></p>
<p><a href="Manual_Testing_for_3.9">Manual Testing for 3.9</a></p></td>
</tr>
<tr class="even">
<td>Manual Testing of Turnitin</td>
<td><ul>
<li>Turnitintooltwo</li>
<li>Turnitin PP in Moodle Assignment</li>
</ul></td>
<td><p>Janice Kiugu /Eliot Hoving</p></td>
<td><div class="content-wrapper">
<p>Note - no Turnitin plugin version changes</p>
<p><strong>ALL FIXED</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /></p>
<p><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/issues/448" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/issues/448</a> - FIXED by Pull Request for it <a href="https://github.com/turnitin/moodle-plagiarism_turnitin/pull/553" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/pull/553</a> is cherry-picked in plagiarism UCL_develop_2020072201 branch</p>
<p><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/issues/518" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/issues/518</a> - FIXED</p>
<p><a href="https://github.com/turnitin/moodle-plagiarism_turnitin/issues/517" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/issues/517</a> - FIXED in <a href="https://github.com/turnitin/moodle-plagiarism_turnitin/pull/542" class="uri">https://github.com/turnitin/moodle-plagiarism_turnitin/pull/542</a> but not released (too complex to backport)</p>
<p><a href="https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/572" class="uri">https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/572</a> - FIXED (cherry-picked in UCL_2020072201)</p>
<p><a href="https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/573" class="uri">https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/573</a> - FIXED</p>
<p>3.9 compatible version of plugins should be released this week (by 10th July - <a href="https://www.youtube.com/watch?v=D5dcKEN0CIs">MM</a>)</p>
<p>v2020070801 Plagiarism Plugin released and UCL_2020072201 for v2 mod but still many open issues not addressed.</p>
<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td>Manual Testing UCL Data Integration plugins</td>
<td><ul>
<li>local_userprofilefields_import</li>
<li>block_portico_enrolments</li>
<li>enrol_dbuserrel</li>
<li>MIM</li>
</ul></td>
<td><p>AS/DK</p></td>
<td>MIM end to end testing</td>
</tr>
<tr class="even">
<td>Manual testing of Chemistry &amp; Maths plugins</td>
<td><ul>
<li>qtype_jme</li>
<li>filter_jmol</li>
<li>qtype_pmatchjme</li>
<li>qtype_stack</li>
</ul></td>
<td>Eliot/ AS</td>
<td><strong>PASS</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /></td>
</tr>
<tr class="odd">
<td>Manual testing of big changes</td>
<td><ul>
<li>ldap sync</li>
<li>mod_questionnaire</li>
<li>H5P</li>
</ul></td>
<td><ul>
<li>?</li>
<li>Zaman</li>
<li>?</li>
</ul></td>
<td><p>H5P - <a href="https://www.youtube.com/watch?v=p7ihJZgZQ4M" class="uri">https://www.youtube.com/watch?v=p7ihJZgZQ4M</a></p>
<p>That is really not a good workflow. <a href="https://tracker.moodle.org/browse/MDL-69070" class="uri">https://tracker.moodle.org/browse/MDL-69070</a></p></td>
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
<td>Ehsan Anwar</td>
<td>Look for no significant degradation compared to 3.7 benchmark.</td>
</tr>
<tr class="odd">
<td>Review Open issues</td>
<td><p>All 3rd Party plugins - go to relevant issue tracker and look for any major issues affecting the version we are upgrading to.</p>
<p><br />
</p></td>
<td>AS</td>
<td><br />
</td>
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
<td><p>Issues should be logged with the UCL tag in the upstream repository:</p>
<p><a href="https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues?label_name%5B%5D=UCL&amp;scope=all&amp;state=opened&amp;utf8=%E2%9C%93">https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues?label_name[]=UCL&amp;scope=all&amp;state=opened&amp;utf8=%E2%9C%93</a></p>
<p>Accessibility Issues will have the additional Accessibility tag</p>
<p>Issues currently being worked on should have the tag Doing and be assigned to the relevant developer.</p></td>
<td><div class="content-wrapper">
<p><strong>PASS</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /></p>
<p>UCL_master-3ab258f5 fixes all bugs &amp; upstreams all our local fixes.</p>
<p>Review sectionheadingcolor for Collapsed Topic /OneTopic course formats</p>
</div>
<p>editsettingsbutton → Set to display both cog &amp; Turn editing on</p></td>
</tr>
<tr class="odd">
<td>Manual testing of UCL hacks of Core Moodle</td>
<td><ul>
<li><a href="New_Moodle_-_Documented_changes_to_core">New Moodle - Documented changes to core</a></li>
</ul></td>
<td>Learning Apps TBC</td>
<td><p><strong>PASS</strong> <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /></p>
<p><a href="Manual_Testing_for_3.9">Manual Testing for 3.9</a></p></td>
</tr>
<tr class="even">
<td>New Plugins</td>
<td>Issues identified with new plugins currently under review when tested in Moodle 3.9</td>
<td><br />
</td>
<td><p><a href="https://github.com/intelliboard/intelliboard/issues/36" class="uri">https://github.com/intelliboard/intelliboard/issues/36</a></p>
<p><a href="https://github.com/microsoft/o365-moodle/issues/1351" class="uri">https://github.com/microsoft/o365-moodle/issues/1351</a></p>
<p><a href="https://github.com/microsoft/o365-moodle/issues/1352" class="uri">https://github.com/microsoft/o365-moodle/issues/1352</a></p>
<p><a href="https://github.com/microsoft/o365-moodle/issues/1353" class="uri">https://github.com/microsoft/o365-moodle/issues/1353</a></p>
<p><a href="https://bitbucket.org/covuni/mod_peerwork/issues/53/incorrect-sql-syntax-failing-phpunit-test" class="uri">https://bitbucket.org/covuni/mod_peerwork/issues/53/incorrect-sql-syntax-failing-phpunit-test</a></p></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [phpunitoutput-290-June2020build1.txt](attachments/137150309/137150304.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [behat-moodlesite-390-release-June-2020.txt](attachments/137150309/137152334.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [behat-390-left-to-triage.txt](attachments/137150309/137152496.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [phpunitoutput-390-23June2020build3.txt](attachments/137150309/137153810.txt) (text/plain)

