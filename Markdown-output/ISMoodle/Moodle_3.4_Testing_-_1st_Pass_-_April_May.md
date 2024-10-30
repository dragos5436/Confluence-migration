# Moodle 3.4 Testing - 1st Pass - April/May

This first round of testing is to try and identify areas that need urgent development. For this reason, it's focused around key areas such as assessment, basic administrative functions that most staff users will need to perform, and the new theme. 

-   Please log out of all other UCL Moodle's before you start testing!
-   UAT 3.4 Instance can be found here: <https://v34.moodle-01-u.ucl.ac.uk/> 
-   Some items such as MyFeedback are not quite configured yet.
-   Language pack has not yet been customised (you may want to make a note of any non-UCL terminology that seems odd, else aiming to keep it as vanilla as possible)

#### Process:

-   Please create your Test course in the Miscellaneous &gt; Testing category.

-   Put your name against any section you are intending to test. Add in your exact browser version. 

1.  **Look at the tests linked next to each item, and in the 'details' section list which ones you have undertaken. **
    1.  (If Test does not exist then detail briefly what you did.)
2.  **Confirm in the details/passed section f the outcomes seems to be satisfactory next to each test. **
    1.  (If possible add a link to test activity etc as this will make logging errors easier. )
3.  **Log issues in Mantis <https://www.ucl.ac.uk/mantis>. See guide [here.](attachments/91030034/91032209.docx) **Choose the Moodle Improvement Project (MIP) from the Project dropdown. Provide as much info as possible. Leave tickets unassigned.**
    **

-   List of all current Test scripts can be found here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle> - please do not put results in those pages, only here, but do feel free to update or add to them, following existing format.  
-   Moodle doc release notes: <https://docs.moodle.org/dev/Moodle_3.4_release_notes>

## Pre-upgrade Tests

Issue

Details

Who?

Browser?
IE/FF/Ch
(incl. v.)

Passed?
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

Comments

 Mantis?
### **Assessment**

** **

Turnitin - see [Tests Turnitin](Tests-Turnitin)

(List tests undertaken eg. \[TII001T\]) See [Bin ? - Turnitin plugin - 21/02/18](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=87920439) for more details.

JK

Firefox

See Bin ? - Turnitin plugin - 21/02/18 for more details.

-   In add an activity or resource - Rename 'Turnitin' Link a to 'Turnitin assignment' and re-order so it is second item on list.
-   Default settings for Turnitin should it Exclude Biography and Exclude Quoted material?
-   The multiple marker functionality seems to be turned on. Should be off. 
-   During submission as student - Could not close Turnitin submission preview window with Close link . The "x" was not clearly visible (\[TII001T\] - step 3)
-   The submission inbox is 'squashed'. column heading and sorting links not visible. - A lot of space is  'wasted'- Fullscreen view sorts this- Should we make Full screen view as default?
-   ' Try deleting a submitted assignment' - Page has to be refreshed to see that deletion has occurred.\*\* Refresh seems to be required for most actions... (\[TII001T\] and (\[TII001T\] - step 3)
-   Moodle Course Grade book does not display list of students.

0007499

Don't log

00074500

00074501

00074502

00074503

0007504

Assignments - see [Tests Assignment](Tests_-_Assignment)
(List tests undertaken eg. \[TII001T\]) - if possible also look at rubric display issue?
KSC
Firefox Quantum 59.0.3 (64-bit)
Several fixes required.
See detailed Test Results here: <https://wiki.ucl.ac.uk/x/_QVtBQ>

\[ASS001S\] 6. File appeared to be deleted but WAS NOT in fact deleted. It re-appeared when student came out of the assignment and went back into it. And the tutor could still see it after it was "deleted". Tried this in current Moodle 3.1 assignment with the same settings and student was able to truly delete their file before the due date.6 & 7. However, if the student "deleted" their file and then without Saving Changes or anything, dragged and dropped in another file, the second file did replace the first one. This seemed to be the only way to actually get rid of the first file.

\[ASS002S\] If student goes to edit Submission the Cancel button has a white  background hence not clearly visible.

Text submitted online did not convert to PDF and so could not be marked using Moodle Assignment's annotation tools.

\[ASS005T\] Text submitted online did not convert to PDF and appears to the right of the screen. This happens in the 'old' Moodle as well. Need to investigate - refer to <https://moodle.org/mod/forum/discuss.php?d=333814>

0007515

0007516

0007517

0007521 & maybe 0007517

Quizzes - see [Tests Quiz](Tests-Quiz)

(List tests undertaken eg. \[TII001T\]) \[QIZ001TS\] : Testing Quiz\[QIZ002TS\] : Testing Quiz Timer: \[QIZ003S\] : Testing Quiz - attempt restriction, shuffling etc. \[QIZ004S\] : Testing Quiz (Each attempt builds on the last)\[QIZ005S\] : Testing Quiz (Grading Method)\[QIZ006S\]: Testing Quiz (Adaptive Mode and Apply Penalties)\[QIZ007TS\]: Testing Quiz (Decimal Points)\[QIZ008TS\]: Testing Quiz (Student’s review – Immediately during the attempt)\[QIZ012TS\]: Testing Quiz (Require password)

RD

Chrome 66

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

Also tested auto submission of quiz at end of allowed time<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

**Theme and course formats**

*See [Tests-CourseFormats](Tests-CourseFormats) and [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests.*

GL? JK?
Grid
May want to try and do a back up and restore (no user data) of the following: 
<https://moodle.ucl.ac.uk/course/view.php?id=30115> and <https://moodle.ucl.ac.uk/course/view.php?id=30295>  

In addition to listed *[Tests-CourseFormats](Tests-CourseFormats) please try:*

-   Add file via drag and drop to course
-   Add image via drag and drop to page
-   Show/Hide activity

JLH
Chrome 52 on Windows 7
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Highlighting a section works but seeing the highlight doesn't (**theme issue?**)

Within the settings for any course using the grid format, the options under **Grid reset options** appear offset to the right of the screen.

Potentially some room to better test and document certain aspects of the image conrainer options.

For more information, see [Tests-CourseFormats-Results](Tests-CourseFormats-Results)

0007531

One topic (AKA Tabs)
May want to try and do a back up and restore (no user data) of the following: 
<https://moodle.ucl.ac.uk/course/view.php?id=44107> (tabs under tabs course) 

In addition to listed *[Tests-CourseFormats](Tests-CourseFormats) please try:*

-   Add file via drag and drop to course
-   Add image via drag and drop to page
-   Show/Hide activity

JLH
Chrome 52 on Windows 7
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Highlighting a section works but seeing the highlight doesn't (**theme issue?**)

For more information, see [Tests-CourseFormats-Results](Tests-CourseFormats-Results)

Topics
In addition to listed *[Tests-CourseFormats](Tests-CourseFormats) please try:*

-   Add file via drag and drop to course
-   Add image via drag and drop to page
-   Show/Hide activity

JLH
Chrome 52 on Windows 7
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Highlighting a section works but seeing the highlight doesn't (**theme issue?**)

For more information, see [Tests-CourseFormats-Results](Tests-CourseFormats-Results)

Collapsed
In addition to listed *[Tests-CourseFormats](Tests-CourseFormats) please try:*

-   Add file via drag and drop to course
-   Add image via drag and drop to page
-   Show/Hide activity

JLH
Chrome 52 on Windows 7
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Highlighting a section works but seeing the highlight doesn't (theme issue?)

Within the settings for any course using the grid format, the options under Collapsed Topics **reset options** appear offset to the right of the screen.

For more information, see [Tests-CourseFormats-Results](Tests-CourseFormats-Results)

0007531

Weekly
GL
**Course Administration**

*See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests*

Edit Sections/Topics

\[GEN002T\]  Editing Sections/Topics

1.  Try to edit Section title - does this update?<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
2.  Try to move Section from bottom to top of page - does this work?<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
3.  'Highlight' section - does this display correctly?a:<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />
4.  Add new Section using in-course + / - tools. <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
5.  Remove new section using in-course + / - tools. b:<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />

RD
Chrome 66
a:<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Highlighting section makes no discernible difference in topics format at least.

b:<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> Can't find these in topic format - course format dependent? can't see '-' in 'one topic format' can see '+'.

 0007497
Add/Edit content
\[GEN003T\]  Adding/Editing content<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
RD
Chrome 66
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />Drag and drop of Test mp4 video file - embed option chosen on upload but displayed black screen although Audio was present - same when placed in as file resource

Resource/activity icons alignment vary and indent and outdent for assignment activity on course page seemed to actually do the reverse of what expected. May be to do with vertical line to left of activity? See screenshot

0007505

0007506

Hide content - check with student test account
single resource hidden <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
whole topic hidden<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

RD
Chrome 66
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
<img src="images/icons/emoticons/tongue.svg" alt="(tongue)" class="emoticon emoticon-cheeky" />Worth noting that *number of topics* has been removed from course settings 3.3+ - this means anyone importing courses where they've relied on this mechanism to hide topic areas under development will get a surprise!! More info - <https://docs.moodle.org/34/en/Stealth_activities>
Navigate between activities
See - <https://docs.moodle.org/dev/Moodle_3.4_release_notes> - MDL-59313
GL
Firefox 56.0.2
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
<https://tracker.moodle.org/browse/MDL-59313> (Creating courses with multiple course formats and getting content from live Moodle)

Works, a couple of minor issues reported on Mantis.

Enrolment (not portico)
-   Manual<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
-   Self enrol into group or role<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

RD
Chrome 66
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Tested self enrol and un-enrol for student and self-enrol into group
Course Reset
Tested on course which includes TII submissions - can't test at present
Back up and restore

-   See changes listed around <https://docs.moodle.org/dev/Moodle_3.4_release_notes#Backup.2C_restore_and_import> - Backup, restore and import
-   Roles - what happens if back up with current roles and restore in new where those roles do not exist

JLH
Chrome 52 on Windows 7
**Backup and Restore**

Working as intended and was tested with a test course made on live Moodle.

**Import**

Working as intended and was tested by importing content from one course to another.

**\*\*\* ROLES \*\*\***

No testing has been done regarding enrolled users and their roles when doing a backup and restore from live Moodle to MIP UAT. Once the roles on the new Moodle are finalised, this can be tested with accurate results.

**Plugins and filters**

UCL Hacks - see [Tests-UCLHacks](Tests-UCLHacks)
Check if these hacks seem to still be needed? List those not needed and test those that are.

\[UCL001T\] - See notes in miscellaneous <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />
\[UCL009T\]  Test student account creation <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
\[UCL007T\] Country List - Kosovo <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
\[UCL003T\] Calendar Export (string only) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
\[UCL004T\] Calendar Import (string only) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
\[UCL006T\] Fuzzy Search <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />

ZW
RD

JLH

UCL001T - Old moodle has 'All courses' &gt; List of categories with \[ Add a new course \] at the bottom. A similar page on 3.4 you select Courses from the navigation block.

UCL006T - Failed as the accounts didn't appear in the search. **Do these accounts even appear on MIP UAT?**

0007507
LaTex/Tex filter
Tested in a label on <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2>
RD
Chrome 66
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Jmol Filter
Tested in a label on <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2>
RD
Chrome 66
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Filter was turned off at site level so turned on - test molecule displayed fine.
**Blocks**

Comparison
-   List out those in current Moodle vs those in new
-   Should all new blocks be enabled?
-   Are there any missing that would be desirable?
-   Do any not seem to work at all?

JLH
Chrome 52 on Windows 7
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
All blocks work in terms of their functionality but there are some questions:

-   Community finder (**Do we need?**)
-   Feedback (**Do we need?**)
-   Mentees (**Do we need?**)
-   Messages (**Removed in Moodle 3.4, was it used before?**)
-   Lecturecast Connector, MyPortfolio and Portico Enrolment (**all come from plugins/integrations**)

For more information, see [Tests-Blocks-Results](Tests-Blocks-Results)

**Miscellaneous/Any other things tested** - Please add any things that you notice that we may want to bear in mind as we go forward!
Review site policy agreement ?
RD
Staff help, Student help, Services menus difficult to use -
RD
Chrome66 FF 59
not intuitive that clicking on menu header is required in order to access the dropdown as the dropdown appears on mouse-over prior to clicking - also you can access the dropdown if you move fast enough!
See: <https://www.screencast.com/t/5KcvC7dk>
 0007498
My Courses page

-   Timeline
    -   Has a timeline of upcoming events within courses that can be organised in two ways:
        -   **Sort by date**: Lists all activites in the upcoming order with no organisation based
        -   **Sort by courses**: Shows a box for each course with a list of the upcoming activities
-   '**In Progress**', '**Future**' & '**Past**' tabs
    -   Shows a list of all courses that the user is enrolled on while organising them into tabs based on their start and end date.

Are either of these options required on the **My Courses** page?

JLH
Chrome 52 on Windows 7
Do we need to clarify: \[ My Courses \] tab vs. \[ Courses \] tab from within Course overview ?

ZW
Creating new courses is different / buggy.

Old moodle has 'All courses' &gt; List of categories with \[ Add a new course \] at the bottom. A similar page on 3.4 you select Courses from the navigation block.  (Logged under UCL HAcks UCL001T above)

BUT if you click Add a new course in <https://v34.moodle-01-u.ucl.ac.uk/course/>, the system errors 'Can not find data record in database table course\_categories'. You MUST select a category first.  AND if you are enrolled on any courses, this option does not appear at all under Navigation &gt; Courses.

ZW

This did not happen in current Moodle.

0007508

If users are migrated, will their profiles be the same ?  Eg: Digest options, text editor, notification preferences, etc.
jk
Do we want the Learning Plans block?
jk
Course overview Timeline?  Need to untick Course end date to avoid courses appearing in the past.
jk
Grade book does not display list of students.
jk
In context  help link open in a new window. Is a smaller window preferable/?

Log in box appears funny( overlapping) on page that opens...

jk
Need to review what is Theme bug and what is working as intended for second pass: <https://liveuclac.sharepoint.com/:w:/r/sites/AccessibleMoodle/_layouts/15/Doc.aspx?sourcedoc=%7Bbfe79cc5-0a65-4b13-84b7-d0e7e596c01b%7D&action=edit&uid=%7BBFE79CC5-0A65-4B13-84B7-D0E7E596C01B%7D&ListItemId=13&ListId=%7BFD511D3F-5308-40BA-BB4A-6AFDCA208F96%7D&odsp=1&env=prod>
AED
Loss of site navigation options when switching role to a student on a hidden course page. Potentially a theme issue?
JLH
Chrome 52 on Windows 7
[Screenshot](attachments/91030034/91032359.png)

1.  Navigate to a hidden course page
2.  Switch role to 'Student'
3.  Observe error messages
4.  **WORKAROUND**: Change URL to that of homepage, log out and then log back in

Media resource needs to be tested - do resources come across
AED
Student Help &gt; Plagiarism and academic writing is hard coded to the 17/18 Moodle page.  We need to duplicate the course in 18/19, re-link and ensure it is clear to students.
ZW

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [iconalignnmentBG.png](attachments/91030034/91031893.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [User Guide for Mantis.docx](attachments/91030034/91032209.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SwitchRoleNoNavigation.PNG](attachments/91030034/91032359.png) (image/png)

