# Moodle 3.4 Testing - 2nd Pass - May/June

scThis second round of testing is to try and go further into detail, and test bug fixes that have been applied. For this reason, it's focused around key areas such as assessment, basic administrative functions that most staff users will need to perform, and the new theme. 

-   Please log out of all other UCL Moodle's before you start testing!
-   UAT 3.4 Instance can be found here: <https://v34.moodle-01-u.ucl.ac.uk/> 
-   Some items such as MyFeedback are being tested on alternative UAT as need back end data.
-   Language pack customisations have now been carried over from current Moodle - please note in comments any language that needs a change, or should be reverted to original Moodle terminology.

-   [Process:](#Moodle3.4Testing2ndPassMay/June-Process:)
-   [Activities/ Plugins](#Moodle3.4Testing2ndPassMay/June-Activities/Plugins)
    -   [Assessment](#Moodle3.4Testing2ndPassMay/June-Assessment)
    -   [Non Assessment Activities](#Moodle3.4Testing2ndPassMay/June-NonAssessmentActivities)
    -   [Resources](#Moodle3.4Testing2ndPassMay/June-Resources)
    -   [Blocks](#Moodle3.4Testing2ndPassMay/June-Blocks)
-   [Course Administration](#Moodle3.4Testing2ndPassMay/June-CourseAdministration)
    -   [Course formats](#Moodle3.4Testing2ndPassMay/June-Courseformats)
    -   [Course Administration](#Moodle3.4Testing2ndPassMay/June-CourseAdministration.1)
-   [Platform Administration](#Moodle3.4Testing2ndPassMay/June-PlatformAdministration)
-   [Miscellaneous/Any other things tested](#Moodle3.4Testing2ndPassMay/June-Miscellaneous/Anyotherthingstested)

### Process:

-   Please create any Test courses in the Miscellaneous &gt; Testing category.

-   Put your name against any section you are intending to test. Add in your exact browser version. 

1.  **Look at the tests linked next to each item, and in the 'details' section list which ones you have undertaken. **
    1.  (If Test does not exist then detail briefly what you did.)
2.  **Confirm in the details/passed section if the outcomes seems to be satisfactory next to each test. **
    1.  (If possible add a link to test activity etc as this will make logging errors easier. )
3.  **If any bugs were logged then please check that these have been fixed and note results in details. **
4.  **Log issues in Mantis <https://www.ucl.ac.uk/mantis>. See guide [here.](attachments/91033295/91033192.docx) **Choose the Moodle Improvement Project (MIP) from the Project dropdown. Provide as much info as possible. Leave tickets unassigned.**
    **
5.  **Add Mantis number to Mantis? column for reference. **

-   List of all current Test scripts can be found here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle> - please do not put results in those pages, only here, but do feel free to update or add to them, following existing format.  
-   Moodle doc release notes: <https://docs.moodle.org/dev/Moodle_3.4_release_notes>
-   1st pass testing report can be found here: [Moodle 3.4 Testing - 1st Pass - April/May](Moodle_3.4_Testing_-_1st_Pass_-_April_May)

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
### **Activities/ Plugins**

** **

#### Assessment

Turnitin - see [Tests Turnitin](Tests-Turnitin)

***Please test only basic functionality/the issues below - lots of other plugins to test!***

-   0007499 - In add an activity or resource - Rename 'Turnitin' Link a to 'Turnitin assignment' and re-order so it is second item on list.
-   0007500 - The multiple marker functionality seems to be turned on. Should be off. 
-   0007501 - During submission as student - Could not close Turnitin submission preview window with Close link . The "x" was not clearly visible (\[TII001T\] - step 3)
-   0007502 - The submission inbox is 'squashed'. column heading and sorting links not visible. - A lot of space is  'wasted'- Fullscreen view sorts this- Should we make Full screen view as default?
-   0007503 - 'Try deleting a submitted assignment' - Page has to be refreshed to see that deletion has occurred.\*\* Refresh seems to be required for most actions... (\[TII001T\] and (\[TII001T\] - step 3)
-   0007504 - Moodle Course Grade book does not display list of students.

NEW (30/05/18) - 0007575 Floating menu when viewing a Turnitin assignment. When viewing a standard Moodle assignment or other activities in Moodle, the Menu is fixed but in Turnitin it floats and is sometimes hidden behind other items.

See Bin ? - Turnitin plugin - 21/02/18 for previous test results.

FH

66.0.3359.181

0007499

0007500 - Pass (accessed via Turnitin UK website)

0007501- Cannot close preview box. Only clicking off preview box works

0007502- headers in inbox visible (but messy and misaligned). Clicking 'hide blocks' or 'full screen' shows inbox as desired. Full screen or hide blocks by default would be better.

**0007503**-  Page still needs manual refresh to show deletion - AED: Seems fixed to me? See notes on Mantis.

**0007504- **<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> cannot see students in gradebook. Inconsistent - works in this course: [https://v34.moodle-01-u.ucl.ac.uk/grade/report/grader/index.php?id=2108
](https://v34.moodle-01-u.ucl.ac.uk/grade/report/grader/index.php?id=2108)but not here? <https://v34.moodle-01-u.ucl.ac.uk/grade/report/grader/index.php?id=2> or here:
<https://v34.moodle-01-u.ucl.ac.uk/grade/report/grader/index.php?id=2106>
**(**students do appear on **Turnitin student tab** in inbox**)***Fixed on UAT with change to General settings for grader report. **See notes on Mantis.***

*Note that users will currently need to be enrolled as 'UCL Student' in order to show up.*
0007575-

https://screencast-o-matic.com/watch/cFhv2lbsmc

Assignments - see [Tests Assignment](Tests_-_Assignment)
***Please test only basic functionality/the issues below - lots of other plugins to test!***

-   0007515 - \[ASS001S\] 6. File appeared to be deleted but WAS NOT in fact deleted. It re-appeared when student came out of the assignment and went back into it. And the tutor could still see it after it was "deleted". Tried this in current Moodle 3.1 assignment with the same settings and student was able to truly delete their file before the due date. 6 & 7. However, if the student "deleted" their file and then without Saving Changes or anything, dragged and dropped in another file, the second file did replace the first one. This seemed to be the only way to actually get rid of the first file. FIX PENDING
-   **0007516** - \[ASS002S\] If student goes to edit Submission the Cancel button has a white  background hence not clearly visible. NOT IN FACT FIXED

-   **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> **0007517** -** ~~**Text submitted online did not convert to PDF and so could not be marked using Moodle Assignment's annotation tools**~~ FIXED & TESTED

-   **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

    **0007521** - ~~\[ASS005T\] Text submitted online did not convert to PDF and appears to the right of the screen. This happens in the 'old' Moodle as well. Need to investigate - refer to <https://moodle.org/mod/forum/discuss.php?d=333814>~~ FIXED & TESTED

KSC
Firefox Quantum 60.0.1 (64-bit)

Quizzes - see [Tests Quiz](Tests-Quiz)

***Please test only basic functionality/the issues below - lots of other plugins to test!***

Quiz setup QIZ001TS **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
**\[QIZ002TS\] : Testing Quiz Timer **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ003S\] : Testing Quiz **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ004S\] : Testing Quiz (Each attempt builds on the last) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ005S\] : Testing Quiz (Grading Method) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ007TS\]: Testing Quiz (Decimal Points) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ008TS\]: Testing Quiz (review – Immediately during the attempt) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ010TS\]: Testing Quiz (Student’s review – After the quiz is closed) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

\[QIZ012TS\]: Testing Quiz (Require password) **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**

**
**

**Quiz resets- UCL Tools**

RD

FH

Chrome67.0.3396.87

Tested at: <https://v34.moodle-01-u.ucl.ac.uk/mod/quiz/view.php?id=6752>

Edit quiz (questions page) 'repaginate button white text against light grey so almost invisible' - same issue: question preview buttons.

FH Quiz reset <img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Failed during testing but would like someone else to test too- close date and grace period enabled on quiz but course not found under quiz reset tool

Database
Can we import database entries from old Moodle to new Moodle?  The main issue here is that as we are not carrying over user data, can we import entries made into the database?

**Step 1: Back up and restore database**

-   Back up a database from old Moodle. Do not carry over any user data
-   Restore the database from old Moodle into new Moodle

**Step 2: Export and Import database entries**

-   Export entries from an existing database in old Moodle . Navigate to database&gt; click on it &gt; Select Export Entries as csv and save the file.
-   Import entries into Database in new Moodle . Navigate to the database &gt; You can import entries via a CSV file if you click the "Import entries" link under 'Database activity administration' in the Administration block of your course.

JK - It worked fine but would like like someone else to test this as well.
Alerts
Test that these can be turned on, and are working.  Eg: Turnitin Submission to Tutor.

Test Notification to Tutor on assignment submission ( Moodle and Turnitin)

Test notification to students on Feedback received ( Moodle assignment)

JK
Unable to test as crohn job is set not to send any emails out. Logged Mantis query - [0007670](https://www.ucl.ac.uk/mantis/view.php?id=7670)  to see if they can test this aspect.

NOTE: Turnitin notification should be set as in current Moodle. See attached screen shots - [Legacy: Turnitin\_notification\_legacy.PNG](attachments/91033295/94766048.png)

Ensure Production is set  to 'Turnitin Assignment Instructor Digital Receipt notifications' - off, off, off, off

#### Non Assessment Activities

MyFeedback - see [Tests-MyFeedback](Tests-MyFeedback)
Staff Test Scripts
\[MYF001T\] View a student record to see grades and feedback
\[MYF002T\] View a class' My Feedback report
\[MYF003T\] Find a student from Staff My Feedback dashboard view, review feedback comments and notes.
\[MYF003T\] Department admin role
Student Test Scripts
\[MYF001S\] Viewing your own My Feedback report as a student
\[MYF002S\] Reviewing own Feedback comments and adding notes.
Other Tests
**JG**
All passed.
Forum - See [Tests-Forum](Tests-Forum)
See [Tests-Forum](Tests-Forum) and below:

1.  Display entire forum thread for reference when replying, rather than just the immediate post you are replying to. This might be with a link that says 'See this post in context', which is what it has in the email.
2.  Make it clear where forum post emails originate in terms of the Moodle installation, the course and the forum name.
3.  New function to Unsubscribe from Discussions.
4.  Fix advanced forum interface for composing posts and responses.
5.  Check default Subscription Mode is set to Automatic, for Forum and Advanced Forum.

ZW

1.  ZW
2.  ZW
3.  ZW
4.   ?
5.  JLH

ZW: See notes on Automatic Subscription: <https://docs.moodle.org/34/en/Forum_settings> This seems counter intuitive: Changing from Optional &gt; Auto does NOT subscribe everyone.  Also seems to be inconsistent, sometime it does, sometimes it does not.

ZW: Site Admin &gt; Plugins &gt; Activity modules &gt; Forum <https://v34.moodle-01-u.ucl.ac.uk/admin/settings.php?section=modsettingforum> Allow forced read tracking enabled on v34 UAT.

ZW: Can turn on Ratings but seems to have no effect.

1.  ZW - waiting on email CRON
2.  ZW - waiting on email CRON
3.  ZW - waiting on email CRON
4.  <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> **Not tested. Not sure what it's talking about.**
5.  <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> Moodle Forums has had the default Subscription Mode set to Automatic. **However, Advanced Forums doesn't have an option for the default subscription mode to be 'Automatic' site-wide. Bug raised in Mantis as backend hack could resolve this. 0007676**

Scheduler - please detail in [Tests-Scheduler](Tests-Scheduler)
**Staff Test Scripts**

-   SCH001T Create a Scheduler Activity for Individual Bookings
-   SCH002T Create a Scheduler Activity for Group Bookings
-   SCH003T Add a Single Slot
-   SCH004T Add Repeated Slots

**Student Test Scripts**

-   SCH001S Book an Individual Slot
-   SCH002S Cancel an Individual Slot Booking
-   SCH003S Book a Group Slot
-   SCH004S Cancel a Group Slot Booking

See [Tests-Scheduler](Tests-Scheduler) for more information

JLH
Safari on iOS 11.4
SCH001T <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH002T <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH003T <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH004T <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH001S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH002S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH003S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

SCH004S <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> All tests passed as intended.

<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> Guidance for the Scheduler could be updated to show the information needed to correctly create a scheduler activity for group bookings.

Attendance - please detail in Tests- Attendance
***No tests currently documented for this - I've copied a test script page to get the format right, please detail test process while testing?***
FH
GC 67.0.3396.87 
All <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Choice - see [Tests-Choice](Tests-Choice)
JK
Questionnaire -
SCORM - please detail in Tests-SCORM
***No tests currently documented for this - I've copied a test script page to get the format right, please detail test process while testing?***
**GL**
Works without problems and passes the marks to the GradeBook correctly <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
#### Resources

Media Central (Media Resource) - see [Tests-MediaCentral](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-MediaCentral)
**Staff Tests**
\[MED001T\] Upload a piece of media to Moodle course using Media Resource Activity
\[MED002T\] Record a piece of media to Moodle course using Media Resource Activity
\[MED003T\] Restrict uploaded media to a Group
\[MED004T\] Check appearance/access of videos once original uploading staff are unenrolled
\[MED005T\] Check logging for actions on uploaded media content
\[MED006T\] Upload a Media Resource using a mobile device
\[MED007T\] Record a piece of media to Moodle course using Media Resource Activity using a mobile device.
\[MED008T\] Audio test
**Students Tests**
\[MED001S\] View a Media Resource using a mobile device
\[MED002S\] Guest Access
**DMS - who exactly? <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" />**
Lecturecast - see [Tests-Lecturecast LTI](Tests-Lecturecast_LTI)
***Some issues with this. Logged in Mantis, <https://www.ucl.ac.uk/mantis/view.php?id=7668> If you can access ALP then please test.***

*Please test using the applicable scenarios listed here: [Lecturecast Moodle Connector block testing -Dec 22nd 2017](https://wiki.ucl.ac.uk/display/ISDLecturecast/Lecturecast+Moodle+Connector+block+testing+-Dec+22nd+2017) and add to *test script page linked to the left to get the format right.**

**RD**
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
**<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> LTI configured but some issues with user pass through. Logged in Mantis.**
0007668
Blackboard Collaborate Ultra - please detail in [Tests-BlackboardCollaborate](Tests-BlackboardCollaborate)
***No tests currently documented for this - I've copied a test script page to get the format right, please detail test process while testing?***
FH
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Passed- see test recording:

<https://eu.bbcollab.com/collab/ui/session/playback/load/47ee98bafb58438886dd5fffa6f5a79c>

To add test scripts post test (limited time)

#### Blocks

Reading List items
***Does this need config or similar before can be tested? If so log a ticket with RDE.***
**GL**
Reading Lists from backup and restore work fine. <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

I will need to check what the effect will be after the update to AMP codes with the Library, as we might still be getting results for the correct module, but last year's reading list.

Comparison
Blocks to disable:

-   Community finder
-   Feedback
-   Mentee
-   Learning Plans

For more information, see [Tests-Blocks-Results](Tests-Blocks-Results) from the 1st pass of testing

JLH
Common Timetable
Current block works with pre-AMP Modules codes, but does not display module selected.

Can add and remove display of various items. Code passes through to CMIS.

ZW

AED

FF 60.0.2

Chrome 67.0

Need to test post-AMP

******<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> 0007666 - AED -****** Links to timetable open in same window - not same as current Moodle.

0007666

Library Resources
-   [UCL Library Catalogue](http://digitool-b.lib.ucl.ac.uk:8881/R?func=search-advanced-go&LOCAL_BASE=1152&find_code1=WRD&request1=%s)

-   [WISE Information Skills](http://www.ucl.ac.uk/library)
-   [Reading List](http://ls-tlss.ucl.ac.uk/cgi-bin/displaylist?module=10)

-   [Past UCL Exam Papers](https://v34.moodle-01-u.ucl.ac.uk/course/Past%20UCL%20Exam%20Papers)

AED
Chrome 67.0
******<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> 0007667 -****** Quite a few links broken - looks like may be out of date, as language and links don't match between current 3.1 and 3.4 UAT. Full comparison at <https://www.ucl.ac.uk/mantis/view.php?id=7667>

0007667
### Course Administration

#### **Course formats**

*See [Tests-CourseFormats](Tests-CourseFormats) and [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests.
***Please test only basic functionality/the issues below - lots of other plugins to test!****

**0007544 -**double-click on the handle to move a section around - pop up says: To Section 1, To Section 2,... making it unclear for the user if it means after section 1, before section 1,...

JLH

AED

Chrome 52 on Windows 7 (JLH)
0007544 - In terms of functionality, it works identically to live Moodle so it'll place the section after what has been selected. The wording has been updated i nthe language pack to reflect how the function actually works. JLH

0007605 \*NEW - When moving section by clicking on location, a pop up appears. If you attempt to close it using the X icon, or hover near the top, the menu bar drop downs think they are being clicked and overlay on the pop up, making it hard to close. See screenshot AED.

0007605 - Unable to recreate the issue myself, could be a scaling issue?

**0007544**

**0007605**

Grid
-   **0007497** - Highlighting a section works but seeing the highlight doesn't (**theme issue?**)
-   0007531 - Within the settings for any course using the grid format, the options under Grid reset options appear offset to the right of the screen.

JLH

RD

AED

Chrome 52 on Windows 7 (JLH)
0007497 - Section highlight isn't visible. Marked as fixed in Mantis. (JLH/RD)

0007531 - Fixed as of 2018-06-21 (JLH)

**0007497**

**0007531**

One topic (AKA Tabs)
-   **0007497** - Highlighting a section works but seeing the highlight doesn't (**theme issue?**)

JLH
Chrome 52 on Windows 7 (JLH)
******0007497 <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />****** - Section highlight isn't visible. Marked as fixed in Mantis.

**0007497**
Topics
-   **0007497** - Highlighting a section works but seeing the highlight doesn't (**theme issue?**)

JLH
Chrome 52 on Windows 7 (JLH)
******0007497 <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />****** - Section highlight isn't visible. Marked as fixed in Mantis.

**0007497**
Collapsed
-   **0007497** - Highlighting a section works but seeing the highlight doesn't (**theme issue?**)
-   **0007531** - Within the settings for any course using the grid format, the options under **Collapsed Topics** **reset options** appear offset to the right of the screen.
-   **0007543** - When you double-click on the handle to move a topic in collapsed topics format, if you select the second one the first topic does not appear on the list (any other topic selected will include it).

JLH

AED

Chrome 52 on Windows 7 (JLH)
******0007497 <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />****** - Section highlight isn't visible. Marked as fixed in Mantis.

**0007531 **<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />**** - Fixed as of 2018-06-21 (JLH)

**0007543** - Odd behaviour confirmed, maybe helped by language pack change suggested in 0007544. AED

**0007497**

**0007531**

**0007543**

#### **Course Administration**

*See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General) for possible functionality and tests
***Please test only basic functionality/the issues below - lots of other plugins to test!****

JK - see below
Edit Sections/Topics

-   **0007497** - Highlighting section makes no discernible difference in topics format at least.

-   b: Can't find these in topic format - course format dependent? can't see '-' in 'one topic format' can see '+'.

jk
-   **<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />0007497** - Highlighting section makes no discernible difference in topics format at least- NO CHANGE

-   NEW Hiding a section slightly greys out the section and the section heading  + activity links but a more notable difference would be preferable?

**0007497** is marked as fixed in Mantis but doesn't appear to be? RD
Add/Edit content
-   **0007505** - Drag and drop of Test mp4 video file - embed option chosen on upload but displayed black screen although Audio was present - same when placed in as file resource
-   0007506 - Resource/activity icons alignment vary and indent and outdent for assignment activity on course page seemed to actually do the reverse of what expected. May be to do with vertical line to left of activity? See screenshot

jk

JK

****<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />**** **0007505** - Possibly Expected behavior? File uploads and presents a blank screen with play icon. Once the user clicks on the play button the video plays. Same result when MP4 was uploaded via add a label. [https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014\#section-3
](https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2014#section-3)***AED: However can't seem to replicate on: <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2148#section-2> Tried variety of file formats, including mp4, which is same as one with issue and seem to work fine? See Mantis for notes.***

-   0007506 icons align accordingly. See screen shot [iicon\_alignment.PNG](attachments/91033295/92506908.png)

Hide content - check with student test account
-   Worth noting that *number of topics* has been removed from course settings 3.3+ - this means anyone importing courses where they've relied on this mechanism to hide topic areas under development will get a surprise!! More info - <https://docs.moodle.org/34/en/Stealth_activities>

jk
<img src="images/icons/emoticons/thumbs_up.svg" alt="(thumbs up)" class="emoticon emoticon-thumbs-up" />This has been replaced with 'Add section' or 'Add Topics' icon at the bottom of right of the course page. Stealth mode seems to work.

**Stealth Mode:** If enabled, activities can be made available but not shown in visible sections of the course page. If so, links to stealth activities must be provided from elsewhere, such as from a page resource. Stealth activities are still listed in the gradebook and other reports.

*The same is achieved through hiding a section  and leaving the activity/resource visible then linking to it from a visible section.*

Navigate between activities
-   <https://tracker.moodle.org/browse/MDL-59313> (Creating courses with multiple course formats and getting content from live Moodle)

jk
Course Reset
Test on course which includes TII submissions - check this passes: UCL005T
jk
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Reset works fine for TII assignment. New dates created and when a new submission is made after Reset , it remains anonymous.
Back up and restore

-   Not a bug - No testing has been done regarding enrolled users and their roles when doing a backup and restore from live Moodle to MIP UAT. Once the roles on the new Moodle are finalised, this can be tested with accurate results.

<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
**If there is a file activity on a page that references a private file or shared file via an alias/shortcut, these will be restored into the new Moodle if the backup was made on live Moodle (migration tool).**

### Platform Administration

UCL Hacks - see [Tests-UCLHacks](Tests-UCLHacks)
-   **0007507** - UCL001T - Old moodle has 'All courses' &gt; List of categories with \[ Add a new course \] at the bottom. A similar page on 3.4 you select Courses from the navigation block.
-   Not a bug - UCL006T - Failed as the accounts didn't appear in the search. Do these accounts even appear on MIP UAT?

ZW
RD

JLH

0007507: Suggest either adding link to all courses in bottom of Course Overview block, or adding link just under search box in block on top right? [See attached prioritised theme feedback doc.](attachments/91033295/93815995.docx)<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> ***AED:*** ***Confirmed with Niv that will be added along with search courses box to HTML block on /my page.***

My home page &gt; Course overview
-   Timeline
    -   Has a timeline of upcoming events within courses that can be organised in two ways:
        -   **Sort by date**: Lists all activites in the upcoming order with no organisation based
        -   **Sort by courses**: Shows a box for each course with a list of the upcoming activities
-   '**In Progress**', '**Future**' & '**Past**' tabs
    -   Shows a list of all courses that the user is enrolled on while organising them into tabs based on their start and end date.

Are either of these options required on the **My Courses** page?

-   Do we need to clarify: \[ My Courses \] tab vs. \[ Courses \] tab from within Course overview ?

***Needs discussion first - don't test yet!***
Categories
**0007508** - Creating new courses is different / buggy. Old moodle has 'All courses' &gt; List of categories with \[ Add a new course \] at the bottom. A similar page on 3.4 you select Courses from the navigation block.  (Logged under UCL HAcks UCL001T above). BUT if you click Add a new course in <https://v34.moodle-01-u.ucl.ac.uk/course/>, the system errors 'Can not find data record in database table course\_categories'. You MUST select a category first.  AND if you are enrolled on any courses, this option does not appear at all under Navigation &gt; Courses.

**0007511 -** Category titles are top vertical aligned. Unsure what they should be instead.

********0007508** -****** Due to difference in config for UAT- Niv advises retest on PP. AED
******
0007511 - <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />****** - marked as fixed but doesn't appear so in UAT? Nice to have so look to fix in second phase fixes. AED
Navigation
-   **0007498** - not intuitive that clicking on menu header is required in order to access the dropdown as the dropdown appears on mouse-over prior to clicking - also you can access the dropdown if you move fast enough! See: <https://www.screencast.com/t/5KcvC7dk>
-   MANTIS? - In context  help link open in a new window. Is a smaller window preferable/? Log in box appears funny( overlapping) on page that opens...

-   **MANTIS? -** Loss of site navigation options when switching role to a student on a hidden course page. Potentially a theme issue? [Screenshot](attachments/91033295/91033191.png)

    1.  Navigate to a hidden course page
    2.  Switch role to 'Student'
    3.  Observe error messages
    4.  **WORKAROUND**: Change URL to that of homepage, log out and then log back in

JK

**0007498** - Seems to work fine in pared back UAT theme. AED

MANTIS?  But tested on UAT  (20/06/18) and it works OK

Private Files
Looking to disable the private files function but some testing needs to be done.

-   Disable the block
-   Disable the private files repository in the site settings
-   Change roles so permissions for private files are set to prohibit
-   Backup a course on live Moodle and restore on test Moodle (once private files are disabled)

JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
Disabling private files on UAT will not break any other functionality of Moodle. **However, it could cause issues with course backups and restores (migration tool) if private files are on the course page as an alias/shortcut.**

**
**Private files have been disabled on UAT

-   Set the capabilities '**moodle/user:manageownfiles**' and '**repository/user:view**' to prohibit in **Administration&gt;Site administration&gt;Users&gt;Permissions&gt;Define Roles&gt;Authenticated User**
-   Disabled the **Private files** repository in **Administration&gt;Site administration&gt;Plugins&gt;Repositories&gt;Manage repositories**

Guest access
-   UCL Guest has been created as part of the role overhaul. It has also been set as the role that's applied when a user logs in as a guest.
-   No guest login button on the homepage (0007612)
-   The login as guest process doesn't have parity with how it works on live Moodle. Behaviour is login as guest then direct to accept T&Cs, then redirected to <https://moodle.ucl.ac.uk/my/> with category display. [See screenshot.](attachments/91033295/93815998.png) (**0007510**)

AED

ZW

0007510- New Moodle behaviour needs to:- force user to accept T&C
- Redirecting to:
-- /my with category listing or link to all courses
-- or /course page so can browse all courses if hard to get cat listing on /my.

0007612Currently only available if you click \[Log In\] with no details entered.  Separate button needs to be agreed and added.

**0007510**

**0007612**

### **Miscellaneous/Any other things tested**

***Please add any things that you notice that we may want to bear in mind as we go forward!***
Course Overview
Currently on Home.  Replace with "My Courses" inc All courses... like on legacy moodle ?
ZW
NA - see Hacks 007507
Announcements
1) Change to Moodle News ?  How to access ?
ZW
In progress
Help Icons
All open in new tab with user not logged in.
ZW
Change to pop-up ?
**Share** function for admins
Option to 'share' moodle course to moodle.net? Disable? Related to community finder block? Under Settings/Course admin Block on any course
FH
Timeline icons
Appear to be limited to certain activities, see Rod Moodle Features Demo.  But this does NOT currently include Turnitin assignments
External Tools (LTIs)
Backup and Restore of External Tool acitivites (LTIs)
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
**All existing External Tool activities will have to be reconfigured to access Lecturecast during a backup and restore (migration tool/process).**
Shared Files
Backup and Restore of Shared Files that are added as an alias/shortcut
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
**If there is a file activity on a page that references a shared file via an alias/shortcut, these will be restored into the new Moodle if the backup was made on live Moodle (migration tool).**
Enroled users
layout very confusing, when adding new users or changing roles.
ZW
Blogs
Moodle's built-in blogging function was disabled due to the feature being difficult to track and manage. It's also an inferior blogging solution to what will be provided when CampusPress is rolled out.
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
This feature was disabled by unticking **Enable blogs** within **Administration &gt; Site administration &gt; Advanced features**
Competencies
Moodle's built-in feedback and learning plan system which has been disabled due to crossover with MyFeedback functionality.
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
This feature was disabled by unticking '**Enable competencies**' and '**Push course ratings to individual learning plans**' under **Site Administration &gt; Competencies &gt; Competencies settings**

Language Pack Customisation
A full list of language pack changes can be found here (insert appropriate link) List of IDs for the Mantis bug tracker present for quick reference.
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />

**0007544**

**0007641**

Search Courses & Guest Login
on v34 UAT both seem to be hardlinked to v34 dev.  Tim is running an update in v34 UAT.  Will need to double check this on v34 pp.
ZW
Testing on iPad
Testing the theme on my iPad (9.7inch, 2017 model) using Safari on iOS 11.4. Assume everything is working as intended unless there is a bug report on Mantis.
JLH
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />
<https://www.ucl.ac.uk/mantis/view.php?id=7672>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SwitchRoleNoNavigation.PNG](attachments/91033295/91033191.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [User Guide for Mantis.docx](attachments/91033295/91033192.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [iconalignnmentBG.png](attachments/91033295/91033193.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [icon\_alignment.PNG](attachments/91033295/92506908.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [activity\_background.PNG](attachments/91033295/92506916.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MIP theme feedback prioritised - June 2018.docx](attachments/91033295/93815995.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Menu\_CourseTopicMove\_overlay.png](attachments/91033295/93815997.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [UCLMoodle My home GUEST .png](attachments/91033295/93815998.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Turnitin\_notification\_legacy.PNG](attachments/91033295/94766048.png) (image/png)

