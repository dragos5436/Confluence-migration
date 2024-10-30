# Tests-PorticoEnrolments

-   -   [\[POR001T\] Add a Portico mapping to the course.](#TestsPorticoEnrolments-%5BPOR001T%5DAddaPorticomappingtothecourse.)
    -   [\[POR002T\] Check that course Portico identifier is recognised by the enrolments block](#TestsPorticoEnrolments-%5BPOR002T%5DCheckthatcoursePorticoidentifierisrecognisedbytheenrolmentsblock)
    -   [\[POR003T\] Confirm that enrolments are being made via Portico enrolments block.](#TestsPorticoEnrolments-%5BPOR003T%5DConfirmthatenrolmentsarebeingmadeviaPorticoenrolmentsblock.)
    -   [\[POR004T\] Confirm that students are being removed via Portico enrolments block.](#TestsPorticoEnrolments-%5BPOR004T%5DConfirmthatstudentsarebeingremovedviaPorticoenrolmentsblock.)

**NB. These are all staff Test Scripts** - students should never see this block. 

Tests are as comprehensive as possible, often repeating steps from other tests - there may be a more efficient way to go through these? (See also: [Portico integration tests run1-3](https://wiki.ucl.ac.uk/display/ECARC/Portico+integration+tests+run1-3) for reference)

##### \[POR001T\]  Add a Portico mapping to the course. 

1.  Go to course and Login as a user with 'Tutor' role
2.  Click 'Turn editing on' in the top right of the main course page. 
3.  (A 'Portico enrolments' block should appear just under the 'turn editing on' button).
4.  Click on the 'Edit Portico enrolments' link in the block.
5.  In the next screen, click 'Add a new mapping'
6.  Search in the box that appears using either a the following 
    1.  A module code - e.g. BIOC1001
    2.  A route code - \*\*\*e.g. \*\*\*
    3.  A programme code - \*\*\*e.g. \*\*\*
7.  Tick Select next to the returned search of your choice. It should be highlighted green. 
8.  Tick the box next to 'Mapping is active'. a red warning should appear.
9.  Click 'Save mappings' button. 
10. Use the breakcrumb trail to return to the main page for the course. 
11. Confirm that green text is shown on the Portico enrolment block saying 'Mapping active', above module code and details matching those mapped in step above.

##### \[POR002T\]  Check that course Portico identifier is recognised by the enrolments block

1.  Go to course and Login as a user with 'Tutor' role
2.  Click 'Edit settings' in the Course Administration block. 
3.  Check that there is nothing currently in the 'Portico identifier' field under General. Remove anything existing.
4.  Scroll down and click 'Save and display'.
5.  Follow steps 2-9 from POR001T, ensuring that at: Step 3) That when the Portico block appears, the message 'Mapping not active' is displayed. Step 6) Choosing option 6a - module code. 
6.  With the mapping activated, a red paragraph of text should be shown, warning that 'There is no Portico Identifier set up for this course' and including support details. 
7.  Use the breakcrumb trail to return to the main page for the course. 
8.  Confirm that red text is shown on the Portico enrolment block saying 'Mapping setup incomplete?' above module code and details matching those mapped in step above (POR002T:5.6)
9.  Click 'Edit settings' in the Course Administration block.
10. Ensure the 'Portico identifier' field under General is filled with AUTOTEST (must be unique to this course, but can be any string.)
11. Scroll down and click 'Save and display'.
12. Confirm that green text is shown on the Portico enrolment block saying 'Mapping active', above module code and details matching those mapped in step above (POR002T:5.6)

##### \[POR003T\]  Confirm that enrolments are being made via Portico enrolments block. 

1.  Go to course and Login as a user with 'Tutor' role
2.  Click 'Edit settings' in the Course Administration block.
3.  Ensure that Visible field is set to Hide. 
4.  Ensure the 'Portico identifier' field under General is filled with AUTOTEST (must be unique to this course, but can be any string.)
5.  Scroll down and click 'Save and display'.
6.  Back on the course page, click Course Administration &gt; Users &gt; Enrolled users.
7.  Select 'Student' under Role, then click Filter.  
8.  Confirm that no users are listed with the role Student AND have Portico enrolment as their enrolment method. 
9.  Delete any students that match the above criteria by pressing the X to the very right of the row.
10. Use the breakcrumb trail to return to the main page for the course. 
11. Follow steps 2-11 of POR001T, adding cumulatively a module, route and programme mapping. You should have 3 mappings total.
12. Wait overnight or manually trigger cron
13. Repeat steps 6-7 of current test to check users. 
14. Record count of number of users (and take screenshot if automated test)

##### \[POR004T\]  Confirm that students are being removed via Portico enrolments block.

1.  Go to course and Login as a user with 'Tutor' role
2.  Click 'Edit settings' in the Course Administration block.
3.  Ensure that Visible field is set to Hide. 
4.  Ensure the 'Portico identifier' field under General is filled with AUTOTEST (must be unique to this course, but can be any string.)
5.  Scroll down and click 'Save and display'.
6.  Back on the course page, click Course Administration &gt; Users &gt; Enrolled users.
7.  Select 'Student' under Role, then click Filter.  
8.  Confirm that there ARE users listed with the role Student AND have Portico enrolment as their enrolment method. 
9.  Record count of number of users (and take screenshot if automated test)
10. Use the breakcrumb trail to return to the main page for the course. 
11. Click 'Turn editing on' in the top right of the main course page. 
12. (A 'Portico enrolments' block should appear just under the 'turn editing on' button).
13. Click on the 'Edit Portico enrolments' link in the block.
14. Tick the 'Delete' box to the right of a module. (This should strikethrough the module details and highlight it in pink)
15. Repeat for all mappings listed,
16. Wait overnight or manually trigger cron??\*\*
17. Repeat steps 6-8 of current test to check users. 
18. There should be NO users listed with the role Student AND have Portico enrolment as their enrolment method

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CF\_ImgsDragDrop.png](attachments/66756922/66753080.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [AssignmentNoPDFload.png](attachments/66756922/66753081.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [HMLContainer.png](attachments/66756922/66753082.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [VideoAssignmentNoPlayback.png](attachments/66756922/66753083.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [LargeDocError.JPG](attachments/66756922/66753084.jpg) (image/jpeg)

