# Assignment Test Plan

# Staff Test Scripts

## \[ASS001T\] Create a Standard Moodle Assignment

1.  Login as user with 'Tutor' role
2.  Turn editing on &gt; Add an activity or resource&gt; Assignment 
3.  Change due date and cut off date to something reasonable. 
4.  Check only file upload is permitted. 
5.  Under Grade - Anonymous marking set to No.
6.  Change nothing else and save. 
7.  --&gt; Go to ASS001S - do all steps once, and if testing Marking workflow (ASS007T) then do steps 1-4 once again so you have two assignments submitted to this box.

## \[ASS002T\] Create a Group Text Moodle Assignment

1.  Go into Users &gt; Groups 
2.  Auto create groups - 3 groups - CW Grp \#
3.  Add into new grouping - CW Submission
4.  Save
5.  Back in the course page, turn editing on &gt; Add an activity or resource&gt; Assignment 
6.  Change due date and cut off date to something reasonable. 
7.  Check only Online text submission is permitted. 
8.  Students submit in groups - set to Yes 
9.  Require group to make submission - set to Yes 
10. Require all group members submit - set to No 
11. Set to use CW Submission grouping
12. Under Grade - Anonymous marking set to No.
13. Scroll and save.

## \[ASS003T\] Create an Anonymous Video Assignment

1.  Turn editing on &gt; Add an activity or resource&gt; Assignment 
2.  Change due date and cut off date to something reasonable. 
3.  Check only Video submission is permitted. 
4.  Change nothing else and save. 

5.  --&gt; Go to ASS003S - and submit video ( x 2 ) - one recorded from webcam, one upload existing.

6.  --&gt; Go to ASS006T- and grade video assignment. Then return to path here for anonymity testing:

7.  Once you have graded, change dates so that due date and cut off date have passed. 
8.  Go to course gradebook and confirm that NO grades are showing for this anonymous assignment. 
9.  Return to assignment and 'Reveal identities' in the settings block to the right. 
10. You should get a warning that this cannot be undone. 
11. Click to confirm you want to deanonymise. 
12. Check submission inbox to confirm that names of students have now appeared.
13. Go to course gradebook and confirm that grades have now appeared for this assignment. 

## \[ASS004T\] View and grade a file assignment

1.  Login as user with 'Tutor' role
2.  Click on Standard Moodle Assignment (see ASS001T)
3.  In the submission area, click on the 'View all submissions' button. 
4.  You’ll get a list that contains one submitted assignment (the one that you have just submitted).
5.  Look at the 'Status' column, and click 'Grade'
6.  A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment. 
7.  To the right, enter the grade for the assignment, put a comment, and upload a feedback file.
8.  (If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)
9.  Click the arrow (top right) to move to the next submission.
10. You should be prompted via pop up to Save your grades before moving to next screen.
11. Confirm that you want to save grades. 
12. Go back to submission inbox and check all grades and feedback are showing as expected. 

## \[ASS005T\] View and grade an online text assignment

1.  Login as user with 'Tutor' role
2.  Click on Group Text Moodle Assignment (see ASS002T)
3.  In the submission area, click on the 'View all submissions' button. 
4.  You’ll get a list that contains one submitted assignment (the one that you have just submitted).
5.  Look at the 'Status' column, and click 'Grade'
6.  A new window loads and you will see the file submission as a PDF. Highlight some part of the text, and add a comment.
7.  To the right, enter the grade for the assignment, put a comment, and upload a feedback file.
8.  (If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)
9.  Click the arrow (top right) to move to the next submission.
10. You should be prompted via pop up to Save your grades before moving to next screen.
11. Confirm that you want to save grades. 
12. Go back to submission inbox and check all grades and feedback are showing as expected. 

## \[ASS006T\] View and grade a video assignment

1.  Login as user with 'Tutor' role
2.  Click on Anonymous Video Assignment (see ASS003T)
3.  In the submission area, click on the 'View all submissions' button. 
4.  You’ll get a list that contains submitted assignment.
5.  Look at the 'Status' column, and click 'Grade'
6.  A new window loads and you will see a blank PDF area.
7.  To the right, click on the 'view submission' link - a pop up should appear and let you play the submitted video.
8.  Check sound and video, and any description added by student has come through. 
9.  Enter the grade for the assignment, put a comment, and upload a feedback file.
10. (If testing group submission, set the 'Apply grades and feedback to entire group' to Yes.)
11. Click the arrow (top right) to move to the next submission.
12. You should be prompted via pop up to 'Save your grades' before moving to next screen.
13. Confirm that you want to save grades. 
14. Go back to submission inbox and check grades and feedback are showing.

## \[ASS007T\] Test Marking workflow

1.  Having graded the first submission normally, log in as a Tutor, and return to Standard Moodle Assignment.
2.  Edit settings. 
3.  Under Grade, change Marking workflow to Yes.
4.  Save.
5.  Follow instructions 2-6 in ASS004T
6.  Add a grade of 67/100.
7.  Change Marking workflow state to 'In marking'
8.  Click save
9.  Pop up should appear saying 'The changes to the grade and feedback were saved'.
10. Log in as student account - check that grade is not shown in submission area, nor in gradebook.
11. Log back in as staff account, follow steps 2-6 in ASS004T again to get to grading scene.
12. Change Marking workflow state to 'Released' and save.
13. Pop up should appear saying 'The changes to the grade and feedback were saved'.
14. Log in as student - check that grade IS shown in submission area, and in gradebook.
15. Grade and Grader should be shown in student submission area view. 

# Student Test Scripts

## \[ASS001S\] Submit a Moodle File Assignment

1.  Login as a ''student'''
2.  Click the Standard Moodle assignment.
3.  Upload a file, watch for the maximum file limit size.
4.  You should get a message saying: ‘'''File uploaded successfully'''’ if it is succeeded, otherwise it shows an error message.
5.  Go back out of the submission area and then go back into it before the due date, 
6.  Delete the uploaded file (click on the file itself in upload area, then delete) and submit another document. 
7.  File should upload successfully and submission should be updated. 

## \[ASS002S\] Submit a Moodle Assignment (online text)

1.  Login as a Student account. 
2.  Click the assignment Group Text Moodle Assignment (see ASS002T)
3.  Click the ‘Add submission’ button, and you should see a text editor where you can put the submission for this assignment
4.  Tick the submission statement above the text editor. 
5.  Type any text and click ‘Save Changes’
6.  The page refreshes and takes you back to the submission area, with a preview of your submission text.
7.  Click to 'Edit my submission’ while the due date for the assignment has not passed yet. 
8.  Save and see if changes have been recorded. 

## \[ASS003S\] Submit a Video Assignment

1.  Login as a Student account. 
2.  Click the Anonymous Video Assignment (see ASS004T)
3.  Click the ‘Add submission’ button, and you should see a text editor where you can put the submission for this assignment
4.  Tick the submission statement, then click Add Media button. 
    NOW EITHER
5.  Click Upload new media. 
6.  Click browse and select a file in one of the formats listed
7.  It should upload with a green progress bar. Click Next when done. 
    OR
8.  Click 'Record webcam' on the next screen. And accept any flash access to camera and mic request. 
9.  Record a brief video - see that mic level changes.
10. Click 'Play recording' - should be able to see and hear your recording. 
11. When satisfied, click Next. 
    THEN FOR BOTH:
12. Enter description and tick statement, then click Next.
13. Pick a thumbnail, click Next.
14. Add no Assoc files and click Next. 
15. Click Next to confirm your submission. 
16. Save changes when back in add media area. 
17. Back in assignment summary area, click the View submission link to check the video is fully uploaded (make take some time before processed). 

## \[ASS004S\] Check a group submission

1.  Find a student in the same group as the account used to submit to group assignment. 
2.  Login as new Student in same group. 
3.  Click the assignment Group Text Moodle Assignment (see ASS002T)
4.  You should be able to view and/or edit the submission made by the other student account as long as the due date has not passed. 
5.  Type any text and click ‘Save Changes’
6.  The page refreshes and takes you back to the submission area, with a preview of your submission text.

## \[ASS005S\] Check group grade/feedback

1.  Find a student in the same group as the account used to submit to group assignment.
2.  Login as new Student in same group. 
3.  Click the assignment Group Text Moodle Assignment (see ASS002T)
4.  You should be able to view the grade and any feedback left on the submitted assignment. 

