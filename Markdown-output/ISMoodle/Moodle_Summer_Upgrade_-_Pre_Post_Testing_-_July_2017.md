# Moodle Summer Upgrade - Pre/Post Testing - July 2017

/\*\*/ Pre-upgrade Tests Essential Testing items, Pre upgrade Post-upgrade Tests Essential Testing items, Post-upgrade on Snapshot instance Essential Testing items, Post-upgrade on live Moodle Post-Grace period tests on Snapshot

Please log out of all other UCL Moodle's before you start testing!!

Testing for this year is a bit particular as we are not actually 'upgrading' Moodle in the usual sense. We are switching off/disabling new instances of a few plugins, and adding one, but work will mainly be focussed around successful capture and deployment of the snapshot. 

For pre upgrade testing, test here [https://v315moodle-uat.ucl.ac.uk](https://v###.moodle-uat.ucl.ac.uk) -    you can use the 'Moodle Testing' course.

Full list of current Tests can be found here: <https://wiki.ucl.ac.uk/pages/viewpage.action?title=Tests&spaceKey=ISMoodle>

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

 

 

 

Course Menu Block
***(In live Moodle)*** Identify course with Course Menu block used extensively to check after update.

Use: https://moodle.ucl.ac.uk/course/view.php?id=16392

RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
Blackboard Collaborate
***(In live Moodle)*** Record session to check if this can be accessed as normal after the upgrade - or find existing recording.

Existing recording on Rod Digges Test Course zero at: <https://moodle.ucl.ac.uk/mod/elluminate/view.php?id=2825377>

RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 
Manual backups & restore

Course Reset

***(In live Moodle)*** Test on course that includes an example of each Campus Pack tool and BB Collab recording, check can back up and restore completely with user data.

***(In live Moodle)*** See \[GEN004T\] on [Tests-General](Tests-General) - but ensure includes example of each Campus Pack tool and BB Collab recording, and all student data removed as expected.

AED

AED

 
 
 
Blackboard Collaborate Ultra
***(In Test environment)*** Ensure item can be chosen in **add an activity** dropdown. Create new session and record as normal.
AED
 
 
 
Snapshot Student read-only role
***(In Test environment)*** [16/17 - Snapshot Testing - Student / Staff Read Only roles testing](16_17_-_Snapshot_Testing_-_Student_Staff_Read_Only_roles_testing)
RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
 

## 
Post-upgrade Tests

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

### **Essential Testing items, Post-upgrade on Snapshot instance**

** **

 

 

 

Student read-only role
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> GO LIVE SIGNOFF [16/17 - Snapshot Student and Staff Read-only roles tests](16_17_-_Snapshot_Testing_-_Student_Staff_Read_Only_roles_testing)
RD
 
 
 
Check Guest access not available
 GO LIVE SIGNOFF [16/17 - Snapshot Student and Staff Read-only roles tests](16_17_-_Snapshot_Testing_-_Student_Staff_Read_Only_roles_testing)
RD
 
 
 
Manual backups & restore

Test on course that includes an example of each Campus Pack tool and a BB Collab recording. Check can back up with full student data, and then attempt to restore on live, complete with user data.

RD
 
 
 
### **Essential Testing items, Post-upgrade on live Moodle**

 
 
 
 
Course Menu block
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> GO LIVE SIGNOFF - Check previously identified course to confirm Course Menu block has disappeared as expected when logged in as Tutor, Course Administrator and cannot be added. ****

RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
<https://moodle.ucl.ac.uk/course/view.php?id=16392>
Further roles to be tested (but not crucial for Go-live sign off): Course Administrator (no email), Leader, Library Administrator, Manager, Sub-Administrator

KSC

by  25 Jul 2017  

 
![(tick)](images/icons/emoticons/check.png)
Test site used: <https://moodle.ucl.ac.uk/course/view.php?id=42765>

| Is the Course Menu block:       | Listed for? | Can be added by? |
|---------------------------------|-------------|------------------|
| Course Administrator (no email) | No          | No               |
| Leader                          | No          | No               |
| Library Administrator           | No          | No               |
| Manager                         | No          | No               |
| \*Sub-Administrator             | N/A         | N/A              |

\* Unable to test.

Campus Pack (all activities)
GO LIVE SIGNOFF - Check that new instances cannot be added but existing ones still behave as normal. Log in as student to see if student role can edit existing activities

GO LIVE SIGNOFF - Check that new instances cannot be added but existing ones still behave as normal. Log in as Tutor, Course Administrator to confirm new instances cannot be added

RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

 

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />

<https://moodle.ucl.ac.uk/course/view.php?id=29477> enrolled as LTSS test acc. 01 can edit wiki

Logged in as E. Kennedy (tutor) - no new campus pack activities available

Further roles to be tested (but not crucial for Go-live sign off): Course Administrator (no email), Digital Education Admin, Leader, Library Administrator, Manager, Sub-Administrator, (Webservice Role - no need to test).

- Log into Moodle
- click on any course, and switch role to/login as user with above role- click turn on editing mode
- click add an activity or resource
- Campus pack activities are not visible to add

KSC

by 25 Jul 2017 

 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Test sites used: https://moodle.ucl.ac.uk/course/view.php?id=29477

https://moodle.ucl.ac.uk/course/view.php?id=23304

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Can Campus Pack activities be:</th>
<th>Used?</th>
<th>Added by?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Course Administrator (no email)</td>
<td><p>Yes - Blogs, Content</p>
<p>No - Journals, Wikis &amp; Podcasts</p></td>
<td>No</td>
</tr>
<tr class="even">
<td>Digital Education Admin</td>
<td><p>Yes - Blogs &amp; Journals</p>
<p>No - Wikis &amp; Podcasts</p>
<p>*Unknown - Content</p></td>
<td>No</td>
</tr>
<tr class="odd">
<td>Leader</td>
<td>Yes - All</td>
<td>No</td>
</tr>
<tr class="even">
<td>Library Administrator</td>
<td><p>Yes - Blogs</p>
<p>No - Journals, Content, Wikis &amp; Podcasts</p></td>
<td>No</td>
</tr>
<tr class="odd">
<td>Manager</td>
<td>Yes - All</td>
<td>No</td>
</tr>
<tr class="even">
<td>** Sub-Administrator</td>
<td>N/A</td>
<td>N/A</td>
</tr>
</tbody>
</table>

\* Unable to test on course 23304 because DEA role not available to courses in its Category

\*\* Unable to test.

\*\*\* further testing done on moodle-pp where permissions have not been amended and the same issue exists

https://moodle-pp.ucl.ac.uk/course/view.php?id=41163§ion=4

login in as John E Mitchell who has course admin no email role

created test postcast and when viewing shows access denied.

Blackboard Collaborate
GO LIVE SIGNOFF - Check if previously recorded session can be accessed as normal by Tutor, Course Administrator and Student role after the upgrade. Check no new instance can be added by Tutor or Course Administrator

Existing recording on Rod Digges Test Course zero at: https://moodle.ucl.ac.uk/mod/elluminate/view.php?id=2825377

RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Access Tested for Tutor and Student

No new instances available in activity chooser for Tutor or Course Admin
Existing recordings available

 Further roles to be tested (but not crucial for Go-live sign off): CALT Support, Course Administrator (no email), Leader, Library Administrator, Manager, Non-editing Tutor, Non-editing Tutor (no emails), Overviewing Advisor
- Log into Moodle
- click on any course, and switch role to/login as user with above role
- click turn on editing mode
- click add an activity or resource
- BB Collaborate activity not visible to add

KSC by  25 Jul 2017 
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Test site used: <https://moodle.ucl.ac.uk/course/view.php?id=29477>

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Can old Blackboard Collaborate be:</th>
<th>Used by?</th>
<th>Added by?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CALT Support</td>
<td>Yes</td>
<td>No</td>
</tr>
<tr class="even">
<td>Course Administrator (no email)</td>
<td><p>Yes</p></td>
<td>No</td>
</tr>
<tr class="odd">
<td>Leader</td>
<td>Yes<strong></strong></td>
<td>No</td>
</tr>
<tr class="even">
<td>Library Administrator</td>
<td>Yes</td>
<td>No</td>
</tr>
<tr class="odd">
<td>Manager</td>
<td>Yes</td>
<td>No</td>
</tr>
<tr class="even">
<td>Non-editing Tutor</td>
<td>Yes</td>
<td>No</td>
</tr>
<tr class="odd">
<td>Non-editing Tutor (no emails)</td>
<td><p>Yes</p></td>
<td>No</td>
</tr>
<tr class="even">
<td>Overviewing Advisor</td>
<td>Yes</td>
<td>No</td>
</tr>
</tbody>
</table>

Blackboard Collaborate Ultra
GO LIVE SIGNOFF - Ensure item can be chosen in **add an activity** dropdown by Tutor, Course Administrator. Create new session and record as normal.
RD
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
<https://moodle.ucl.ac.uk/mod/collaborate/view.php?id=2947855> - created 'Summer 2017 upgrade test session.
Recorded two seperate bits within the session - both recordings appeared.
Further roles to be tested (but not crucial for Go-live sign off): Course Administrator (no email), Digital Education Admin, Leader, Library Administrator, Manager, Sub-Administrator
- Log into Moodle
- click on any course, and switch role to/login as user with above role
- click turn on editing mode
- click add an activity or resource
- Add BB Ultra activity, save and view.

KSC by  25 Jul 2017 
 
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />
Test site used: <https://moodle.ucl.ac.uk/course/view.php?id=29477>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Can role add a BC Ultra activity?</th>
<th>Y/N</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Course Administrator (no email)</td>
<td>Yes</td>
</tr>
<tr class="even">
<td>Digital Education Admin</td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td>Leader</td>
<td>Yes</td>
</tr>
<tr class="even">
<td>Library Administrator</td>
<td>Yes</td>
</tr>
<tr class="odd">
<td>Manager</td>
<td>Yes</td>
</tr>
<tr class="even">
<td>*Sub-Administrator</td>
<td>N/A</td>
</tr>
</tbody>
</table>

\* Unable to test.

Manual backups & restore

Importing

Course Reset

Test on course that includes an example of each Campus Pack tool and BB Collab recording, check can back up and restore completely with user data.

See: <https://moodle.ucl.ac.uk/course/view.php?id=29477> for campus pack activities
-

See \[GEN004T\] on [Tests-General](Tests-General) - but ensure includes example of each Campus Pack tool and BB Collab recording, and all student data removed as expected.

RD

 

RD
RD

 
<img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" />
Backed up and restored Arena Digital to new course: UCL Arena Digital - RD\_restoretest  - Error trying to access AppleWiki on this course

 'Unknown Course (ID: 14uh-y73w5f5j-sidhe-i-b3d40d0a)'
expected behavior?

### **Post-Grace period tests on Snapshot**

 
 
 
 
Staff read only role tests
***(In Test environment)*** [16/17 - Snapshot Testing - Student / Staff Read Only roles testing](16_17_-_Snapshot_Testing_-_Student_Staff_Read_Only_roles_testing) once LTA have made role changes to UAT

***(In live 2016/17 Snapshot)*** [16/17 - Snapshot Testing - Student / Staff Read Only roles testing](16_17_-_Snapshot_Testing_-_Student_Staff_Read_Only_roles_testing) once LTA have made role changes to live Snapshot

KSC by August 19th

KSC on August 25th

 
 
Pending....

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Campus Pack July 2017 Test Arena Copy Reset course.png](attachments/70128484/70746740.png) (image/png)

