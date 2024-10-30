# 16/17 - Snapshot Testing - Student / Staff Read Only roles testing

**Process:** LTA create ready only roles on dev instance ahead of snapshot but do not apply, Digi Ed Core test Student read-only role by assigning to specific user, and sign off if all seems ok. After snapshot, LTA apply Student read-only role to all students, and Digi-Ed then do overview testing of student and staff roles, and sign off if all ok.

Ehsan - Can you add in the URL for dev instance once you have set up the roles?

Rod - Could you make sure that the URLs and notes below are recent/relevant? Also make a note of any possible updates to guidance needed?

 

## Pre-Snapshot Tests

### Student Tests

 

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
<th><p>Student Tests - requested role test prior to application of role to all students</p></th>
<th><p>Where tested</p></th>
<th>Date of Test</th>
<th><p>Tester</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Check Log-in</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td> </td>
<td> Should be no site prompt for terms and conditions like has happened in past - previous testing using these details: Logged into: https://moodle-snapshot.ucl.ac.uk/15-16/course/view.php?id=280555 as: Christopher Barker</td>
</tr>
<tr class="even">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=23304" class="uri">https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=23304</a></p></td>
<td>5/7/2017</td>
<td><p>RD</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Logged in as student Tariq Abid</p>
<p>Could read forum posts in News forum.<br />
Could read posts in Social forum <br />
Could not create new discussion in Social forum or reply to existing posts - as expected</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - can review but not alter</p></td>
<td><p><a href="https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=20838" class="uri">https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=20838</a></p></td>
<td>5/7/2017</td>
<td><p>RD</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>logged in as Kirsty Adams to course ID 20838 (GSWMII) can review but not retake quizzes</p></td>
</tr>
<tr class="even">
<td><p>Can see Turnitin Submission</p></td>
<td><p><a href="https://v31.moodle-uat.ucl.ac.uk/mod/turnitintooltwo/view.php?id=2114477" class="uri">https://v31.moodle-uat.ucl.ac.uk/mod/turnitintooltwo/view.php?id=2114477</a></p></td>
<td>5/7/2017</td>
<td><p>RD</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Logged in as student Tariq Abid</p>
<p>Accessed submission in box reviewed assignment in Turnitin Viewer<br />
&amp; could download original assignment</p></td>
</tr>
<tr class="odd">
<td><p>Moodle assignment - can access old submissions</p></td>
<td><p>Tested using johanna stegner as student on: <a href="https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=27413" class="uri">https://v31.moodle-uat.ucl.ac.uk/course/view.php?id=27413</a></p>
<p>submission:</p>
<p><a href="https://v31.moodle-uat.ucl.ac.uk/mod/assign/view.php?id=1689577" class="uri">https://v31.moodle-uat.ucl.ac.uk/mod/assign/view.php?id=1689577</a></p>
<p> </p></td>
<td>5/7/2017</td>
<td><p>RD</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p>Same issue as last year - in order to allow viewing of old submissions editing, and submission on open assignments (there shouldn't be many of those) has to be enabled - this needs reviewing during the year.</p></td>
</tr>
<tr class="even">
<td><p>Can see gradeboook</p></td>
<td><p> </p></td>
<td>5/7/2017</td>
<td><p>RD</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>logged in as <a href="https://moodle-snapshot.ucl.ac.uk/15-16/user/profile.php?id=350327" title="View profile">K</a>irsty Adams to course ID 20838 (GSWMII) can review grades in gradebook</p></td>
</tr>
<tr class="odd">
<td>MyFeedback - Check student can access existing reports</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</tbody>
</table>

Essential Post-Snapshot Checks

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
<th><p>Basic checks</p></th>
<th><p>Details / where checked</p></th>
<th>Date of Test</th>
<th><p>Checker</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Check Guest Access is not available</p></td>
<td> </td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td>Check self-enrolment is disabled as enrolment method</td>
<td> </td>
<td>22/07/2017</td>
<td>RD</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=20838" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=20838</a></p>
<p>Logged in as tutor</p></td>
</tr>
<tr class="odd">
<td><p>Check on any course the student roles are mapped</p></td>
<td><p>Checked <a href="http://on/course/view.php?id=28055">on:/course/view.php?id=28055</a></p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p>
<p><em>Checked on a number of courses - read-only roles mapped in all cases</em></p></td>
</tr>
</tbody>
</table>

### Student Tests

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
<th><p>Student Tests</p></th>
<th><p>Where tested</p></th>
<th>Date of Test</th>
<th><p>Tester</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Check Log-in</p></td>
<td><p>Logged into:<br />
<a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=36021" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=36021</a> as ccaardi_s5434</p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/forum/view.php?f=99813" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/forum/view.php?f=99813</a></p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p> </p>
<p><em>logged in as Aavirbhav Mohan :</em> Could read forum posts in News forum. Could read posts in normal forum.  Could not create new discussion or reply to existing posts - as expected</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - can review but not alter</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/quiz/view.php?id=1862003" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/quiz/view.php?id=1862003</a> as ccaardi_s5434</p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Can see Turnitin Submission</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/turnitintooltwo/view.php?id=2609641&amp;do=submissions" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/turnitintooltwo/view.php?id=2609641&amp;do=submissions</a></p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p>
<p><em>16/17 notes:</em> logged in as Aavirbhav Mohan could see submission and similarity report</p></td>
</tr>
<tr class="odd">
<td><p>Moodle assignment - can access old submissions</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/assign/view.php?id=2655731" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/assign/view.php?id=2655731</a></p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p><em>16/17 notes:</em> logged in as Aavirbhav Mohan</p>
<p><em>can access old assignment</em>.</p></td>
</tr>
<tr class="even">
<td><p>Can see gradeboook</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=24537" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=24537</a></p></td>
<td>22/07/2017</td>
<td><p>RD</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p>
<p>16/17 notes: logged in as Aavirbhav Mohan</p></td>
</tr>
<tr class="odd">
<td>MyFeedback - Check student can access existing reports</td>
<td><a href="https://moodle-snapshot.ucl.ac.uk/16-17/report/myfeedback/" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/report/myfeedback/</a></td>
<td>22/07/2017</td>
<td>RD</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><em>16/17 notes:</em> logged in as Aavirbhav Mohan</td>
</tr>
</tbody>
</table>

## Staff read-only roles during and after editing grace period

### Staff Tests - during one month grace period, on UAT

Test Staff Read Only role created by LTA on UAT, by assigning to user on course and logging in as, then doing following tests.  

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
<th><p>Staff Tests</p></th>
<th><p>Where tested (Use UAT courses! Notes from previous years only for indication)</p></th>
<th>Date of Test</th>
<th><p>Tester</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Cannot turn editing on</td>
<td>Checked in <a href="https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649" class="uri">https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649</a></td>
<td>21/8/17</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>No 'Turn editing on' button or option in the Settings block</td>
</tr>
<tr class="even">
<td>Cannot enrol other users</td>
<td>Checked in <a href="https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649" class="uri">https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649</a></td>
<td>21/8/17</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>No facility to enrol users - can only see who is already enrolled.</td>
</tr>
<tr class="odd">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649" class="uri">https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=5649</a></p></td>
<td>21/8/17</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p>Could read forum posts in News forum. Could read posts in normal forum. Could not create new discussion or reply to existing posts - as expected</p></td>
</tr>
<tr class="even">
<td><p>Quizzes - can review but not alter</p></td>
<td><p>Checked in https://v315.moodle-uat.ucl.ac.uk/mod/quiz/view.php?id=563621</p></td>
<td>21/8/17</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p><strong>Quiz administration</strong> block</p>
<ul>
<li><strong>Preview</strong> - Can preview - but if previewing requires a password, then you have to know the password 'cus you can't go into edit settings to look it up</li>
<li><strong>Results</strong>
<ul>
<li><strong>Grades</strong> - slow response from Moodle - can view but can't edit them</li>
<li><strong>Responses</strong> - slow response from Moodle - can view but can't edit them</li>
<li><strong>Statistics</strong> - slow response from Moodle - can view stats but can't edit them</li>
<li><strong>CBM Grades</strong> - - slow response from Moodle - can view but can't edit them</li>
</ul></li>
<li><strong>Logs</strong> - Not possible to view logs</li>
<li><strong>Backup</strong> - it seems like you can although you can't change the backup settings, however after claiming to having successfully created a backup file the following error message appears with a Continue button that takes you back to the quiz's landing page:
<ul>
<li><ul>
<li><ul>
<li><div class="box errorbox">
<p>Sorry, but you do not currently have permissions to do that (Restore courses)</p>
<p><a href="http://docs.moodle.org/31/en/error/moodle/nopermissions">More information about this error</a></p>
</div>
<div>
<strong>Debug info:</strong><br />
Error code: nopermissions
</div>
<div>
<strong>Stack trace:</strong>
<ul>
<li>line 788 of /lib/accesslib.php: required_capability_exception thrown</li>
<li>line 62 of /backup/restorefile.php: call to require_capability()</li>
</ul>
</div></li>
</ul></li>
</ul></li>
</ul></li>
<li><strong>Question bank</strong>
<ul>
<li><strong>Questions</strong> - Can preview questions, can update and save 'Attempt options' and 'Display options' but can't edit the actual question asked or the answers/choices given where applicable</li>
<li><strong>Export</strong> - Can export questions</li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Can see Turnitin Submission</p></td>
<td><p><a href="https://v315.moodle-uat.ucl.ac.uk/mod/turnitintooltwo/view.php?id=2760123&amp;do=submissions">Checked in https://v315.moodle-uat.ucl.ac.uk/mod/turnitintooltwo/view.php?id=2760123&amp;do=submissions</a></p></td>
<td>21/8/17</td>
<td>KSC</td>
<td> </td>
<td><p>Staff readonly role could click on the assignment and see all the submissions listed. However submissions don't open - when she clicked on a particular submission using a link under the 'Submission Title', Similarity and Grade column headings the following error message opened in a new tab instead of the student's paper:</p>
<p> </p>
<div class="panel-body">
<h3 id="id-16/17SnapshotTestingStudent/StaffReadOnlyrolestesting-&quot;TurnitinError" class="panel-title errorpage-h1">&quot;Turnitin Error</h3>
<div class="panel-heading">
Sorry, we could not process your request.
</div>
<div class="panel-body">
You are not authorized to access this resource.&quot;
</div>
</div>
<div class="panel-body">
<div class="panel-body">
                    
</div>
</div>
<p>Neither could Staff readonly download either Original submissions and Grademarked submissions.</p></td>
</tr>
<tr class="even">
<td><p>Moodle assignment - can access all old submissions</p></td>
<td><p>Checked using <a href="https://v315.moodle-uat.ucl.ac.uk/mod/assign/view.php?id=2806755&amp;action=grading" class="uri">https://v315.moodle-uat.ucl.ac.uk/mod/assign/view.php?id=2806755&amp;action=grading</a></p></td>
<td>21/8/17</td>
<td>KSC</td>
<td> </td>
<td><p>Staff readonly can access and edit old submissions to Moodle assignments.</p></td>
</tr>
<tr class="odd">
<td><p>Can see gradeboook</p></td>
<td><p>Checked using <a href="https://v315.moodle-uat.ucl.ac.uk/grade/report/grader/index.php?id=41374" class="uri">https://v315.moodle-uat.ucl.ac.uk/grade/report/grader/index.php?id=41374</a></p></td>
<td>21/8/17</td>
<td>KSC</td>
<td> </td>
<td>Staff readonly can see and seems able to modify grades in the gradebook but when you download the data it becomes apparent that the changes weren't saved. (A small text box does warns the user that the grade can't be changed despite appearances). But it is possible to change and save some settings concerning the way the gradebook displays on the screen.</td>
</tr>
<tr class="even">
<td>Can see MyFeedback for student on course</td>
<td>Checked using <a href="https://v315.moodle-uat.ucl.ac.uk/report/myfeedback/index.php?userid=524518&amp;currenttab=mymodules" class="uri">https://v315.moodle-uat.ucl.ac.uk/report/myfeedback/index.php?userid=524518&amp;currenttab=mymodules</a></td>
<td>21/8/17</td>
<td>KSC</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>Staff readonly can see his/her <strong>My Students</strong> and <strong>Personal tutor dashboard</strong> in MyFeedback. This role can also export data to Excel. Editing not usually an option and no facility edit apparent here.</td>
</tr>
</tbody>
</table>

### Staff Tests - After mapping of read-only roles to staff on live snapshot

Assign role to be tested to user on course, log in as, and run through tests. (Apart from test 1, Check login, which needs to be done with a fresh test account, and need not be done for repeatedly for all roles.)

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
<th><p>Tutor Tests</p></th>
<th><p>Where tested</p></th>
<th>Date of Test</th>
<th><p>Tester</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes - Apply tests to following roles: Tutor, Course Admin, Manager, Course Creator, Non-editing Tutor, Service Desk Administrator, Overviewing Advisor, Leader, Library Administrator, Course Administrator (no email), Non-editing Tutor (no emails) </p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Check Log-in</p></td>
<td><p>Logged into:<br />
<a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=28055" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=28055</a> as:<br />
Test account a.tutor assigned to Tutor-read-only role on this course</p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>(NB. Needs to be done with a fresh test account, and need only be done once, not for all roles.)</p>
<p> </p>
<p><em>16/17 notes:</em> Log-in OK got site agreement as expected and continued to course</p></td>
</tr>
<tr class="even">
<td>Cannot turn editing on</td>
<td> </td>
<td> </td>
<td>KSC</td>
<td> </td>
<td><p><strong>Tutor:</strong> Cannot turn editing on<br />
<strong>Course Admin:</strong> Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong>  Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p></td>
</tr>
<tr class="odd">
<td>Cannot enrol other users</td>
<td> </td>
<td> </td>
<td>KSC</td>
<td> </td>
<td><strong>Tutor:</strong> Cannot enrol other users<br />
<strong>Course Admin:</strong> Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader</strong>: Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </td>
</tr>
<tr class="even">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=5649" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=5649</a></p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p> </p></td>
<td><p><strong>Tutor:</strong> Can read but cannot start new discussion threads, or post or reply to forums<br />
<strong>Course Admin:</strong> Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong> Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p>
<p><em>15/16 notes:</em> Could read forum posts in News forum. Could read posts in normal forum.  Could not create new discussion or reply to existing posts - as expected</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - can review but not alter</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=13111" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=13111</a></p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p> </p></td>
<td><p><strong>Tutor:</strong> Quiz administration block</p>
<ul>
<li><ul>
<li>Preview - Can preview - but if previewing requires a password, then you have to know the password 'cus you can't go into edit settings to look it up</li>
<li>Results
<ul>
<li>Grades - can change report settings - but can only view marking data but can't edit it</li>
<li>Responses - can change report settings - but can only view marking data but can't edit it</li>
<li>Statistics - can change stats calculation settings - can view stats but can't edit them</li>
<li>CBM Grades - can change report settings - but can only view data in report can't edit it</li>
</ul></li>
<li>Logs - can view logs</li>
<li>Backup - <strong>NOT TESTED</strong></li>
<li>Question bank
<ul>
<li>Questions - Can preview questions, can update and save 'Attempt options' and 'Display options' but can't edit the actual question asked or the answers/choices given where applicable</li>
<li>Export - Can export questions</li>
</ul></li>
</ul></li>
</ul>
<p><br />
<strong>Course Admin:</strong> Ditto all<br />
<strong>Manager:</strong> Ditto all<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong> Ditto all<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p>
<p><em>15/16 notes:</em> Could access and review quiz and all student attempts - could not alter questions or change quiz settings</p></td>
</tr>
<tr class="even">
<td><p>Can see Turnitin Submission</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/turnitintooltwo/view.php?id=2897197" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/turnitintooltwo/view.php?id=2897197</a></p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p> </p></td>
<td><p><strong>Tutor:</strong> Can view Turnitin submissions, mark in Turnitin and download original, current and digital receipt documents but can't edit Turnitin settings</p>
<p><strong>Course Admin:</strong> Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong> <strong></strong> Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p>
<p> </p></td>
</tr>
<tr class="odd">
<td><p>Moodle assignment - can access all old submissions</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/mod/assign/view.php?id=2921641&amp;action=grading" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/mod/assign/view.php?id=2921641&amp;action=grading</a></p>
<p>and</p>
<p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/grade/report/grader/index.php?id=41343" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/grade/report/grader/index.php?id=41343</a> with Marking Workflow activated.</p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p> </p></td>
<td><p><strong>Tutor:</strong> Staff readonly can open submissions but they can also edit the grades and feedback previously given to these submissions in Moodle assignments. However, changes that are made to the assignment grade DO NOT change the grades in the the gradebook even when a rubric is used to gade submissions. When the Marking workflow function is used it is not possible to release the new or revised grades to students.<br />
<strong>Course Admin:</strong> Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong> Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p>
<p><em>15/16 notes:</em> Same issue as last year still needs resolving - in order to allow viewing of old submissions editing, and submission on open assignments (there shouldn't be many of those) has to be enabled - this needs reviewing during the year.</p></td>
</tr>
<tr class="even">
<td><p>Can see gradeboook</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/16-17/grade/report/grader/index.php?id=6603" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/grade/report/grader/index.php?id=6603</a></p></td>
<td> </td>
<td><p>KSC</p></td>
<td><p> </p></td>
<td><p><strong>Tutor:</strong> Staff readonly can see but is unable to modify grades in the gradebook. (A small text box does warns the user that the grade can't be changed despite appearances). But it is possible to change and save some settings concerning the way the gradebook displays on the screen. They can download the gradebook data.<br />
<strong>Course Admin: </strong>Ditto<br />
<strong>Manager:</strong> Ditto<br />
Course Creator:<br />
<strong>Non-editing Tutor:</strong> Ditto<br />
Service Desk Administrator:<br />
Overviewing Advisor:<br />
<strong>Leader:</strong> <strong></strong> Ditto<br />
Library Administrator:<br />
Course Administrator (no email):<br />
Non-editing Tutor (no emails): </p>
<p><em>15/16 notes:</em> Can see but not modify gradebook</p></td>
</tr>
<tr class="odd">
<td>Can see MyFeedback for student on course</td>
<td>Logged in as Amandeep Bains on <a href="https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=6603" class="uri">https://moodle-snapshot.ucl.ac.uk/16-17/course/view.php?id=6603</a> to access MyFeedback.</td>
<td> </td>
<td>KSC</td>
<td> </td>
<td>Staff readonly can see his <strong>My Students</strong> and <strong>Personal tutor dashboard</strong> in MyFeedback. This role can also export data to Excel. Editing not usually an option and no facility edit apparent here.</td>
</tr>
</tbody>
</table>

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2017-7-14 17:13:53.png](attachments/70126977/70129770.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2017-7-14 17:15:40.png](attachments/70126977/70129772.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2017-7-14 17:16:56.png](attachments/70126977/70129773.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2017-7-14 17:28:23.png](attachments/70126977/70129774.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2017-7-14 17:34:47.png](attachments/70126977/70129777.png) (image/png)

