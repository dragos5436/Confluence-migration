# MIP Migration Tool Testing - June 2018

There are two aspects to this testing:

1.  To see if there are any specifics that cause issues with the tool - either because they cause backup/restore to fail, or because they 'break' in the newly migrated course. 
2.  To get some idea of the possible 'rate' of migration, including how the system deals with failed migrations, what is the % of failure etc...

-   **You will need to be testing on Pre-Production! sites: 
    - Legacy 3.1: <https://moodle-pp.ucl.ac.uk/login/index.php>[/](https://moodle-pp.ucl.ac.uk/) - Staff Help &gt; Course Migration Tool
    - New 3.4: <https://moodle-1819-pp.ucl.ac.uk/>**

-   [Specifics](#MIPMigrationToolTestingJune2018-Specifics)
    -   [Roles](#MIPMigrationToolTestingJune2018-Roles)
    -   [Resources/Activities](#MIPMigrationToolTestingJune2018-Resources/Activities)
    -   [Size](#MIPMigrationToolTestingJune2018-Size)
-   [Rate and scheduling](#MIPMigrationToolTestingJune2018-Rateandscheduling)
-   [Miscellaneous/Any other things tested](#MIPMigrationToolTestingJune2018-Miscellaneous/Anyotherthingstested)

Process:

-   Please create any Test courses in the Miscellaneous &gt; Testing category.

-   Put your name against any section you are intending to test. Add in your exact browser version. 

1.  **Look at the tests linked next to each item, and in the 'details' section list explain briefly what you did.**
    1.  (If possible add a link to test activity etc as this will make logging errors easier. )**
        **
2.  **Confirm in the details/passed section if the outcomes seems to be satisfactory next to each test. **
3.  **Log issues in Mantis <https://www.ucl.ac.uk/mantis>. See guide [here.](attachments/93816406/93816178.docx) **Choose the Moodle Improvement Project (MIP) from the Project dropdown. Provide as much info as possible. Leave tickets unassigned.**
    **
4.  **Add Mantis number to Mantis? column for reference. **

-   Moodle doc release notes: <https://docs.moodle.org/dev/Moodle_3.4_release_notes>
-   1st Pass testing report can be found here: [Moodle 3.4 Testing - 1st Pass - April/May](Moodle_3.4_Testing_-_1st_Pass_-_April_May)

-   2nd Pass testing report can be found here: [Moodle 3.4 Testing - 2nd Pass - May/June](Moodle_3.4_Testing_-_2nd_Pass_-_May_June)

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
### Specifics

***Are there any specifics that cause issues for the tool - either because they cause backup/restore to fail, or because they 'break' in the newly migrated course. ***

#### Roles

All roles

-   Create a course in current Moodle that has nothing in it, apart from a different user in every single role.
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Has the new course retained Course Title, Shortname etc...? Is the template still there?
    -   Do the enrolments look ok? No odd durations set, inactive users etc?
    -   Do the permissions come across as expected? Can an editing tutor edit? Is non editing staff role restricted? Can students only see what they are meant to see etc?

***Wait for Tim to confirm to test***

N/A
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Tim J Gagen

Role conflicts
-   Create a course in current Moodle that has nothing in it, apart from a few users with conflicting roles. E.g. User 1 = student and course admin.
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Do the enrolments look ok? No odd durations set, inactive users etc?
    -   Do the permissions come across as expected? Can an editing tutor edit? Is non editing staff role restricted? Can students only see what they are meant to see etc?

***Wait for Tim to confirm to test***

#### Resources/Activities

All non-deprecated Resources
-   Create a course in current Moodle that has an example of each resource type supported in new Moodle (see below for non supported resources)
    -   Label - include odd Latex formatting ( See [AED test](https://moodle.ucl.ac.uk/course/view.php?id=41343) for sample or ask ***RD***)
    -   Label - include drag and drop picture.
    -   Label - include H1 and other formatting.
-   Add view restrictions and activity completion to a few of the resources.
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?
    -   Did all activities come across? Are they all configured as expected or has config been lost?
    -   Have restrictions and activity completion come across as expected?

All Resources (including deprecated)
-   Add to the previous course in current Moodle an example of each deprecated resource type:
    -   File - create alias/shortcut using shared files
    -   File - create alias/shortcut using private files

    IS THIS STILL REQUIRED?
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?
    -   Did all activities come across? Are they all configured as expected or has config been lost?
    -   Have restrictions and activity completion come across as expected?

All non-deprecated Activities

-   Create a course in current Moodle an example of each activity supported in new Moodle (see section below for non supported activities) including the following:
    -   Assignment TII ***- KSC***
    -   External Tool (LTI) ***- JLH***
    -   Database ***- JK***
    -   Glossary ***- KSC***
    -   Lecturecast link through to section
    -   Quiz ***- RD***
    -   Wiki ***- JK***
-   *Making sure to add some user data to each (not much) - people listed next to it can help supply examples.**
    ***
-   *Try to change a few of config settings from default and add some activity completion.*
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?
    -   Did all activities that should come across do so?
    -   Did any user data get carried across?
    -   Are they all configured as expected or has config been lost?
    -   Have restrictions and activity completion come across as expected?

All Activities (including deprecated)
-   Add to the previous course in current Moodle an example of each deprecated activity type - making sure to add some user data to each (not much) - people listed next to it can help supply examples.
    -   Campus Pack - at least one activity ***- GL***
    -   Old Blackboard Collaborate recordings ***- GL***
    -   Advanced Forum
-   Create a new course in new Moodle.
-   Schedule current Moodle course for migration to new course in new Moodle.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?
    -   Did all activities come across? Are they all configured as expected or has config been lost?
    -   Have restrictions and activity completion come across as expected?

#### Size

Single big file
-   Create a new course in new Moodle
-   Look in [MoodleBigFiles\_SingleBigFile.xlsx](attachments/93816406/93816958.xlsx), find the course with the biggest single file size in current Moodle
-   Schedule it for migration to new course.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?

Big course
-   Create a new course in new Moodle
-   Look in [MoodleBigFiles\_CourseSize.xlsx](attachments/93816406/93816959.xlsx), find the course with the biggest overall file size in current Moodle
-   Schedule it for migration to new course.
-   Check in new course:
    -   Does this cause any issues for the tool? (Does it restore ok or fail? - list any errors or signs)
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?

### Rate and scheduling

***To get some idea of the possible 'rate' of migration, including how the system deals with failed migrations, what is the % of failure etc...***

Schedule 100

-   Schedule 100 migrations for overnight.

-   TG to identify 100 courses in new Moodle.
-   TG to pull IDs from [MigrationTest\_100.xlsx](attachments/93816406/93816964.xlsx) from old Moodle.
-   Schedule 100 courses for migration to new courses overnight
-   Email <ele-core@ucl.ac.uk> to confirm:
    -   If process was successful and migrated courses available for checking
    -   Which course id ranges we should be checking
    -   Digi Ed - How to check migration tool reporting - pass/fail
-   TG to confirm in comments section:
    -   How many courses listed as migrated per hour?
    -   What % success rate?
    -   Were other items such as crons etc able to run? Or be blocked if desirable?

Tim J Gagen

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Tim J Gagen
[<img src="rest/documentConversion/latest/conversion/thumbnail/94768208/2" height="250" />](/download/attachments/93816406/20180703__Migration-testing__CourseLinks.pdf?version=2&modificationDate=1530698301000&api=v2)

**03-Jul-2018 - 04-Jul-2018**

101 mid-sized courses migrated - please see attached .pdf for pre and post-migration links.

-   101 courses were backed-up on Legacy-PreProd in ≈5 hours (101 .mbz (.zip) backup files - 54G total).
-   101 courses restored to MIP-PreProd in ≈45 mins.

Check 10
-   Pick 10 courses from the above list of 100
-   Navigate to the course in new Moodle
-   *Briefly!* check:
    -   Did the tool report migration as successful? If not, list any errors or signs.
    -   Does the course display as expected? E.g. Broken course format, or lost formatting?
    -   Did all activities/resources come across? Are they configured as expected or has config been lost?

    -   Have restrictions and activity completion generally come across as expected?

    -   Did enrolments come across as expected?

Digi Ed
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />Passed - Jason Norton
Record outcomes here:

[Migration Tool Bulk test results - June 2018](Migration_Tool_Bulk_test_results_-_June_2018)

### **Miscellaneous/Any other things tested**

***Please add any things that you notice that we may want to bear in mind as we go forward!***

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [UCLMoodle My home GUEST .png](attachments/93816406/93816172.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Menu\_CourseTopicMove\_overlay.png](attachments/93816406/93816173.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MIP theme feedback prioritised - June 2018.docx](attachments/93816406/93816174.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [activity\_background.PNG](attachments/93816406/93816175.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [icon\_alignment.PNG](attachments/93816406/93816176.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SwitchRoleNoNavigation.PNG](attachments/93816406/93816177.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [User Guide for Mantis.docx](attachments/93816406/93816178.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [iconalignnmentBG.png](attachments/93816406/93816179.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MoodleBigFiles\_SingleBigFile.xlsx](attachments/93816406/93816958.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MoodleBigFiles\_CourseSize.xlsx](attachments/93816406/93816959.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [MigrationTest\_100.xlsx](attachments/93816406/93816964.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [20180703\_\_Migration-testing\_\_CourseLinks.pdf](attachments/93816406/94768244.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [20180703\_\_Migration-testing\_\_CourseLinks.pdf](attachments/93816406/94768208.pdf) (application/pdf)

