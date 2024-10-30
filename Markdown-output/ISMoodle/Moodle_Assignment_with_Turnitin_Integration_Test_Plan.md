# Moodle Assignment with Turnitin Integration Test Plan

# AST001 Test Moodle Assignment - Anonymous with Turnitin Similarity Report, Turnitin Rubric and Turnitin Quickmark Set

## Staff - Setup Assignment

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as user with 'Tutor' role</li>
<li>Turn editing on &gt; Add an activity or resource&gt; Assignment </li>
<li>Title assignment name 'Test standard moodle assignment' </li>
<li>Change due date and cut off date to something reasonable </li>
<li>Within Submission types, Check only <strong>File submissions check</strong> box is ticked by default.</li>
<li>Under Turnitin plagiarism plugin settings, check
<ol>
<li>Launch QM manager and create a new QM set;
<ol>
<li><ol>
<li>Assign a Title (QM1) and description (Very good work). Make sure to click save.</li>
<li>Assign a Title (QM2) and description (Very bad work). Make sure to click save.</li>
</ol></li>
</ol></li>
<li><p>Under <strong>Turnitin plagiarism plugin settings</strong></p>
<ol>
<li><p>Enable Turnitin - <strong>Yes</strong></p></li>
<li><p>Display Originality Reports to Students - <strong>Yes</strong></p></li>
<li><p>Store student papers - <strong>No repository</strong></p></li>
<li><p>Report generation - <strong>generate reports immediately students can resubmit..............</strong></p></li>
</ol></li>
</ol></li>
<li>Under <strong>Grade</strong> - leave Anonymous marking set to <strong>Yes</strong>. </li>
<li>Under the <strong>Turnitin plagiarism plugin settings,</strong> Launch Rubric manager
<ol>
<li>Create a new rubric and assign the assignment. </li>
</ol></li>
<li>Change nothing else and save. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Submit Assignment

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as a Student Click the Test Standard Moodle assignment. </li>
<li>Does the Turnitin Rubric display in advance up upload? <strong><br />
</strong></li>
<li>Click the 'This assignment is my own work' checkbox. </li>
<li>Does the Turnitin Quickmark set display in advance of upload? </li>
<li>Upload a file, watch for the maximum file limit size. </li>
<li>You should get a message saying: ‘'''File uploaded successfully'''’ if it is succeeded, otherwise it shows an error message. </li>
<li>Leave a little time for Originality Report to be generated, then run cron.</li>
<li>Go back out of the submission area and then go back into it before the due date. </li>
<li>Check that it has a Turnitin ID </li>
<li>Check that the originality report has been generated (or run cron again when you think it's time). </li>
<li>Delete the uploaded file (click on the file itself in upload area, then delete) and submit another document. </li>
<li>Run cron.</li>
<li>File should upload successfully and submission should be updated with new ID. </li>
<li>Wait for similarity check and run cron again.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Mark Assignment Using Turnitin Feedback Studio and Download Inbox

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as user with 'Tutor' role. </li>
<li>Navigate to the inbox. </li>
<li>Is anonymity working in Tutor view? </li>
<li>For the top submission click its Grademark (Pen) icon to load the feedback studio document viewer in new tab. </li>
<li>See relevant Turnitin test script to use rubric, quickmark, comment. </li>
<li>Give it a mark 67. </li>
<li>Close the Feedback studio tab. </li>
<li>In the Moodle Assignment inbox, check that the mark 67 displays in Grade column. </li>
<li>Click on Grade - can you see the Turnitin Pen icon, along with the full suite of Moodle feedback tools (document marker, comments, feedback files, etc)? </li>
<li>Download the anonymous inbox by selecting all &gt; Grading action &gt; download all submissions - check contents of folders are still anonymous. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Check That Marks Have Not Appeared Yet

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as student and check to see if marks and feedback visible</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Reveal Identity and Check if Grade Feeds to Grade Book

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Check student marks are in grade book and visible to students</li>
<li>Login as student and check to see if marks and feedback visible</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# AST002 Does Enabling the Plugin Change Anything with Existing Moodle Assignments

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Check from staff and student point of view.
<ol>
<li>Via the Admin interface, identify some pre-existing assignments (check dates) with submissions.  <strong></strong></li>
<li>Can the assessor open the submissions? </li>
<li>Are the existing markings still there? </li>
<li>Is there a Turnitin grading interface?</li>
</ol></li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# AST003 Group Moodle Assignment - Anonymous with Turnitin Similarity Report, Turnitin Rubric and Turnitin Quickmark Set

## Staff - Create Group Assignment to Submit 1 File

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Go into Users &gt; Groups </li>
<li>Auto create groups - 3 groups - CW Grp #</li>
<li>Add test students to groups</li>
<li>Add into new grouping - CW Submission </li>
<li>Save </li>
<li>Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment </li>
<li>Title it 'Test group assignment'. </li>
<li>Change due date and cut off date to something reasonable. </li>
<li>Submission types - 1 file submission </li>
<li>Students submit in groups - set to Yes </li>
<li>Require group to make submission - set to Yes </li>
<li>Require all group members to submit - set to No</li>
<li>Make 'Grouping for student groups' the CW Submission grouping </li>
<li>Under Grade - Anonymous marking set to No (to help with keeping track). </li>
<li>Scroll and save. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Submit Group Assignment as Two Students

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Log in as a Student.</li>
<li>Check you can see the rubric. </li>
<li>Submit work to 'Test group assignment'. </li>
<li>Check the date and time of your submission.<strong><br />
</strong></li>
<li>Log in with different test student account which is in the same group.</li>
<li>Check that the second student can see the file (as long as the date has not passed)<strong>.<br />
</strong></li>
<li>Try to make a change to the file - should be prompted that only 1 file is allowed; delete first file and replace with another submission upload. </li>
<li>Check the date and time of the second submission.  <strong></strong></li>
<li>Leave a submission comment eg &quot;I updated this file with our changes&quot;. </li>
<li>Turnitin Similiary Report generates</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - View Inbox for Group Assignment

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as user with 'Tutor' role.<br />
Click on 'Test group assignment'. </li>
<li>In the submission area, click on the 'View all submissions' button. </li>
<li>Students should appear in groups - each with identical assignments in their record. </li>
<li>Check the date and time of submission - should match second submission. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Mark Anonymous Group Assignment

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in with Tutor role</li>
<li>Is the Turnitin ID identical for all members of a group.</li>
<li>Use Moodle Grader to mark the group assignment. Add a grade 66, summary comment and marking to one student's work. </li>
<li>Mark using Feedback Studio to give the uppermost submission in the uppermost group a mark of 88 and run cron</li>
<li>Check marks carry over to Gradebook.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Are the Identities on the Anonymised Submissions Still Hidden Even Though Marks and Feedback are Revealed?

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as tutor</li>
<li>Return to anonymous submission and set marking workflow state to released</li>
<li>Return as student and check if grades are available.</li>
<li>Sign in as another student in the same group, and check grades and feedback are available</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Hide Until Grades in Both Group Assignments

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as Tutor.</li>
<li>Go to gradebook setup</li>
<li>Turn editing on.</li>
<li>Via the Cog icon hide the grades for the items you've set up until e.g. 5 minutes later. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Can They See the Grades of Still Hidden Group Assignments?

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as student.</li>
<li>Can you see the grades? </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Lift Anonymity and Release Marks

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Has anonymity been lifted?</li>
<li>Do all students in the group see the same mark?</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - View Marks and Feedback

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Login as one of the students</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# AST004 Test Marking Workflow

## First Staff - Use Marking Workflow to Defer Release of Marks and Feedback

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as a Tutor, and set up a new assignment titled 'ASS008 individual with marking workflow'. Use default settings except enable Marking Workflow and Marker Allocation.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Submit to Marking Workflow Assignment

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as two students and submit to the workflow-marked assignment</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## First Staff - Allocate One Submission to a Colleague

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as first tutor and allocate one of the submissions to a second tutor.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Second Staff - Find Submissions Allocated to You

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as the second tutor to whom the first tutor allocated submission.</li>
<li>Find submissions allocated to you. <strong><br />
</strong></li>
<li>Mark the work and set to Ready For Release. </li>
<li>Find the next piece of work and allocate to the first tutor. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## First Staff - Reallocate Allocation Back to Second Staff

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Reallocate allocation back to the second tutor</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Sign In to Check Workflow Managed Marks Do Not Show

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as student account  whose work has been graded. ,</li>
<li>Go to 'ASS008 individual with marking workflow'</li>
<li>Check that grade isn't shown in submission area, nor in gradebook. </li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Either Staff - Use Marking Workflow to Release Mark and Feedback on all Assignments Tested

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign back in as staff account click on Test Standard Moodle Assignment .</li>
<li>Show all and select all.</li>
<li>Change Marking workflow state for all students to 'Released' and save.</li>
<li>Pop up should appear saying 'The changes to the grade and feedback were saved'.</li>
<li>To reveal identities select all again and release the identities</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Student - Sign In to Check Workflow Managed Marks Do Show

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as student account,</li>
<li>Go to 'ASS008 individual with marking workflow'</li>
<li>Check that grade does show in submission area</li>
<li>and in gradebook.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# AST005 Test the Collection of Marks and Feedback Gives via Turnitin

## Student - View Individual Marks and Feedback

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>For the individual assignment marked in Turnitin, sign in as the student who submitted and who has received a grade and feedback.</li>
<li>Click the link to the assignment.</li>
<li>You should be able to view the grade and any feedback left on the submitted assignment. <strong></strong></li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Staff - Correct the Mark in Moodle Grader

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Sign in as staff.</li>
<li>In the Moodle grader overwite the 44 with 60.</li>
<li>Run cron.</li>
<li>What do you see? <strong></strong></li>
<li>What does student see? Fail - sees the grade in Turnitin Feedback Studio.</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

# AST006 Test RESET Function

<table>
<thead>
<tr class="header">
<th>Tasks</th>
<th>Date Tested</th>
<th>Tester/Browser</th>
<th>Findings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Create new Moodle assignment (anonymous)</li>
<li>Make submissions (Min 2) as a student</li>
<li>Grade and mark the submitted work</li>
<li>Release grade and feedback using Marking workflow</li>
<li>Reset the course ( select default and check that Use new assignment dates is ticked)
<ol>
<li><strong>For Moodle assignment, there will be No change to the start and due dates of the assignments. A New TII class should be created in the TII website.</strong></li>
</ol></li>
<li>Check TII assignment ID has changed, and that a new Turnitin assignment has been created</li>
<li>Check Moodle assignment with Tii plugin settings to see ensure anonymous assignment is set to 'Yes'</li>
<li>Enrol 2 different students</li>
<li>Make sure student names are not visible in the assignment inbox</li>
<li>Make submissions on behalf of students - ensure they still remain anonymous</li>
<li>Check that TII assignment settings are the same on the Turnritin website as they are on the TII assignment in Moodle</li>
<li>Check that you can edit assignment settings in Moodle</li>
<li>If possible, also test the RESET function on a test course that has carried over from the snapshot taken in 16-Feb-2018 and already has submissions to it.</li>
<li>Check TII assignment settings to see ensure anonymous assignment is set to 'Yes'</li>
</ol></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>


