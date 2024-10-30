# Student grades changing to blank after being graded

### Jira stories

CTP-1325 - Moodle Missing Marks Issue and how to display marks without being visible query - IN04953403 Done

CTP-1324 - Grades disappearing sporadically from Moodle assignment grade drop down after each Moodle outage - IN04947161 Done

CTP-1278 - Moodle assignments Gradebook issues Done

### Current issue

Ongoing reports of student grades randomly becoming blank after they have been maked by a grader.  

### Investigation

-   Logs shows that students grading their own work.
    -   Yingjie\_Chen\_logs.xlsx - line 8 shows graded action
    -   Ulysse\_Pruvost-Leduc\_logs.xlsx - line 21 shows graded action
    -   grade\_history\_logs.xlsx - line 8 & 9 shows grade being revised to blank.  Both student as graders
    -   ehsan\_tutor\_grading\_logs.xlsx - line 9 as expected behavour of my account as a student grading a student assignment
-   student\_tutor\_permissions.png - Role capabilties show that student do not have permissions to grade
-   In the student logs, the userid and relateduserid column is the same student ID indicating the student marked their own work.
-   https://tracker.moodle.org/browse/MDL-73154 - other users reporting the same issue
-   All reported issue are using the normal moodle assignment with turnitin plagarism enabled
-   https://github.com/turnitin/moodle-plagiarism\_turnitin/pull/598 - fixed implemented but post comments show teacher/student role blanking grades
-   The only interaction that student have with turnitin is when viewing their grade and feedback through the turnitin feedback studio

### Fix

No fix so far

### Testing

So far i have been unable to replicate the issue.  Functionality is working as expected.

| Scenario                                                          | Steps                                                                                                                     | Expected Behaviour                           | Pass/Fail |
|-------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|-----------|
| as a tutor grade a student assignment                             | 1.  log into moodle &gt; navigate to a course                                                                             
  2.  create a moodle assignment activity &gt; enable following options &gt; save assignment                                 
      1.  anonymous marking - no                                                                                             
      2.  enable turnitin - yes                                                                                              
  3.  navigate to 'view all submissions' &gt; click grade on a student &gt; add grade &gt; save                              | grade appears under the grade button         | Pass      |
| as a tutor add grade and comment through turnitin feedback studio | 1.  log into moodle &gt; naigate to cours  &gt; click assignment &gt; view all submissions                                
  2.  click on the turnitin report to open feedback studio &gt; add grade &gt; close window                                  | grade is updated from feedback studio        | Pass      |
| as a student view grade and feedback in turnitin studio           | 1.  log into moodle &gt; naviagte to course &gt; click assignment &gt; click turnitin plagarism % to open feedback studio 
  2.  view grade &gt; close window                                                                                           | grade is the same.  has not changes to blank | Pass      |

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [grade\_history\_logs.xlsx](attachments/216695861/216695886.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Ulysse\_Pruvost-Leduc\_logs.xlsx](attachments/216695861/216695887.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Yingjie\_Chen\_logs.xlsx](attachments/216695861/216695888.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Yingjie\_Chen\_logs.xlsx](attachments/216695861/216695894.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [ehsan\_tutor\_grading\_logs.xlsx](attachments/216695861/216695895.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Ulysse\_Pruvost-Leduc\_logs.xlsx](attachments/216695861/216695896.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [grade\_history\_logs.xlsx](attachments/216695861/216695897.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [student\_tutor\_permissions.png](attachments/216695861/216695907.png) (image/png)

