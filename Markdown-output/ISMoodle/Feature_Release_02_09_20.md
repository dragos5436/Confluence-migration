# Feature Release 02/09/20

Expected Release date: 2nd September 1am-4am 

Build completion by: 27th August 5pm 

Testing on Moodle Staging signed-off by: 1st September 4pm

Deployment lead: AS

1) WRMS request WR342110 to add plugins

Add the following plugins to our build for 02/09 release:

``` java
git clone --branch moodle-34-master https://github.com/at-tools/moodle-block_massaction.git moodlesite/blocks/massaction/
git clone --branch MOODLE_38_STABLE https://github.com/davosmith/moodle-checklist.git moodlesite/mod/checklist/
git clone --branch master https://github.com/davosmith/moodle-grade_checklist.git moodlesite/grade/export/checklist/
git clone --branch master https://github.com/davosmith/moodle-block_checklist.git moodlesite/blocks/checklist/
```

2) Language Strings change

George to fill out:

| Component                                                              | String Name                                       | New wording                                                                                                                   |
|------------------------------------------------------------------------|---------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| assign.php (mod\_assign language pack)                                 | assignmentmail                                    | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | assignmentmailhtml                                | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | assignmentmailsmall                               | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailableanonhtml                         | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailableanonsmall                        | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailableanontext                         | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailablehtml                             | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailablesmall                            | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| assign.php (mod\_assign language pack)                                 | feedbackavailabletext                             | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| <https://moodle.ucl.ac.uk/admin/settings.php?section=modsettingassign> | Moodle assignment individual submission statement | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |
| <https://moodle.ucl.ac.uk/admin/settings.php?section=modsettingassign> | Moodle assignment group submission statement      | Append "Marks are provisional and subject to change as a result of internal and external moderation." to the current wording. |

3) New Plugin Permissions

| Role                             | block/massaction:addinstance | block/massaction:use | mod/checklist:emailoncomplete | mod/checklist:updateother |
|----------------------------------|------------------------------|----------------------|-------------------------------|---------------------------|
| Leader                           | Allow                        | Allow                | Allow                         | Allow                     |
| Tutor                            | Allow                        | Allow                | Allow                         | Allow                     |
| Course Administrator             | Allow                        | Allow                | Allow                         | Allow                     |
| Course Administrator (No E-Mail) | Allow                        | Allow                | Not set                       | Allow                     |
| Non-editing Tutor                | Not set                      | Not set              | Allow                         | Allow                     |
| Non-editing Tutor (No E-mail)    | Not set                      | Not set              | Not set                       | Allow                     |
| Staff Observer                   | Not set                      | Not set              | Not set                       | Not set                   |
| Student                          | Not set                      | Not set              | Not set                       | Not set                   |
| Student Content Developer        | Allow                        | Allow                | Not set                       | Not set                   |
| Faculty Learning Technologist    | Allow                        | Allow                | Not set                       | Allow                     |

Release Notes:

**New LTI Activity - Matlab Grader**

-   Miniguide: [M59 - MATLAB Grader](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M59+-+MATLAB+Grader)

**New H5P Activity type - Interactive Book**

-   Example: <https://h5p.org/content-types/interactive-book>
-   Miniguide:  [M55 - H5P Interactive Activities](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M55+-+H5P+Interactive+Activities)

**New Activity - Checklist**

-    Miniguide:  [M58 - Checklist](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M58+-+Checklist)

**New Block - Mass Actions**

-    Miniguide: [M01i - Mass Actions block](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M01i+-+Mass+Actions+block)

Approved plugins held back:

Component Grades Export - \#11 not fixed yet
