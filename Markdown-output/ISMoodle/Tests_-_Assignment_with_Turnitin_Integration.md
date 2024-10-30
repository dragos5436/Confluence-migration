# Tests - Assignment with Turnitin Integration

-   [Background](#TestsAssignmentwithTurnitinIntegration-Background)
-   [ASS001 - Test Moodle Assignment - anonymous with Turnitin similarity report, Turnitin rubric and Turnitin quickmark set](#TestsAssignmentwithTurnitinIntegration-ASS001-TestMoodleAssignment-anonymouswithTurnitinsimilarityreport,TurnitinrubricandTurnitinquickmarkset)
    -   [Staff - set up assignment](#TestsAssignmentwithTurnitinIntegration-Staff-setupassignment)
    -   [Student - submit assignment](#TestsAssignmentwithTurnitinIntegration-Student-submitassignment)
    -   [Staff - mark assignment using Turnitin Feedback Studio; download inbox](#TestsAssignmentwithTurnitinIntegration-Staff-markassignmentusingTurnitinFeedbackStudio;downloadinbox)
    -   [Student - check that marks have not appeared yet](#TestsAssignmentwithTurnitinIntegration-Student-checkthatmarkshavenotappearedyet)
-   [ASS002 - does enabling the plugin change anything with existing Moodle Assignments](#TestsAssignmentwithTurnitinIntegration-ASS002-doesenablingthepluginchangeanythingwithexistingMoodleAssignments)
-   [ASS004 Group Moodle Assignment - anonymous with Turnitin similarity report, Turnitin rubric and Turnitin quickmark set](#TestsAssignmentwithTurnitinIntegration-ASS004GroupMoodleAssignment-anonymouswithTurnitinsimilarityreport,TurnitinrubricandTurnitinquickmarkset)
    -   [Staff - create group assignment to submit 1 file](#TestsAssignmentwithTurnitinIntegration-Staff-creategroupassignmenttosubmit1file)
    -   [Staff - create ANONYMOUS group assignment to submit 1 file](#TestsAssignmentwithTurnitinIntegration-Staff-createANONYMOUSgroupassignmenttosubmit1file)
-   [ASS007 Test groups](#TestsAssignmentwithTurnitinIntegration-ASS007Testgroups)
    -   [Student - submit group assignment as two students](#TestsAssignmentwithTurnitinIntegration-Student-submitgroupassignmentastwostudents)
    -   [Staff - view inbox for group assignment](#TestsAssignmentwithTurnitinIntegration-Staff-viewinboxforgroupassignment)
    -   [Staff - mark the not-anonymous group assignment.](#TestsAssignmentwithTurnitinIntegration-Staff-markthenot-anonymousgroupassignment.)
    -   [Staff - mark anonymous group assignment.](#TestsAssignmentwithTurnitinIntegration-Staff-markanonymousgroupassignment.)
    -   [Student - can they see the grades of the not-anonymous group assignment?](#TestsAssignmentwithTurnitinIntegration-Student-cantheyseethegradesofthenot-anonymousgroupassignment?)
    -   [Student - can they see the grades of the anonymous group assignment?](#TestsAssignmentwithTurnitinIntegration-Student-cantheyseethegradesoftheanonymousgroupassignment?)
    -   [Staff - hide-until grades in both group assignments](#TestsAssignmentwithTurnitinIntegration-Staff-hide-untilgradesinbothgroupassignments)
    -   [Student - can they see the grades of still-hidden group assignments?](#TestsAssignmentwithTurnitinIntegration-Student-cantheyseethegradesofstill-hiddengroupassignments?)
    -   [Student - can they see the grades of revealed hidden-until group assignments?](#TestsAssignmentwithTurnitinIntegration-Student-cantheyseethegradesofrevealedhidden-untilgroupassignments?)
    -   [Staff - are the identities on the anonymised submissions still hidden even though marks and feedback are revealed?](#TestsAssignmentwithTurnitinIntegration-Staff-aretheidentitiesontheanonymisedsubmissionsstillhiddeneventhoughmarksandfeedbackarerevealed?)
-   [ASS008 Test marking workflow](#TestsAssignmentwithTurnitinIntegration-ASS008Testmarkingworkflow)
    -   [Staff - use marking workflow to defer release of marks and feedback](#TestsAssignmentwithTurnitinIntegration-Staff-usemarkingworkflowtodeferreleaseofmarksandfeedback)
    -   [Student sign in and submit](#TestsAssignmentwithTurnitinIntegration-Studentsigninandsubmit)
    -   [Staff - allocate one submission to a colleague](#TestsAssignmentwithTurnitinIntegration-Staff-allocateonesubmissiontoacolleague)
    -   [Second tutor - find submissions allocated to you](#TestsAssignmentwithTurnitinIntegration-Secondtutor-findsubmissionsallocatedtoyou)
    -   [First tutor - re-allocate allocation back to second tutor](#TestsAssignmentwithTurnitinIntegration-Firsttutor-re-allocateallocationbacktosecondtutor)
    -   [Student - sign in to check workflow-managed marks do not show](#TestsAssignmentwithTurnitinIntegration-Student-signintocheckworkflow-managedmarksdonotshow)
    -   [Staff - use marking workflow to release marks and feedback on all assignments tested](#TestsAssignmentwithTurnitinIntegration-Staff-usemarkingworkflowtoreleasemarksandfeedbackonallassignmentstested)
    -   [Student - sign in to check workflow-managed marks DO now show](#TestsAssignmentwithTurnitinIntegration-Student-signintocheckworkflow-managedmarksDOnowshow)
-   [ASS09 Test the collection of marks and feedback given via Tii](#TestsAssignmentwithTurnitinIntegration-ASS09TestthecollectionofmarksandfeedbackgivenviaTii)
    -   [Student - view individual marks and feedback](#TestsAssignmentwithTurnitinIntegration-Student-viewindividualmarksandfeedback)

[Test for conflicts between Tii & Moodle grading](#TestsAssignmentwithTurnitinIntegration-TestforconflictsbetweenTii&Moodlegrading)
-   [ASS010 simulate conflict between grading interface](#TestsAssignmentwithTurnitinIntegration-ASS010simulateconflictbetweengradinginterface)
    -   [Staff - set up assignment to be graded exclusively with Moodle Grader (not Tii)](#TestsAssignmentwithTurnitinIntegration-Staff-setupassignmenttobegradedexclusivelywithMoodleGrader(notTii))
    -   [Student - upload work](#TestsAssignmentwithTurnitinIntegration-Student-uploadwork)
    -   [Staff - mark the work with Moodle Grader only](#TestsAssignmentwithTurnitinIntegration-Staff-marktheworkwithMoodleGraderonly)
    -   [Staff - be a second tutor who has misunderstood and entered conflicting marks with another marker](#TestsAssignmentwithTurnitinIntegration-Staff-beasecondtutorwhohasmisunderstoodandenteredconflictingmarkswithanothermarker)
    -   [Student - with work marked both in Moodle grader and Turnitin grader, what do you see?](#TestsAssignmentwithTurnitinIntegration-Student-withworkmarkedbothinMoodlegraderandTurnitingrader,whatdoyousee?)
    -   [Staff - correct the mark in Moodle Grader](#TestsAssignmentwithTurnitinIntegration-Staff-correctthemarkinMoodleGrader)
-   [Conclusion and actions](#TestsAssignmentwithTurnitinIntegration-Conclusionandactions)
    -   [Other tests](#TestsAssignmentwithTurnitinIntegration-Othertests)

Mira improvised this so it may not conform to the usual test scripts. Ready, though a bit rough round the edges.

## Background

<https://moodle.org/plugins/plagiarism_turnitin>

## ASS001 - Test Moodle Assignment - anonymous with Turnitin similarity report, Turnitin rubric and Turnitin quickmark set

### Staff  - set up assignment

1.  Login as user with 'Tutor' role **Pass.**
2.  Turn editing on &gt; Add an activity or resource&gt; Assignment  **Pass.**
3.  Title it 'Test standard moodle assignment' **Pass.**
4.  Change due date and cut off date to something reasonable **Pass.**. 
5.  Check only file upload is permitted.  **Pass.**
6.  Under Grade - leave Anonymous marking set to Yes. **Pass.**
7.  Under the Turnitin settings create a Quickmark set and make it default. **Pass.**
8.  Under the Turnitin settings create a Rubric and make it default. **Pass.**
9.  Change nothing else and save. **Pass.**
10. Run cron (if on Dev). **Pass.**

### Student - submit assignment

1.  Login as a Student **Pass.**
2.  Click the Standard Moodle assignment. **Pass.**
3.  Does the Turnitin Rubric display in advance up upload?  **Barely a pass. Not until you click Add Submission, so students wouldn't know it existed until ready to submit. Neither of the Close buttons work - you have to know to click away.
    **
4.  Click the 'Own work' checkbox. **Barely pass - it is way too small and the Rubric click zone is too big so you can accidentally activate it while trying to click the tiny checkbox.**
5.  Does the Turnitin Quickmark set display in advance of upload? **Fail, but it never promised to.**
6.  Upload a file, watch for the maximum file limit size. **Pass**.
7.  You should get a message saying: ‘'''File uploaded successfully'''’ if it is succeeded, otherwise it shows an error message. **Pass.**
8.  Leave a little time for Originality Report to be generated, then run cron. **Pass.**
9.  Go back out of the submission area and then go back into it before the due date. **Pass.**
10. Check that it has a Turnitin ID **Pass. Rubric link displays here too.**
11. Check that the originality report has been generated (or run cron again when you think it's time). **Pass.**
12. Delete the uploaded file (click on the file itself in upload area, then delete) and submit another document. **Pass**.
13. Run cron. **Pass.**
14. File should upload successfully and submission should be updated with new ID. **Pass.**
15. Wait for similarity check and run cron again. ***Not expecting a similarity report since it's one per student per 24h.***

### Staff - mark assignment using Turnitin Feedback Studio; download inbox

1.  Login as user with 'Tutor' role. **Pass.**
2.  Navigate to the inbox. **Pass.**
3.  Is anonymity working in Tutor view? **Pass.**
4.  For the top submission click its Grademark (Pen) icon to load the feedback studio document viewer in new tab. **Pass.**
5.  See relevant Turnitin test script to use rubric, quickmark, comment. **Pass.**
6.  Give it a mark 67. **Pass.**
7.  Close the Feedback studio tab. **Pass.**
8.  In the Moodle Assignment inbox, check that the mark 67 displays in Grade column. **Pass - and if you're in the Moodle Grader it updates there too.**
9.  Click on Grade - can you see the Turnitin Pen icon, along with the full suite of Moodle feedback tools (document marker, comments, feedback files, etc)? **Pass.**
10. Download the anonymous inbox by selecting all &gt; Grading action &gt; download all submissions - check contents of folders are still anonymous. **Pass.**

### Student - check that marks have not appeared yet

## ASS002 - does enabling the plugin change anything with existing Moodle Assignments

Check from staff and student point of view.

1.  Via the Admin interface, identify some pre-existing assignments (check dates) with submissions. **eg <https://v315.moodle-dev.ucl.ac.uk/mod/assign/view.php?id=2636491> **
2.  Can the assessor open the submissions? FAIL - doesn't display file or grading interface - see scrnsht\_broken.JPG
3.  Are the existing markings still there? **FAIL - doesn't display file or grading interface**
4.  Is there a Turnitin grading interface? **FAIL - doesn't display file or grading interface**

## ASS004 Group Moodle Assignment - anonymous with Turnitin similarity report, Turnitin rubric and Turnitin quickmark set

### Staff - create group assignment to submit 1 file

1.  Go into Users &gt; Groups  **Pass.**
2.  Auto create groups - 3 groups - CW Grp \# **Pass.**
3.  Add into new grouping - CW Submission **Pass.**
4.  Save **Pass.**
5.  Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment  **Pass.**
6.  Title it 'Test group assignment'. **Pass.**
7.  Change due date and cut off date to something reasonable. **Pass.**
8.  Submission types - 1 file submission **Pass.**
9.  Students submit in groups - set to Yes  **Pass.**
10. Require group to make submission - set to Yes  **Pass.**
11. Require all group members to submit - set to No currently setting ghosted out.
12. To simulate misunderstanding, in Turnitin plagiarism plugin settings, simulate a misunderstanding by checking there is a default Quickmark set - ***note that you can't mark in Turnitin with groups.***
13. And also enable a Rubric - ***note as above.***
14. Make 'Grouping for student groups' the CW Submission grouping **Pass.**
15. Under Grade - Anonymous marking set to No (to help with keeping track). **Pass.**
16. Scroll and save. **Pass.**

### Staff - create ANONYMOUS group assignment to submit 1 file

This is to check how grades display by default, and whether anonymity makes a difference

1.  Go into Users &gt; Groups  **Pass.**
2.  Auto create groups - 3 groups - CW Grp \# **Pass.**
3.  Add into new grouping - CW Submission **Pass.**
4.  Save **Pass.**
5.  Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment  **Pass.**
6.  Title it 'Test group assignment'. **Pass.**
7.  Change due date and cut off date to something reasonable. **Pass.**
8.  Submission types - 1 file submission **Pass.**
9.  Students submit in groups - set to Yes  **Pass.**
10. Require group to make submission - set to Yes  **Pass.**
11. Require all group members to submit - set to No currently setting ghosted out.
12. To simulate misunderstanding, in Turnitin plagiarism plugin settings, simulate a misunderstanding by checking there is a default Quickmark set - ***note that you can't mark in Turnitin with groups.***
13. And also enable a Rubric - ***note as above.***
14. Make 'Grouping for student groups' the CW Submission grouping **Pass.**
15. Under Grade - Anonymous marking set to Yes. **Pass.**
16. Scroll and save. **Pass.**

## ASS007 Test groups

### Student - submit group assignment as two students

1.  Log in as a Student.
2.  Check you can see the rubric. **Pass.**
3.  Submit work to 'Test group assignment'. **Pass.**
4.  Check the date and time of your submission. **Thur 19 Oct 4.37pm**
5.  Log in with different test student account which is in the same group.
6.  Check that the second student can see the file (as long as the date has not passed)**. Pass.**
7.  Try to make a change to the file - should be prompted that only 1 file is allowed; delete first file and replace with another submission upload. **Pass.**
8.  Check the date and time of the second submission. **19 October 2017, 4:41 PM**
9.  Leave a submission comment eg "I updated this file with our changes". **Pass.**
10. (Optional: log back in as first student; note the comment is anonymous). **Pass - but commenters see own names so won't realise.**

### Staff - view inbox for group assignment

1.  Login as user with 'Tutor' role. **Pass.**
2.  Click on 'Test group assignment'. **Pass.**
3.  In the submission area, click on the 'View all submissions' button. **Pass.**
4.  Students should appear in groups - each with identical assignments in their record. **Pass.**
5.  Check the date and time of submission - should match second submission. **Pass.**

### Staff - mark the not-anonymous group assignment.

1.  Sign in with Tutor role.
2.  Go to the not-anonymous assignment.
3.  Is there a Turnitin Pen icon for each group member? **Yes.**
4.  If there's a Pen icon, try effing things up by using Feedback Studio to give the uppermost submission in the uppermost group a mark of 88 and run cron - **Hidden fail. Turnitin does overwrite the Moodle grade.  the original submission also displays in the Feedback Studio dropdown. But we knew this doesn't work already.**
5.  Use Moodle Grader to mark the group assignment. Add a grade 87, summary comment and marking to one student's work. **Pass.**
6.  Run cron. Is the grade in the gradebook overwritten with 87? **Pass.**
7.  What happens to the grade in Feedback Studio. **As expected, fail - it stays the same.**
8.  Conclusion: Turnitin doesn't allow group marking, but the integration handles that very clumsily so it seems as if it does - **DONE advise staff in the guidance**.

### Staff - mark anonymous group assignment.

1.  Sign in with Tutor role.
2.  Is there a Turnitin Pen icon for each group member? **Yes.**
3.  If there's a Pen icon, try effing things up by using Feedback Studio to give the uppermost submission in the uppermost group a mark of 88 and run cron - **Hidden fail. Turnitin does overwrite the Moodle grade.  the original submission also displays in the Feedback Studio dropdown. But we knew this doesn't work already.**
4.  Use Moodle Grader to mark the group assignment. Add a grade 25, summary comment and marking to one student's work. **Pass.**

### Student - can they see the grades of the not-anonymous group assignment?

No other steps have been taken to hide the grades, so this is the default.

1.  Run cron.
2.  Sign in as studentand check. **Yes**
3.  Conclusion: needs active steps to hide grades from students - DONE guidance needed about hiding grades

### Student - can they see the grades of the anonymous group assignment?

No other steps have been taken to hide the grades, so this is the default.

1.  Run cron.
2.  Sign in and check. **Yes.**
3.  Conclusion: needs active steps to hide grades from students - DONE guidance needed about hiding grades

### Staff - hide-until grades in both group assignments

1.  Sign in as Tutor.
2.  Go to gradebook.
3.  Turn editing on.
4.  Via the Cog icon hide the grades for the items you've set up until e.g. 5 minutes later. Pass - though the Hidden until Eyelash-Calendar icon in the gradebook is ridiculously small.

### Student - can they see the grades of still-hidden group assignments?

1.  Sign in as student.
2.  Can you see the grades? Pass - can't see the hidden grades.

### Student - can they see the grades of revealed hidden-until group assignments?

1.  Sign in as student.
2.  Can you see the grades? Pass, can see grades once cron has run.

### Staff - are the identities on the anonymised submissions still hidden even though marks and feedback are revealed?

1.  Sign in as tutor
2.  Return to anonymous submission with marks revealed - submissions should still be anonymous. Pass.
3.  Conclusion: Moodle Assignment allows release of feedback to students without lifting anonymity. Useful to know. Add to comparison guidance.

## ASS008 Test marking workflow

### Staff - use marking workflow to defer release of marks and feedback

1.  Sign in as a Tutor, and set up a new assignment titled 'ASS008 individual with marking workflow'. Use default settings except enable Marking Workflow and Marker Allocation.  **Pass.**

### Student sign in and submit

1.  Sign in as two students and submit to the workflow-marked assignment - **Pass**

### Staff - allocate one submission to a colleague

1.  Sign in as first tutor and allocate one of the submissions to a second tutor. **Pass**.

### Second tutor - find submissions allocated to you

1.  Sign in as the second tutor to whom the first tutor allocated submission.
2.  Find submissions allocated to you. **Pass - appears in dedicated Marker column in Gradebook. Can sort column to easily find own - and below there are filters to find own
    **
3.  Mark the work and set to Ready For Release. **Pass.**
4.  Find the next piece of work and allocate to the first tutor.  **Pass.**

### First tutor - re-allocate allocation back to second tutor

Pass.

### Student - sign in to check workflow-managed marks do not show

1.  Sign in as student account,
2.  Go to 'ASS008 individual with marking workflow'
3.  Check that grade isn't shown in submission area, nor in gradebook. ****Pass.**
    **

### Staff - use marking workflow to release marks and feedback on all assignments tested

1.  Sign back in as staff account click on Test Standard Moodle Assignment .
2.  Show all and select all.
3.  Change Marking workflow state for all students to 'Released' and save.
4.  Pop up should appear saying 'The changes to the grade and feedback were saved'.
5.  To reveal identities select all again and release the identities

### Student - sign in to check workflow-managed marks DO now show

1.  Sign in as student account,
2.  Go to 'ASS008 individual with marking workflow'
3.  Check that grade does show in submission area, and in gradebook. **
    **

## ASS09 Test the collection of marks and feedback given via Tii

###  Student - view individual marks and feedback

1.  For the individual assignment marked in Turnitin, sign in as the student who submitted and who has received a grade and feedback.
2.  Click the link to the assignment.
3.  You should be able to view the grade and any feedback left on the submitted assignment. **Currently not working - grade displays in the Feedback section but no typed feedback.**

# Test for conflicts between Tii & Moodle grading

## ASS010 simulate conflict between grading interface

Since there are two grading interfaces, this is to test whether

-   we can get the right links to feedback to display to students.
-   what happens when there are conflicts e.g. one grade entered in Tii and then one grade in Moodle Grader.

### Staff - set up assignment to be graded exclusively with Moodle Grader (not Tii)

Hopefully the Tii feedback links do not display.

1.  Login as user with 'Tutor' role
2.  Turn editing on &gt; Add an activity or resource&gt; Assignment 
3.  Title it 'ASS009 Test standard Moodle Assignment without Turnitin grading'
4.  Change due date and cut off date to something reasonable. 
5.  Check only file upload is permitted. 
6.  Under Grade - set Anonymous marking to No
7.  Change nothing else and save.
8.  Sign in as student and submit.
9.  Sign in as staff and mark the work using exclusively the Moodle interface. Check the Tii similarity report but do not type.
10. Release the feedback.
11. Sign in as student and view feedback.  **Passes.**

### Student - upload work

1.  Log in as student
2.  Submit a file to 'ASS009 Test standard Moodle Assignment without Turnitin grading'.

### Staff - mark the work with Moodle Grader only

1.  Run cron.
2.  Log in as staff.
3.  Go 'ASS009 Test standard Moodle Assignment without Turnitin grading'
4.  Find and mark the submitted file using ONLY the Moodle grading interface.
5.  Give it 60/100.
6.  Enter a Feedback comment.
7.  Check the similarity report.
8.  Save changes

### Staff - be a second tutor who has misunderstood and entered conflicting marks with another marker

1.  Be a second assessor
2.  Go 'ASS009 Test standard Moodle Assignment without Turnitin grading'
3.  Enters marks in Turnitin Feedback Studio - give it 44 and some summary feedback.
4.  Run cron.
5.  What happens? **The Turnitin mark appears in the Moodle Grader. However the Turnitin feedback does not.**

### Student - with work marked both in Moodle grader and Turnitin grader, what do you see?

1.  Sign in as student whose work is marked as above.
2.  What feedback do you see? **The Turnitin mark (44) along with the Moodle summary feedback.**

### Staff - correct the mark in Moodle Grader

1.  Sign in as staff.
2.  In the Moodle grader overwite the 44 with 60.
3.  Run cron.
4.  What do you see? **Fail - the grade in Turnitin Feedback Studio will overwrite what is in Moodle. The data is passed in one direction only.**
5.  What does student see? Fail - sees the grade in Turnitin Feedback Studio.

## Conclusion and actions

Change default Turnitin repository.

**Issue 01**

See ASS002 on the testing document above – we need to be confident that enabling the Tii check doesn’t change anything for existing Moodle Assignments grades and feedback – currently these don’t display in Dev so impossible to check

**Check 01**

Core liaising with LTA

**Issue 02**

Assessors are offered two marking interfaces, but they don’t work together. A world of problems opens if people start using the Tii grading interface within Moodle Assignment. Specifically, Feedback Studio (FS) seems to handle groups but fails insidiously. Grades entered in FS always overwrite those entered in Moodle Grader (MG), which again isn’t obvious – you can imagine a scenario where somebody looking at a Similarity Report has accidentally entered a grade into FS, and then assumes they can overwrite it in MG, and then assumes they’re going made when it bounces. Also, if somebody enables a rubric, it’s hard to check the academic integrity checkbox because the rubric clickzone is overlarge.

**Workaround 02**

Warn people. Put a very ugly and conspicuous warning in the description in the Activity Chooser worded something like the first item in the Caution section in the guide. Where else can we put an ugly, conspicuous warning?

However, I hear plenty of institutions are handling this so it should be possible for us to handle it too.

**Fix 02**

Improve Moodle marking interface, dump Turnitin, get Urkund. 

**Issue raised - 16/02/18 \_ email from Anna Greenling**

We have recently started experiencing an issue with assignment submissions being duplicated within TurnItIn. This seems to happen when a student uploads a new version of a submission to the Moodle assignment tool, overwriting an old version. Instead of replacing the old version with the new one, TurnItIn is creating an additional submission. When checking in Moodle, there may be 10 submissions listed, but in Feedback Studio 11 are listed.

This is highly problematic for us, as some lecturers are marking the old version, with the grades never being synchronised back to Moodle. This only seems to happen when anonymous marking is enabled, however there may be other instances of this happening that I am unaware of.

Is anyone else experiencing issues like this?

Hi James,

We have the exactly the same problem and I guess you have the Moodle integration?

As a workaround, we advise our tutors to close the tab for Feedback Studio after every assignment and return to Moodle and then navigate to the next student. So for example in Moodle the tutor opens an assignment by selecting the blue pen to enter Feedback Studio, then gives the grade and feedback on the assignment. Rather than navigating to the next student by using the left/right arrows, the tutor should close the tab for Feedback Studio and go back to the Moodle grading screen. Scroll down to the next student in Moodle and click on the blue pen again to enter Feedback Studio. This is the only way I can see that the tutor can ensure that they are marking the latest version of the assignment and not a previously uploaded one. The tutor would also have to be aware in case a student has uploaded multiple files for one assignment to Moodle and to make sure to navigate in Feedback studio to see them.

It's not ideal so if anyone has any other ideas on how to work around this, it would be gratefully received.

Thanks,

Anna

### Other tests

|                                                                                                            |
|------------------------------------------------------------------------------------------------------------|
| A teacher can provide feedback comments and files for an assignment                                        |
| A teacher can change the order in which assignment submissions are listed                                  |
| A teacher can choose to receive notification of assignment submissions                                     |
| A teacher can choose whether to allow late assignment submissions                                          |
| A teacher can choose whether to require students to accept an assignment submission statement.             |
| A teacher can enable blind marking for an assignment                                                       |
| A teacher can grant an extension to a student for an assignment                                            |
| A teacher can set a cut off date for an assignment                                                         |
| A teacher can set 'Available from' and 'Due date' for an assignment                                        |
| A teacher can set the maximum size of file which students can upload                                       |
| A teacher can set up a group assignment                                                                    |
| An assignment can be graded using rubric                                                                   |
| Changing assignment marking maximums                                                                       |
| In 2.3 Assignments with file uploading enabled the Student can use File Picker to upload files.            |
| In an assignment with file submissions enabled, students can upload a set number of files                  |
| Quick grading enables a teacher to grade multiple assignments on one page                                  |
| Students receive notification when their assignment submission is graded                                   |
| The assignment module informs teachers of the number of assignments submitted to-date for file submissions |
| In an assignment, students can add and edit text online                                                    |
| In an assignment, students can upload files for assessment                                                 |

<table>
<tbody>
<tr class="odd">
<td><p>A teacher can provide feedback comments and files for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS005T</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can change the order in which assignment submissions are listed</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can choose to receive notification of assignment submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>A teacher can choose whether to allow late assignment submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can choose whether to require students to accept an assignment submission statement.</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can enable blind marking for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can grant an extension to a student for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can set a cut off date for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can set 'Available from' and 'Due date' for an assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>A teacher can set the maximum size of file which students can upload</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>A teacher can set up a group assignment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>An assignment can be graded using rubric</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Changing assignment marking maximums</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>In 2.3 Assignments with file uploading enabled the Student can use File Picker to upload files.</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>In an assignment with file submissions enabled, students can upload a set number of files</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS001S</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>Quick grading enables a teacher to grade multiple assignments on one page</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>Students receive notification when their assignment submission is graded</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>No</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>The assignment module informs teachers of the number of assignments submitted to-date for file submissions</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS002TS</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="odd">
<td><p>In an assignment, students can add and edit text online</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS003S</p></td>
<td><p><br />
</p></td>
<td><p>Pass</p></td>
</tr>
<tr class="even">
<td><p>In an assignment, students can upload files for assessment</p></td>
<td><p>Assignments</p></td>
<td><p>3</p></td>
<td><p><br />
</p></td>
<td><p>ASS001S</p></td>
<td><p>MB</p></td>
<td><p>Pass</p></td>
</tr>
</tbody>
</table>

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

Save

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [scrnsht\_broken.JPG](attachments/75237943/78512722.jpg) (image/jpeg)

