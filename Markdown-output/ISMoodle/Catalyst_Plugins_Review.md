# Catalyst Plugins Review

<table>
<thead>
<tr class="header">
<th>Plugin Name</th>
<th>Catalyst Ticket</th>
<th>Catalyst Review</th>
<th>Catalyst repo with fixes</th>
<th>UCL repo with fixes</th>
<th>Testing Steps </th>
<th><br />
</th>
<th>Passed</th>
<th>Errors</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.local_testaccount_automation">plugin-review.ucl.local_testaccount_automation</h4></td>
<td>WR #348446 / WR #342636</td>
<td><a href="attachments/190614186/194974793.pdf">plugin-review.ucl.local_testaccount_automation(1).pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-local_testaccount_automation/-/tree/ucl-WR348446" class="uri">https://git.catalyst-eu.net/ucl/moodle-local_testaccount_automation/-/tree/ucl-WR348446</a> </td>
<td><a href="https://github.com/ucl-isd/moodle-local_testaccount_automation/tree/ucl-WR348446" class="uri">https://github.com/ucl-isd/moodle-local_testaccount_automation/tree/ucl-WR348446</a></td>
<td><p><a href="Tests-Test_Account_Automation">Tests-Test Account Automation</a></p></td>
<td><br />
</td>
<td>No</td>
<td><div class="content-wrapper">
<p>01 Jul 2022 </p>
get_all_user_name_fields() is deprecated. Please use the \core_user\fields API instead
<ul>
<li>line 3384 of /lib/deprecatedlib.php: call to debugging()</li>
<li>line 30 of /local/testaccount_automation/lib.php: call to get_all_user_name_fields()</li>
<li>line 109 of /local/testaccount_automation/index.php: call to testaccount_automation_printtable()</li>
</ul>
<p><br />
</p>
<p>test date 10 Aug 2022 </p>
<p>Error reading from database</p>
<p><a href="http://docs.moodle.org/311/en/error/moodle/dmlreadexception">More information about this error</a><br />
<strong>Debug info:</strong> Unknown column 'Array' in 'field list'<br />
SELECT id, Array, username, email FROM mdl_user WHERE id = ?<br />
[array (<br />
0 =&gt; 837102,<br />
)]<br />
Error code: dmlreadexception</p>
<p><strong>Stack trace:</strong></p>
<ul>
<li>line 486 of /lib/dml/moodle_database.php: dml_read_exception thrown</li>
<li>line 293 of /lib/dml/moodle_read_slave_trait.php: call to moodle_database-&gt;query_end()</li>
<li>line 1273 of /lib/dml/mysqli_native_moodle_database.php: call to mysqli_native_moodle_database-&gt;query_end()</li>
<li>line 1671 of /lib/dml/moodle_database.php: call to mysqli_native_moodle_database-&gt;get_records_sql()</li>
<li>line 1643 of /lib/dml/moodle_database.php: call to moodle_database-&gt;get_record_sql()</li>
<li>line 1622 of /lib/dml/moodle_database.php: call to moodle_database-&gt;get_record_select()</li>
<li>line 406 of /local/testaccount_automation/classes/testaccount_automation_create.php: call to moodle_database-&gt;get_record()</li>
<li>line 101 of /local/testaccount_automation/classes/testaccount_automation_create.php: call to testaccount_automation_create-&gt;testaccount_automation_sendemail()</li>
<li>line 103 of /local/testaccount_automation/index.php: call to testaccount_automation_create-&gt;testaccount_automation_processuserdata()</li>
</ul>
<p><strong>Output buffer:</strong> Notice: Array to string conversion in /data/apache/htdocs/PREVIEW_311_REBASE-151/local/testaccount_automation/classes/testaccount_automation_create.php on line 406 </p>
<p><br />
</p>
<p>test date 15 Sep 2022 </p>
<p>Error reading from database</p>
<p><a href="http://docs.moodle.org/311/en/error/moodle/dmlreadexception">More information about this error</a><br />
<strong>Debug info:</strong> Unknown column 'u.firstnamephonetic' in 'field list'<br />
SELECT id, u.firstnamephonetic, u.lastnamephonetic, u.middlename, u.alternatename, u.firstname, u.lastname, username, email FROM mdl_user WHERE id = ?<br />
[array (<br />
0 =&gt; 843444,<br />
)]<br />
Error code: dmlreadexception</p>
<p><strong>Stack trace:</strong></p>
<ul>
<li>line 486 of /lib/dml/moodle_database.php: dml_read_exception thrown</li>
<li>line 293 of /lib/dml/moodle_read_slave_trait.php: call to moodle_database-&gt;query_end()</li>
<li>line 1273 of /lib/dml/mysqli_native_moodle_database.php: call to mysqli_native_moodle_database-&gt;query_end()</li>
<li>line 1671 of /lib/dml/moodle_database.php: call to mysqli_native_moodle_database-&gt;get_records_sql()</li>
<li>line 1643 of /lib/dml/moodle_database.php: call to moodle_database-&gt;get_record_sql()</li>
<li>line 1622 of /lib/dml/moodle_database.php: call to moodle_database-&gt;get_record_select()</li>
<li>line 407 of /local/testaccount_automation/classes/testaccount_automation_create.php: call to moodle_database-&gt;get_record()</li>
<li>line 101 of /local/testaccount_automation/classes/testaccount_automation_create.php: call to testaccount_automation_create-&gt;testaccount_automation_sendemail()</li>
<li>line 103 of /local/testaccount_automation/index.php: call to testaccount_automation_create-&gt;testaccount_automation_processuserdata()</li>
</ul>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.local_repositoryfileupload">plugin-review.ucl.local_repositoryfileupload</h4></td>
<td>WR #348446 / WR #342636</td>
<td><a href="attachments/190614186/194974794.pdf">plugin-review.ucl.local_repositoryfileupload.pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-local_repositoryfileupload/-/tree/ucl-WR348446" class="uri">https://git.catalyst-eu.net/ucl/moodle-local_repositoryfileupload/-/tree/ucl-WR348446</a> </td>
<td><a href="https://git.automation.ucl.ac.uk/moodle/moodle-local_repositoryfileupload/-/tree/ucl-WR348446" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-local_repositoryfileupload/-/tree/ucl-WR348446</a></td>
<td><p><a href="Tests-Repository_File_Upload">Tests-Repository File Upload</a></p></td>
<td><br />
</td>
<td>Pass</td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.enrol_dbuserrel">plugin-review.ucl.enrol_dbuserrel</h4></td>
<td>WR #348446 / WR #342636</td>
<td><a href="attachments/190614186/194974795.pdf">plugin-review.ucl.enrol_dbuserrel.pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-enrol_dbuserrel/-/tree/ucl-WR348446" class="uri">https://git.catalyst-eu.net/ucl/moodle-enrol_dbuserrel/-/tree/ucl-WR348446</a> </td>
<td><a href="https://github.com/ucl-isd/moodle-enrol_dbuserrel/tree/ucl-WR348446" class="uri">https://github.com/ucl-isd/moodle-enrol_dbuserrel/tree/ucl-WR348446</a></td>
<td><a href="Tests-DBuserrel" class="uri">Tests-DBuserrel</a></td>
<td><br />
</td>
<td>No</td>
<td><div class="content-wrapper">
<p>showing error when running sync task</p>
<p><a href="https://39.preview-moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?lastchanged=enrol_dbuserrel%5Ctask%5Cdbuserrel_sync">https://39.preview-moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?lastchanged=enrol_dbuserrel%5Ctask%5Cdbuserrel_sync</a></p>
<h2 id="CatalystPluginsReview-DBUserroleassignmentsynctask">DB User role assignment sync task</h2>
<p>Execute scheduled task: DB User role assignment sync task (enrol_dbuserrel\task\dbuserrel_sync) ... started 18:09:13. Current memory use 14.4MB. ... used 0 dbqueries ... used 0.17754483222961 seconds Scheduled task failed: DB User role assignment sync task (enrol_dbuserrel\task\dbuserrel_sync),syntax error, unexpected ',' Backtrace: * line ? of unknownfile: call to core_component::classloader() * line 54 of /enrol/dbuserrel/classes/dataport_factory.php: call to spl_autoload_call() * line 58 of /enrol/dbuserrel/lib.php: call to enrol_dbuserrel_dataport_factory::create() * line 123 of /enrol/dbuserrel/lib.php: call to enrol_dbuserrel_plugin-&gt;setup() * line 61 of /enrol/dbuserrel/classes/task/dbuserrel_sync.php: call to enrol_dbuserrel_plugin-&gt;setup_enrolments() * line 248 of /lib/cronlib.php: call to enrol_dbuserrel\task\dbuserrel_sync-&gt;execute() * line 150 of /admin/cli/scheduled_task.php: call to cron_run_inner_scheduled_task()</p>
<p><br />
</p>
<p>test date 15 Sep 2022 </p>
<pre><code>Execute scheduled task: DB User role assignment sync task (enrol_dbuserrel\task\dbuserrel_sync)
... started 18:03:05. Current memory use 17.8MB.
Starting user enrolment synchronisation...
Starting db_init()
10 entries in the external table
0 role assignment entries from dbuserrel found in Moodle DB
35 role entries found in Moodle DB
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|43003
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|57815
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|39875
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|34735
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|40061
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|56607
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|56527
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|27572
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|55279
Warning: [1817] could not find subject user -- skipping personal_tutor|1817|55715
Deleting old role assignations
... used 22 dbqueries
... used 0.43217206001282 seconds
Scheduled task complete: DB User role assignment sync task (enrol_dbuserrel\task\dbuserrel_sync)</code></pre>
<pre><code></code></pre>
</div></td>
</tr>
<tr class="even">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.block_library_resources">plugin-review.ucl.block_library_resources</h4></td>
<td>WR #356622</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.block_library_search">plugin-review.ucl.block_library_search</h4></td>
<td>WR #356622</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.atto_chemrender">plugin-review.ucl.atto_chemrender</h4></td>
<td>WR #363069</td>
<td><a href="attachments/190614186/194974799.pdf">plugin-review.ucl.atto_chemrender.pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-atto_chemrender/-/tree/ucl-WR363069" class="uri">https://git.catalyst-eu.net/ucl/moodle-atto_chemrender/-/tree/ucl-WR363069</a></td>
<td><a href="https://git.automation.ucl.ac.uk/moodle/moodle-atto_chemrender/-/tree/ucl-WR363069" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-atto_chemrender/-/tree/ucl-WR363069</a></td>
<td><a href="Tests-Chemrender" class="uri">Tests-Chemrender</a></td>
<td><br />
</td>
<td>No</td>
<td><p>Error 1</p>
<p>Same errors exists as when plugin review was done that using the ChemDoodle or inserting a molecle and spectrum file.  Neither get added into the text area, stays empty </p></td>
</tr>
<tr class="odd">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.filter_chemrender">plugin-review.ucl.filter_chemrender</h4></td>
<td>WR #363069</td>
<td><br />
</td>
<td>No fixes applied by Catalyst</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.report_myfeedback">plugin-review.ucl.report_myfeedback</h4></td>
<td>WR #363070</td>
<td><a href="attachments/190614186/194974798.pdf">plugin-review.ucl.report_myfeedback.pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-report_myfeedback/-/tree/ucl-WR363070" class="uri">https://git.catalyst-eu.net/ucl/moodle-report_myfeedback/-/tree/ucl-WR363070</a></td>
<td><a href="https://git.automation.ucl.ac.uk/moodle/moodle-report_myfeedback/-/tree/ucl-WR363070" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-report_myfeedback/-/tree/ucl-WR363070</a></td>
<td><p><a href="Tests-MyFeedback" class="uri">Tests-MyFeedback</a></p></td>
<td><br />
</td>
<td><br />
</td>
<td><p>master</p>
<h5 id="CatalystPluginsReview-MYF001T-pass">MYF001T - pass</h5>
<h5 id="CatalystPluginsReview-MYF002T-pass">MYF002T - pass</h5>
<h5 id="CatalystPluginsReview-MYF003T-pass">MYF003T - pass</h5>
<h5 id="CatalystPluginsReview-MYF004T-pass">MYF004T - pass</h5>
<h5 id="CatalystPluginsReview-MYF001S-pass">MYF001S - pass</h5>
<h5 id="CatalystPluginsReview-MYF001S-pass.1">MYF001S - pass</h5>
<p><br />
</p>
<p>ucl-WR363070</p>
<h5 id="CatalystPluginsReview-MYF001T-Pass">MYF001T - Pass</h5>
<h5 id="CatalystPluginsReview-MYF002T-fail">MYF002T - fail</h5>
<h5 id="CatalystPluginsReview-MYF003T-pass.1">MYF003T - pass</h5>
<h5 id="CatalystPluginsReview-MYF004T-failed">MYF004T - failed</h5>
<p>departmental admin dashboard 'stats per assessment' graphs and data not showing</p>
<p><a href="attachments/190614186/197035354.png">feedback-dept-admin-role-master1.png</a></p>
<p><a href="attachments/190614186/197035355.png">feedback-dept-admin-role-master2.png</a></p>
<h5 id="CatalystPluginsReview-MYF001S-pass.2">MYF001S - pass</h5>
<h5 id="CatalystPluginsReview-MYF001S-failed">MYF001S - failed</h5>
<p>failed - self reflective notes pop unable to close.  When clicking save notes and close shows error</p>
<p>A required parameter (sesskey) was missing</p>
<p><a href="http://docs.moodle.org/39/en/error/moodle/missingparam">More information about this error</a><br />
<strong>Debug info:</strong><br />
Error code: missingparam<br />
<strong>Stack trace:</strong></p>
<ul>
<li>line 498 of /lib/setuplib.php: moodle_exception thrown</li>
<li>line 566 of /lib/moodlelib.php: call to print_error()</li>
<li>line 73 of /lib/sessionlib.php: call to required_param()</li>
<li>line 84 of /lib/sessionlib.php: call to confirm_sesskey()</li>
<li>line 69 of /report/myfeedback/index.php: call to require_sesskey()</li>
</ul></td>
</tr>
<tr class="odd">
<td><h4 id="CatalystPluginsReview-plugin-review.ucl.block_portico_enrolments">plugin-review.ucl.block_portico_enrolments</h4></td>
<td>WR #363072</td>
<td><a href="attachments/190614186/194974797.pdf">plugin-review.ucl.block_portico_enrolments.pdf</a></td>
<td><a href="https://git.catalyst-eu.net/ucl/moodle-block_portico_enrolments/-/commits/ucl-WR363072" class="uri">https://git.catalyst-eu.net/ucl/moodle-block_portico_enrolments/-/commits/ucl-WR363072</a></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

[Manual Testing for 3.9](Manual_Testing_for_3.9)

            

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.local\_testaccount\_automation(1).pdf](attachments/190614186/194974793.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.local\_repositoryfileupload.pdf](attachments/190614186/194974794.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.enrol\_dbuserrel.pdf](attachments/190614186/194974795.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.block\_portico\_enrolments.pdf](attachments/190614186/194974797.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.report\_myfeedback.pdf](attachments/190614186/194974798.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [plugin-review.ucl.atto\_chemrender.pdf](attachments/190614186/194974799.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [feedback-dept-admin-role-master1.png](attachments/190614186/197035354.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [feedback-dept-admin-role-master2.png](attachments/190614186/197035355.png) (image/png)

