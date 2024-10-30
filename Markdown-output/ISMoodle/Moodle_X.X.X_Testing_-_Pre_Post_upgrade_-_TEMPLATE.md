# Moodle X.X.X Testing - Pre/Post upgrade - TEMPLATE

Please log out of all other UCL Moodle's before you start testing!!

Test here [https://v\#\#\#.moodle-uat.ucl.ac.uk](https://v###.moodle-uat.ucl.ac.uk) -    you can use the 'Moodle Testing' course.

List of current Tests can be found here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle>

Moodle doc release notes: [https://docs.moodle.org/dev/Moodle\_X](https://docs.moodle.org/dev/Moodle_3.1.5_release_notes)XX

List of updated blocks/plugins list: X(LTA to provide)X

-   [Pre-upgrade Tests](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-Pre-upgradeTests)
    -   [Essential Testing items, Pre upgrade](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-EssentialTestingitems,Preupgrade)
    -   [Second priority pre-upgrade test items](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-Secondprioritypre-upgradetestitems)
-   [Post-upgrade Tests](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-Post-upgradeTests)
    -   [Essential Testing items, Post upgrade](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-EssentialTestingitems,Postupgrade)
    -   [Second priority pre-upgrade test items](#MoodleX.X.XTestingPre/PostupgradeTEMPLATE-Secondprioritypre-upgradetestitems.1)

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

### **Essential Testing items, Pre upgrade**

** **

 

 

 

Turnitin - see [Tests Turnitin](Tests-Turnitin)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

Quizzes - see [Tests Quiz](Tests-Quiz)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

Assignments - see [Tests Assignment](Tests_-_Assignment)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

Forums - see [Tests Forum](Tests-Forum)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

 
 
 
 
 
 
**Course Administration & existing content**

*See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests*

 
 
 
 
Existing content

Manual backups & restore

Importing

Course Reset

(Check existing courses, navigation, manually enrolling staff/students, checking through existing activities and resources.)

(Use  'Moodle Upgrade Testing'  to test back up and restore)

 -

(Ensure Reset tested on course which include TII submissions)

 
 
 
 
 
 
 
 
 
**Upgrade specific tests (new/specifically updated)**

 
 
 
 
xxFill in based on LTA provided list of updated/changing items.xx
 
 
 
 
 
 
 
 
 
 
**Non-standard plugins**

 
 
 
 
***Bespoke UCL plugins:***

-   blocks/library\_resources
-   blocks/common timetable
-   blocks/library\_search 
-   block\_timetable - Common Timetable
-   blocks/library\_search
-   reports/MyFeedback - see [Tests MyFeedback](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-MyFeedback)
-   blocks/Portico\_enrolments
-   local\_ucl\_tools

 

 

 

 

 

 

 

 

 

 

 

### **Second priority pre-upgrade test items**

 
 
 
 
**BEHAT automated tests**
LTA to conduct?
 
 
 
 
**Commonly used non-core plugins**

** **

 

 

 

-   Attendance
-   blocks/bulk enrolment
-   Certificate
-   blocks/course\_menu
-   Group choice
-   JMol filter (3D molecular images)
-   LaTex (Tex filter)
-   Scheduler
-   Questionnaire 
-   blocks/quickmail

-
-
- 
-
(Needs Java installed)
(Is this still relevant?)
-
- 
- 

 
 
 
 
**Core plugins**

*Unless these have been highlighted as updated/changed or problematic, these do not need to be tested for point upgrades --&gt; list as \*Tested by [Moodle.org](http://Moodle.org), no changes highlighted by LTA\**
*For resources - may need to backup and restore files from live test course to be able test resources. See list of tests here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle> - if there is none, add a new activity/resource and then briefly list tests undertaken.*

Chat

 

 

 

 

 

Choice - see [Tests-Choice](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Choice)

 

 

 

 

 

Database

 

 

 

 

 

Book - see [Tests-Book](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Book)

 

 

 

 

 

Folder - see [Tests-Folder](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Folder)

 

 

 

 

 

Glossary - see [Tests-Glossary](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Glossary)

 

 

 

 

 

Hot Question

 

 
 

 

 

Lesson - see [Tests-Lesson](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Lesson)

 

 

 

 

 

Page

 

 

 

 

 

Scorm

(Borrow a scorm zip from a live course)

 

 

 

 

Survey

 

 

 

 

 

Wiki - see [Tests- Wiki](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-+Wiki)

 

 

 

 

 

Workshop

 

 

 

 

 

## Post-upgrade Tests

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> GO LIVE SIGNOFF - Implies essential functionality to undergo basic testing before new version taken out of maintenance. 

Issue

Details

Who?

Browser?
IE/FF/Ch
(incl. v.)

Done?
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

Outcome/Decision

### **Essential Testing items, Post upgrade**

** **

 

 

 

Turnitin - see [Tests Turnitin](Tests-Turnitin)

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> GO LIVE SIGNOFF - (List tests undertaken eg. \[TII001T\])

 

 

 

 

Quizzes - see [Tests Quiz](Tests-Quiz)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

Assignments - see [Tests Assignment](Tests_-_Assignment)

GO LIVE SIGNOFF - (List tests undertaken eg. \[TII001T\])

 

 

 

 

Forums - see [Tests Forum](Tests-Forum)

(List tests undertaken eg. \[TII001T\])

 

 

 

 

 
 
 
 
 
 
**Course Administration & existing content**

*See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests*

 
 
 
 
Existing content

Manual backups & restore

Importing

Course Reset

(Check existing courses, navigation, manually enrolling staff/students, checking through existing activities and resources.)

(Use  'Moodle Upgrade Testing'  to test back up and restore)

 -

(Ensure Reset tested on course which include TII submissions)

 
 
 
 
 

 

 

 

 

 

**Upgrade specific tests (new/specifically updated)**

 
 
 
 
xxFill in based on LTA provided list of updated/changing items.xx
 
 
 
 
 
 
 
 
 
 
**Non-standard plugins**

 
 
 
 
***Bespoke UCL plugins:***

-   blocks/library\_resources
-   blocks/common timetable
-   blocks/library\_search 
-   block\_timetable - Common Timetable
-   blocks/library\_search
-   reports/MyFeedback - see [Tests MyFeedback](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-MyFeedback)
-   blocks/Portico\_enrolments
-   local\_ucl\_tools

 

-
-
- 
---- --

 

 

 

 

 

 

 

 

 

 

### **Second priority pre-upgrade test items**

 
 
 
 
**BEHAT automated tests**

LTA to conduct?
 
 
 
 
**Commonly used non-core plugins**

** **

 

 

 

-   Attendance
-   blocks/bulk enrolment
-   Certificate
-   blocks/course\_menu
-   Group choice
-   JMol filter (3D molecular images)
-   LaTex (Tex filter)
-   Scheduler
-   Questionnaire 
-   blocks/quickmail

-
-
- 
-
(Needs Java installed)
(Is this still relevant?)
-
- 
- 

 
 
 
 
**Core plugins**

*Unless these have been highlighted as updated/changed or problematic, these do not need to be tested for point upgrades --&gt; list as \*Tested by [Moodle.org](http://Moodle.org), no changes highlighted by LTA\**
*For resources - may need to backup and restore files from live test course to be able test resources. See list of tests here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle> - if there is none, add a new activity/resource and then briefly list tests undertaken.*

Chat

 

 

 

 

 

Choice - see [Tests-Choice](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Choice)

 

 

 

 

 

Database

 

 

 

 

 

Book - see [Tests-Book](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Book)

 

 

 

 

Folder - see [Tests-Folder](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Folder)

 

 

 

 

 

Glossary - see [Tests-Glossary](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Glossary)

 

 

 

 

 

Hot Question

 

 
 

 

 

Lesson - see [Tests-Lesson](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Lesson)

 

 

 

 

 

Page

 

 

 

 

 

Scorm

Borrow a scorm zip from a live course

 

 

 

 

Survey

 

 

 

 

 

Wiki - see [Tests- Wiki](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-+Wiki)

 

 

 

 

 

Workshop

 

 

 

 

 
