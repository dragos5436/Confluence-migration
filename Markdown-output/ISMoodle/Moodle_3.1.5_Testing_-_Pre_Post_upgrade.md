# Moodle 3.1.5 Testing - Pre & Post upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v315.moodle-uat.ucl.ac.uk/> -    you can use the 'Moodle Testing' course.

List of current Tests can be found here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle>

Moodle doc release notes: <https://docs.moodle.org/dev/Moodle_3.1.5_release_notes>

LTA updated blocks list: [Moodle 3.1.5 upgrade](Moodle_3.1.5_upgrade)

Non-core plugins starter list here: [https://wiki.ucl.ac.uk/display/ISMoodle/plugins\#plugins-Updatedlistof'Additional'(non-core)pluginsonliveMoodle,March2017](https://wiki.ucl.ac.uk/display/ISMoodle/plugins#plugins-Updatedlistof): 

-   [Pre-upgrade Tests](#Moodle3.1.5TestingPre&Postupgrade-Pre-upgradeTests)
    -   [Essential Testing items](#Moodle3.1.5TestingPre&Postupgrade-EssentialTestingitems)
    -   [Second priority pre-upgrade test items](#Moodle3.1.5TestingPre&Postupgrade-Secondprioritypre-upgradetestitems)
-   [Post-upgrade Tests](#Moodle3.1.5TestingPre&Postupgrade-Post-upgradeTests)
    -   [Essential Testing items](#Moodle3.1.5TestingPre&Postupgrade-EssentialTestingitems.1)
    -   [Second priority test items](#Moodle3.1.5TestingPre&Postupgrade-Secondprioritytestitems)

## Pre-upgrade Tests

Issue

Details

Who?

Browser?
IE/FF/Ch
(incl. v.)

Done?
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

Outcome/Decision

### **Essential Testing items**

** **

 

 

 

Turnitin - see [Tests Turnitin](Tests-Turnitin)

\*\*\*HIGH PRIORITY\*\*\*

Testing at: https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=41374 Spring 2017

Karen

Chrome. 57.0.2987.110 (64-bit)

![(tick)](images/icons/emoticons/check.png)

Pass

Quizzes - see [Tests Quiz](Tests-Quiz)

\*\*\*HIGH PRIORITY\*\*\*Testing at: https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=27185 \[QIZ001TS\] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />: \[QIZ002TS\] : Testing Quiz Timer  : \[QIZ003S\] : Testing Quiz \[QIZ004S\] : Testing Quiz (Each attempt builds on the last \[QIZ005S\] : Testing Quiz (Grading Method) \[QIZ006S\]: Testing Quiz (Adaptive Mode and Apply Penalties) \[QIZ007TS\]: Testing Quiz (Decimal Points) \[QIZ008TS\]: Testing Quiz (Student’s review – Immediately during the attempt) \[QIZ090TS\]: Testing Quiz (Student’s review – Later, while the quiz is still open) \[QIZ010TS\]: Testing Quiz (Student’s review – After the quiz is closed) \[QIZ012TS\]: Testing Quiz (Require password)

Rod

Ch 57
FF 52 
 

 

Assignments - see [Tests Assignment](Tests_-_Assignment)

\*\*\*HIGH PRIORITY\*\*\*

Staff Tests:
-   \[ASS001T\]  Create a Standard Moodle Assignment

-   \[ASS002T\]  Create a Group Text Moodle Assignment

-   \[ASS003T\]  Create an Anonymous Video Assignment

-   \[ASS004T\]  View and grade a file assignment - Seems timeout occurs when trying to save annotations on large files - comments etc saved, but ugly error generated? *[See screenshot.](attachments/66750765/66752140.jpg)*

-   \[ASS005T\]  View and grade an online text assignment

-   \[ASS006T\]  View and grade a video assignment - pdf viewer still generated which seems odd? Not problematic, but poor UX? Video occasionally reloads whole page with only HTML container and no link back to assignment/grading. *[See screenshot](attachments/66750765/66752142.png).*

-   \[ASS007T\]  Test Marking workflow

Student Tests:

-   \[ASS001S\]  Submit a Moodle File Assignment

-   \[ASS002S\]  Submit a Moodle Assignment (online text)

-   \[ASS003S\]  Submit a Video Assignment - unable to playback video recorded from webcam? *[See screenshot.](attachments/66750765/66752141.png)*

-   \[ASS004S\]  Check a group submission

-   \[ASS005S\]  Check group grade/feedback

AED

Ch 57.0

![(tick)](images/icons/emoticons/check.png)

Pass - some inconsistencies and unexpected behaviour, but able to carry out tasks as expected.

Forums - see [Tests Forum](Tests-Forum)

\*\*MEDIUM PRIORITY \*\*

-   \[FOR001TS\] : Testing Forum Type (Single Simple Discussion)
-   \[FOR002TS\] : Testing Forum Type (Each person posts one discussion)
-   \[FOR003TS\] : Testing Forum Type (Standard forum for general use)
-   \[FOR006TS\] : Testing Forum Subscription
-   \[FOR007TS\] : Testing Forum Subscription (Auto subscription)
-   \[FOR008TS\] : Testing Forum Tracking - Not enabled at site level - neither on UAT or current?
-   \[FOR009T\] : Testing Forum Ratings
-   \[FOR011TS\] : Testing Forum Visibility

AED

Ch 57.0

![(tick)](images/icons/emoticons/check.png)

Pass - did not test Read Tracking as not enabled on current Moodle or UAT.

Manual backups & restore
Importing

\*\*MEDIUM PRIORITY\*\* Use  'Moodle Upgrade Testing' to test

-   Full back up and restore with users
-   Full back up and restore without users
-   Full import to blank course

Fi

GC 50

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

Pass
 

**Upgrade specific tests (new/specifically updated)**
 
 
 
 
**Course Formats:** [See Tests Course Format](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-CourseFormats)

-   format\_grid -
    <https://moodle.org/plugins/format_grid>

 

 

 

-   format\_topcoll - <https://moodle.org/plugins/format_topcoll>

**
**

**
**

**
**

**
**

**
**

**
**

**
**

**
**

 

 

**Others:**

-   mod\_aspirelist
-   mod\_choicegroup
-   mod\_hotpot 2017-02-15
-   mod\_hotquestion
-   mod\_lightboxgallery
-   mod\_questionnaire
-   mod\_scheduler
-   mod\_turnitintooltwo
-   assignsubmission\_helixassign
-   qtype\_gapfill
-   qtype\_multinumerical
-   qtype\_pmatch
-   qtype\_pmatchjme
-   qtype\_regexp
-   qbehaviour\_regexpadaptivewithhelp
-   qbehaviour\_regexpadaptivewithhelpnopenalty
-   qformat\_wordtable
-   atto\_helixatto
-   atto\_morefontcolors
-   tinymce\_helixmedia
-   report\_customsql
-   plagiarism\_turnitin
-   local\_codechecker

\*\*\*HIGH PRIORITY\*\*\*

-   \[CFO001T\]  Sections/Topics display as expected from documentation - Can upload/change image displayed. Topic 0 movable into/out of grid. Styling options appear in Course Settings.
-   \[CFO002T\]  Editing Sections/Topics - 'Highlight' of topic not visible in Grid display, unless set to show one topic to a page.
-   \[CFO003T\]  Adding/Editing content -  Can drag n drop upload docs, but not images - no Proceed/cancel button ( see screenshot ). New activity banner regardless of resource/activity added.

\*\*\*HIGH PRIORITY\*\*\*

-   \[CFO001T\]  Sections/Topics display as expected from documentation - Icon change to show expanded status. Styling options appear in Course Settings.
-   \[CFO002T\]  Editing Sections/Topics - Double Edit/Cog confusing but consistent with behaviour on current Moodle (though different icons).
-   \[CFO003T\]  Adding/Editing content -  Able to drag and drop upload docs, but not images - no Proceed/cancel button ( *[see screenshot](attachments/66750765/66752254.png)* *)*.

\*\*MEDIUM PRIORITY\*\*

\*\*MEDIUM PRIORITY\*\*

\*
\* \* \*\*MEDIUM PRIORITY\*\* - see below \*\*MEDIUM PRIORITY\*\* - see below

  \*\*\*HIGH PRIORITY\*\*\* - see first section \* \* \*\* \* \*\* \* \*\* \* \*\* \* \* 

 

AED

AED

Ch 57.0

![(tick)](images/icons/emoticons/check.png)

 

 

 

 

 

![(tick)](images/icons/emoticons/check.png)

Pass 03/04/2017 after patch applied. Image drag and drop upload now working.

(Not passed - needs resolution on drag and drop image upload.)

**Bespoke UCL plugins:**
 
 
 
 
 
-   blocks/library\_resources
-   Common timetable - block\_timetable
-   blocks/library\_search
-   MyFeedback 
-   blocks/Portico\_enrolments
-   local\_ucl\_tools

\*\*MEDIUM PRIORITY\*\*
\*\*MEDIUM PRIORITY\*\*
\*

\*\*MEDIUM PRIORITY\*\* 

-   \[MYF001T\]  View a student record to see grades and feedback
-   \[MYF002T\]  View a class' My Feedback report
-   \[MYF003T\]  Find a student from Staff My Feedback dashboard view, review feedback comments and notes. 
-   \[MYF003T\]  Department admin role
-   \[MYF001S\]  Viewing your own My Feedback report as a student
-   \[MYF002S\]  Reviewing own Feedback comments and adding notes - notes do not appear in Export to Excel.

\*\*\*MEDIUM PRIORITY\*\* 
\* 

Fi

Fi

\*

AED

 

 

Karen

\*

FF38

FF38

 

Ch 57.0

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

 

 

<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

Pass

Pass- used BIOL2006 and ECON1001

Pass - despite lack of notes export - seems to be the same on live? Issues documented in:

<https://wiki.ucl.ac.uk/x/6O-iAw>

 

Portico doesn't seemed to be mapped to UAT Moodle

 

**BEHAT automated tests**
LTA to perform?
 
 
 
 
 
 
 
 
 
 
### **Second priority pre-upgrade test items**

 

** **

 

 

 

**Commonly used non-core plugins**

-   Attendance
-   Certificate
-   Group choice
-   JMol filter (3D images)
-   Questionnaire
-   Scheduler
-   Quickmail

 

\*\*MEDIUM PRIORITY\*\* - see above
\*\* \* (Java install needed)

\*\*MEDIUM PRIORITY\*\* - see above \*\*MEDIUM PRIORITY\*\* - see above \*\*MEDIUM PRIORITY\*\*

 

Fi

-

 

Fi

Fi

Fi

 

 

FF38

 

 

FF38

FF38

FF38

 

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

 

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

All <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

Pass

 

 

Pass

Pass

Pass, need to run CRON

**Core plugins**

For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK

 

 

 

 

Chat

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Choice

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Database

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Book

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Folder

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Glossary

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Hot Question

\*Tested by Moodle.org, no changes highlighted by LTA\*

 
 

 

 

Lesson

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Page

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Scorm

\*\*MEDIUM PRIORITY\*\* Some issues currently - Borrow a scorm zip from a live course

 

 

 

 

Survey

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Wiki

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Workshop

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

 

## Post-upgrade Tests

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" />GO LIVE SIGNOFF - Implies essential functionality to undergo basic testing before new version made live. 

Issue

Details

Who?

Browser?
IE/FF/Ch
(incl. v.)

Done?
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

Outcome/Decision

### **Essential Testing items**

** **

 

 

 

Turnitin - see [Tests Turnitin](Tests-Turnitin)

\*\*\*HIGH PRIORITY\*\*\* - GO LIVE SIGNOFF

-   \[TII001T\] Create New Anonymous Turnitin Assignment
-   \[TII002T\] Create New Unanonymous Turnitin Assignment
-   \[TII003T\] Check existing assignment

AED
 

Chrome 56
![(question)](images/icons/emoticons/help_16.png)
Pass - though some oddity with gradebook weightings for all items displayed after post date passed. See [screenshot](attachments/66750765/66753160.png).
Quizzes - see [Tests Quiz](Tests-Quiz)

\*\*\*HIGH PRIORITY\*\*\*Testing at: https://moodle.ucl.ac.uk/course/view.php?id=41391§ion=2 \[QIZ001TS\] : \[QIZ002TS\] : Testing Quiz Timer  : \[QIZ003S\] : Testing Quiz \[QIZ004S\] : Testing Quiz (Each attempt builds on the last \[QIZ005S\] : Testing Quiz (Grading Method) \[QIZ006S\]: Testing Quiz (Adaptive Mode and Apply Penalties) \[QIZ007TS\]: Testing Quiz (Decimal Points) \[QIZ008TS\]: Testing Quiz (Student’s review – Immediately during the attempt) \[QIZ090TS\]: Testing Quiz (Student’s review – Later, while the quiz is still open) \[QIZ010TS\]: Testing Quiz (Student’s review – After the quiz is closed) \[QIZ012TS\]: Testing Quiz (Require password)

KSC
 

Chrome. 57.0.2987.110 (64-bit)
 

![(tick)](images/icons/emoticons/check.png)

 

 

 

 

 

 
Assignments - see [Tests Assignment](Tests_-_Assignment)

\*\*\*HIGH PRIORITY\*\*\* <img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" />GO LIVE SIGNOFF

-   \[ASS001T\]  Create a Standard Moodle Assignment

-   \[ASS002T\]  Create a Group Text Moodle Assignment

-   \[ASS003T\]  Create an Anonymous Video Assignment

-   \[ASS004T\]  View and grade a file assignment - Seems timeout occurs when trying to save annotations on large files - comments etc saved, but ugly error generated? *[See screenshot.](attachments/66750765/66753215.png)*

-   \[ASS005T\]  View and grade an online text assignment

-   \[ASS007T\]  Test Marking workflow

<!-- -->

-   \[ASS001S\]  Submit a Moodle File Assignment

-   \[ASS002S\]  Submit a Moodle Assignment (online text)

-   \[ASS004S\]  Check a group submission

-   \[ASS005S\]  Check group grade/feedback

AED
 

 
Pass - Enormous file (1K+ pages) uploaded causes timeout errors and general freezing, but gets there in the end and seemingly no loss of grades/feedback etc...
Forums - see [Tests Forum](Tests-Forum)

\*\*MEDIUM PRIORITY \*\*

-   \[FOR001TS\] : Testing Forum Type (Single Simple Discussion)
-   \[FOR002TS\] : Testing Forum Type (Each person posts one discussion)
-   \[FOR003TS\] : Testing Forum Type (Standard forum for general use)
-   \[FOR006TS\] : Testing Forum Subscription
-   \[FOR007TS\] : Testing Forum Subscription (Auto subscription)
-   \[FOR008TS\] : Testing Forum Tracking - Not enabled at site level - neither on UAT or upgrade?
-   \[FOR009T\] : Testing Forum Ratings
-   \[FOR011TS\] : Testing Forum Visibility

KSC
 

 
 

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

![(error)](images/icons/emoticons/error.png)

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

 

 

 

 

 

Seemingly not enabled at Site level.

Manual backups & restore
Importing

\*\*MEDIUM PRIORITY\*\* Use  'Moodle Upgrade Testing' to test

-   Full back up and restore with users
-   Full back up and restore without users
-   Full import to blank course

FH
 

GC57
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Pass
**Upgrade specific tests (new/specifically updated)**
 
 
 
 
**Course Formats:** [See Tests Course Format](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-CourseFormats)

-   format\_grid -
    <https://moodle.org/plugins/format_grid>

<!-- -->

-   format\_topcoll - <https://moodle.org/plugins/format_topcoll> ****

 

 

**Others:**

-   mod\_aspirelist
-   mod\_choicegroup
-   mod\_hotpot 2017-02-15
-   mod\_hotquestion
-   mod\_lightboxgallery
-   mod\_questionnaire
-   mod\_scheduler
-   mod\_turnitintooltwo
-   assignsubmission\_helixassign
-   qtype\_gapfill
-   qtype\_multinumerical
-   qtype\_pmatch
-   qtype\_pmatchjme
-   qtype\_regexp
-   qbehaviour\_regexpadaptivewithhelp
-   qbehaviour\_regexpadaptivewithhelpnopenalty
-   qformat\_wordtable
-   atto\_helixatto
-   atto\_morefontcolors
-   tinymce\_helixmedia
-   report\_customsql
-   plagiarism\_turnitin
-   local\_codechecker

\*\*\*HIGH PRIORITY\*\*\*

-   \[CFO001T\]  Sections/Topics display as expected from documentation
-   \[CFO002T\]  Editing Sections/Topics - 'Highlight' of topic not visible in Grid display, unless set to show one topic to a page.
-   \[CFO003T\]  Adding/Editing content

\*\*\*HIGH PRIORITY\*\*\*

-   \[CFO001T\]  Sections/Topics display as expected from documentation
-   \[CFO002T\]  Editing Sections/Topics - Double Edit/Cog confusing but consistent with behaviour on current Moodle (though different icons).
-   \[CFO003T\]  Adding/Editing content

\*\*MEDIUM PRIORITY\*\*

\*\*MEDIUM PRIORITY\*\*

\*
\* \* \*\*MEDIUM PRIORITY\*\* - see below \*\*MEDIUM PRIORITY\*\* - see below

 \* \* \*\* \* \*\* \* \*\* \* \*\* \* \* 

SR

 

 

SR

 

 
 
 
**Bespoke UCL plugins:**
 
 
 
 
 
-   blocks/library\_resources
-   Common timetable - block\_timetable
-   blocks/library\_search
-   MyFeedback 
-   blocks/Portico\_enrolments
-   local\_ucl\_tools

\*\*MEDIUM PRIORITY\*\*
\*\*MEDIUM PRIORITY\*\*
\*
\* 
\*\*\*HIGH PRIORITY\*\*\* 
\*\*MEDIUM PRIORITY\*\*   

-
-
-
-
FH
- 
 

 

 

 

<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

 
 

 

 

Failed. LTA investigating enrolments

**Existing content**
\*\*\*HIGH PRIORITY\*\*\*

Check existing courses, navigation, manually enrolling staff/students, checking through existing activities and resources. See below for possible non-core plugin activities to focus on?

\*SR - Please give details of what reviewed/tested? And do feel free to add any particularly problematic/interesting courses here for future testing?

SR
 
 
 
**BEHAT automated tests**
LTA to perform?
 
 
 
 
### **Second priority test items**

 

** **

 

 

 

**Commonly used non-core plugins**

-   Attendance
-   Certificate
-   Group choice
-   JMol filter (3D images)
-   Questionnaire
-   Scheduler
-   Quickmail

 

\*\*MEDIUM PRIORITY\*\* - see above
\*\* \* (Java install needed)

\*\*MEDIUM PRIORITY\*\* - see above \*\*MEDIUM PRIORITY\*\* - see above \*\*MEDIUM PRIORITY\*\*

 
 
 
 
**Core plugins**

For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK

 

 

 

 

Chat

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Choice

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Database

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Book

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Folder

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Glossary

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Hot Question

\*Tested by Moodle.org, no changes highlighted by LTA\*

 
 

 

 

Lesson

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Page

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Scorm

\*\*MEDIUM PRIORITY\*\* Some issues currently - Borrow a scorm zip from a live course

 

 

 

Survey

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

Wiki

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

 

Workshop

\*Tested by Moodle.org, no changes highlighted by LTA\*

 

 

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [LargeDocError.JPG](attachments/66750765/66752140.jpg) (image/jpeg)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [VideoAssignmentNoPlayback.png](attachments/66750765/66752141.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [HMLContainer.png](attachments/66750765/66752142.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [AssignmentNoPDFload.png](attachments/66750765/66752148.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [CF\_ImgsDragDrop.png](attachments/66750765/66752254.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [gradebookweightings.png](attachments/66750765/66753160.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [PDFLargefileAssignment.png](attachments/66750765/66753215.png) (image/png)

