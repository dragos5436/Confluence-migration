# MyFeedback Test Plan

# Staff Test Scripts

## \[MYF001T\] View a student record to see grades and feedback

1.  Go to participants for the testing course, find account enrolled as Tutor
2.  Click on name/picture to see profile, login as. 
3.  As the Tutor, click on Participants and click an account enrolled as student. 
4.  When viewing their profile, look under Reports, and click My feedback. 
5.  The My Feedback tutor view should load.
6.  On the Overview tab, click on the Assessment name column header to sort alphabetically- check if this works. 
7.  Search for a unique term in one of the assignments in the Search box and confirm this is displayed as expected. 
8.  Use the drop down in the Submission date column to select a specific assignment - confirm that this filters as expected. 
9.  Click the Feedback comments tab and check that grades and feedback comments shown matches that previously given in the original assessment activity.  
10. Check that under Full Feedback column, the icon is shown to indicate that there is a feedback file, and that the link to view feedback takes you to the feedback for that students in the correct assignment.
11. Finally, click Export to Excel and check that output matches information shown on live page. 
12. Do the same for the Print functionality offered, checking that output matches information shown on live page. 

## \[MYF002T\] View a class' My Feedback report

1.  Unless already logged in as a Tutor, follow steps 1-2 of \[MYF001T\] .
2.  As a Tutor, click on 'Reports' in the 'Settings' block
3.  Select My feedback link under Reports. 
4.  You should be taken to the My Feedback tabbed dashboard. 
5.  In the 'Module tutor dashboard' tab, select the current course from the My Courses list in bottom left, and click Analyse button.
6.  Click the small down arrow under the name of your assessment for the course, and confirm that grades for students match displayed averages/graph. 
7.  Click the 'Student Breakdown' button and confirm that students displayed match expected students from that course. 
8.  Finally, scroll up and click Export to Excel, checking that output matches information shown on live page. 
9.  Do the same for the Print functionality offered, checking that output matches information shown on live page. 

## \[MYF003T\] Find a student from Staff My Feedback dashboard view, review feedback comments and notes. 

1.  Follow steps 1-4 of \[MYF002T\] .
2.  Click on the My students tab, and search using email address of known student in test course.
3.  Confirm that they appear listed correctly and in the right course. 
4.  Click on the name link and confirm that you are taken to the My Feedback report for that student.
5.  Click the Feedback Comments tab and check you can see, but not edit, the reflective notes you made as student account. 

## \[MYF003T\] Department admin role

1.  Ensure that the account you will log in as has Departmental Admin (MyFeedback) role on the overarching category for your testing course. 
2.  Follow steps 1-4 of \[MYF002T\], selecting Dept Admin role user instead of Tutor. 
3.  Click on the Departmental admin dashboard tab, the select Top level, Second level categories and then Course from drop downs. 
4.  Click the small down arrow under the name of your assessment for the course, and confirm that students displayed match expected students from that course, and grades for students match displayed averages/graph. 
5.  Click the 'Stats per student' button and confirm that students displayed match expected students from the course, and stats match course reality.
6.  Click the Module tutor stats button, and confirm module tutors shown are as expected from course enrolments. 
7.  Click Show link under Tutor groups (+/-) to see extra information. 
8.  Select a Tutor test account - which you know is not an actual person's - and tick the box to the right to select them, then click the Send mail button. 
9.  Your email client should open and complete the subject line with "Your Departmental Admin".  

# Student Test Scripts

## \[MYF001S\] Viewing your own My Feedback report as a student

1.  Go to participants for the testing course, find account enrolled as Student.
2.  Click on name/picture to see profile, login as. 
3.  (MyFeedback block on UAT seems hard coded to your profile and Moodle, so the steps below are necessary to check for student account/user view)
4.  If needed, in the Navigation block and click name of the account you are signed in as. 
5.  On their profile page, click the My feedback link under Reports. 
6.  Check that assignments and grades are shown as expected on Overview tab
7.  Click on Column visibility button, click on a few items - these should be hidden from the report table.
8.  Click Reset table and check that this reinstates visibility of columns. 
9.  Reduce the size of the window. A plus sign should appear, click on it to see further details.
10. Finally, scroll up and click Export to Excel, checking that output matches information shown on live page. 
11. Do the same for the Print functionality offered, checking that output matches information shown on live page. 

## \[MYF002S\] Reviewing own Feedback comments and adding notes. 

1.  Go to participants for the testing course, find account enrolled as Student.
2.  Click on name/picture to see profile, login as. 
3.  (MyFeedback block on UAT seems hard coded to your profile and Moodle, so the steps below seem necessary to check for student account/user view)
4.  If needed, in the Navigation block and click name of the account you are signed in as. 
5.  On their profile page, click the My feedback link under Reports. 
6.  Click the Feedback comments tab and check that grades and feedback comments shown matches that previously given in the original assessment activity.  
7.  Check that under Full Feedback column, the icon is shown to indicate that there is a feedback file, and that the link to view feedback takes you to the feedback for that students in the correct assignment.
8.  Click Add notes link next to feedback comment. A pop up should allow you to enter text and then save.
9.  Check that text typed has been saved and is displayed next to feedback comments. 
10. Click Edit notes and past in a huge chunk of text from somewhere, then save. Confirm that this is saved and displayed. 
11. Finally, scroll up and click Export to Excel, checking that comments and notes are displayed as expected. 

