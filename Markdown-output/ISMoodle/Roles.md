# Roles

A role account consists of a number of permissions and users are asigned to roles. The same role accounts are available for each context in moodle.  Site, Course and Course category are examples of contexts. Assigning roles to users is done  for a particular context. For example, assigning 'department guest' role account to user mt3 in a course category does not mean that they have this role in other contexts.

-   [Roles - UCL Moodle installation](#Roles-Roles-UCLMoodleinstallation)
-   [New Role: Department Guest - SCP 3793](#Roles-NewRole:DepartmentGuest-SCP3793)
    -   [Assigning a role to a user in the course category context](#Roles-Assigningaroletoauserinthecoursecategorycontext)
-   [New Role: Course Administrator/Tutor - hidden from students](#Roles-NewRole:CourseAdministrator/Tutor-hiddenfromstudents)
-   [New Role: Sub Administrator - SCP 3780](#Roles-NewRole:SubAdministrator-SCP3780)
-   [Guest Role](#Roles-GuestRole)
-   [Visitor Role](#Roles-VisitorRole)
-   [Key Holder](#Roles-KeyHolder)

# Roles - UCL Moodle installation

<table style="width:100%;">
<colgroup>
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
<col width="10%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Part of core moodle?<br />
</p></th>
<th><p>Name</p></th>
<th><p>Description<br />
</p></th>
<th><p>Short name</p></th>
<th><p>Legacy Role</p></th>
<th><p>Documented?</p></th>
<th><p>On wasdev-a?<br />
</p></th>
<th><p>On moodle-pp?<br />
</p></th>
<th><p>On live moodle?<br />
</p></th>
<th><p>Comments<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Administrator</p></td>
<td><p>admin</p></td>
<td><p>Administrators can usually do anything on the site, in all courses.</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Course creator</p></td>
<td><p>coursecreator</p></td>
<td><p>Course creators can create new courses and teach in them.</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Course Administrator</p></td>
<td><p>courseadmin</p></td>
<td><p>Course Administrators can do anything within a course, including changing the activities and grading students.</p></td>
<td><p>editingteacher</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Tutor</p></td>
<td><p>editingteacher</p></td>
<td><p>Tutors can do anything within a course, including changing the activities and grading students.</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>is called 'teacher' in the default installation of moodle<br />
</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Non-editing teacher</p></td>
<td><p>teacher<br />
</p></td>
<td><p>Non-editing teachers can teach in courses and grade students, but may not alter activities.</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Student</p></td>
<td><p>student</p></td>
<td><p>Students generally have less privileges within a course.</p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Delegate</p></td>
<td><p>delegate</p></td>
<td><p>Role identical to student, but with alternative name.</p></td>
<td><p>student</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Participant</p></td>
<td><p>participant</p></td>
<td><p>A role similar to a student, but who are able to unsubscribe themselves from courses. Used for voluntary membership clubs, networks, etc.</p></td>
<td><p>student<br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>UCL Support Staff</p></td>
<td><p>supportstaff<br />
</p></td>
<td><p>Read-only access for UCL Support Staff such as Subject Librarians and Faculty Information Support Officers</p></td>
<td><p>student<br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>???<br />
</p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Guest</p></td>
<td><p>guest</p></td>
<td><p>Guests have minimal privileges and usually can not enter text anywhere.</p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Authenticated user</p></td>
<td><p>user</p></td>
<td><p>All logged in users.</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Department Guest</p></td>
<td><p>deptguest</p></td>
<td><p>This account is a read-only student account for department guest accounts that can preview quizzes. DO NOT GIVE TO USERS (I.E. STUDENTS) WHO SHOULD NOT PREVIEW QUIZZES. Access is restricted to some items within a course e.g. no access to discussions or to participant lists.</p></td>
<td><p>student</p></td>
<td><p>almost, needs finalising<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>this is partly documented below but needs confirming, see SCP 3793<br />
</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p>Restricted Student</p></td>
<td><p>restricted_student<br />
</p></td>
<td><p>Duplicate of student role but cannot participate in Quizzes or Discussion.</p></td>
<td><p>student<br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>???</p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Administrator copy 1</p></td>
<td><p>admin_1</p></td>
<td><p><br />
</p></td>
<td><p>admin<br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>I think this is from someone testing something, I think we are safe to delete it?<br />
</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Sub Administrator</p></td>
<td><p>sub_admin</p></td>
<td><p>duplicate of 'Administrator' but with some privileges withdrawn, members of Apps Dev and LTSS are assigned to this role<br />
</p></td>
<td><p>admin</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>This has not been set up on live moodle yet, waiting for final testing on moodle-pp. See SCP 3780 and notes below</p></td>
</tr>
<tr class="even">
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Course Administrator/Tutor - hidden from students</p></td>
<td><p>courseadmin_hidden</p></td>
<td><p> </p></td>
<td><p>courseadmin</p></td>
<td><p>almost<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /><br />
</p></td>
<td><p>Not yet set up on live Moodle, needs to be SCP'd. See notes below.<br />
</p></td>
</tr>
</tbody>
</table>

# New Role: Department Guest - SCP 3793

A request from an end user (Steve Bolsover, Dept. of Cell and Developmental Biology). They want all lecturers in the department to be able to view colleagues Moodle courses, but not to be listed as a tutor on these courses (as students will contact those listed as the tutor).
We have created a 'Department Guest' role which is like a read-only student account, access is restricted to some items within a course e.g. no access to discussions or to participant lists.

To create this new role:

-   create a new role that is a duplicate of '***Student***' (go to Administration &gt; Users &gt; Permissions &gt; Define roles)
-   Call this new role '***Department Guest***' (***deptguest***).
-   Description: *This account is a read-only student account for department guest accounts. Access is restricted to some items within a course e.g. no access to discussions or to participant lists.*
-   Change the following settings (settings not listed below are 'not set'):
    please note the settings listed below are not final. LTSS to confirm the correct settings.

<!-- -->

-   <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td><p> Capability</p></td>
    <td><p> </p></td>
    <td><p>Current<br />
    </p></td>
    <td><p>Recommended<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p><strong>System</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View user profiles</p></td>
    <td><p>moodle/user:viewdetails</p></td>
    <td><p>ALLOW</p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p>View blog entries</p></td>
    <td><p>moodle/blog:view</p></td>
    <td><p>ALLOW<br />
    </p></td>
    <td><p>NOT SET</p></td>
    </tr>
    <tr class="odd">
    <td><p>Create new blog entries</p></td>
    <td><p>moodle/blog:create<br />
    </p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Manage own calendar entries</p></td>
    <td><p>moodle/calendar:manageownentries</p></td>
    <td><p>ALLOW</p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="odd">
    <td><p>View participants<br />
    </p></td>
    <td><p>moodle/site:viewparticipants</p></td>
    <td><p>NOT SET<br />
    </p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Users</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>See all user posts</p></td>
    <td><p>moodle/user:readuserposts</p></td>
    <td><p>ALLOW<br />
    </p></td>
    <td><p>NOT SET</p></td>
    </tr>
    <tr class="even">
    <td><p>See all user blogs<br />
    </p></td>
    <td><p>moodle/user:readuserblogs</p></td>
    <td><p>ALLOW</p></td>
    <td><p>NOT SET</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Gradebook</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>View the overview report</p></td>
    <td><p>gradereport/overview:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT<br />
    </p></td>
    </tr>
    <tr class="odd">
    <td><p>View your own grade report</p></td>
    <td><p>gradereport/user:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Course</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View courses</p></td>
    <td><p>moodle/course:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p>View participants</p></td>
    <td><p>moodle/course:viewparticipants</p></td>
    <td><p>ALLOW<br />
    </p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="odd">
    <td><p>View scales</p></td>
    <td><p>moodle/course:viewscales</p></td>
    <td><p>ALLOW<br />
    </p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p>View own grades</p></td>
    <td><p>moodle/grade:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>NOT SET<br />
    </p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Assignment</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>View assignment<br />
    </p></td>
    <td><p>mod/assignment:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>ALLOW</p></td>
    </tr>
    <tr class="odd">
    <td><p>Submit assignment</p></td>
    <td><p>mod/assignment:submit</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Certificate</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View certificate<br />
    </p></td>
    <td><p>mod/certificate:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p>ALLOW</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Chat</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>Talk in a chat</p></td>
    <td><p>mod/chat:chat</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Read chat logs</p></td>
    <td><p>mod/chat:readlog</p></td>
    <td><p>ALLOW</p></td>
    <td><p>ALLOW</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Choice</strong><br />
    </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Record a choice</p></td>
    <td><p>mod/choice:choose</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Read responses<br />
    </p></td>
    <td><p>mod/choice:readresponses</p></td>
    <td><p>NOT SET<br />
    </p></td>
    <td><p>ALLOW</p></td>
    </tr>
    <tr class="even">
    <td><p><strong> Database</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View entries<br />
    </p></td>
    <td><p>mod/data:viewentry</p></td>
    <td><p>NOT SET<br />
    </p></td>
    <td><p>ALLOW</p></td>
    </tr>
    <tr class="even">
    <td><p>Write entries</p></td>
    <td><p>mod/data:writeentry</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Write comments</p></td>
    <td><p>mod/data:comment</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p><strong> Forums</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View discussions</p></td>
    <td><p>mod/forum:viewdiscussion</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Start new discussions</p></td>
    <td><p>mod/forum:startdiscussion</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Reply to posts</p></td>
    <td><p>mod/forum:replypost</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>View ratings</p></td>
    <td><p>mod/forum:viewrating</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>View any ratings</p></td>
    <td><p>mod/forum:viewanyrating</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Initial subscription</p></td>
    <td><p>mod/forum:initialsubscriptions</p></td>
    <td><p>PREVENT</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Glossary</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Create new entries</p></td>
    <td><p>mod/glossary:write</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Create comments</p></td>
    <td><p>mod/glossary:comment</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Hot Potatoes Quiz</strong><br />
    </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>Attempt a quiz</p></td>
    <td><p>mod/hotpot:attempt</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>LAMS</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>Participate in LAMS activities</p></td>
    <td><p>mod/lams:participate</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p><strong>Questionnaire</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>View a questionnaire</p></td>
    <td><p>mod/questionnaire:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Complete and submit a questionnaire</p></td>
    <td><p>mod/questionnaire:submit</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Read own responses</p></td>
    <td><p>mod/questionnaire:readownresponses</p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Print blank questionnaire</p></td>
    <td><p>mod/questionnaire:printblank</p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Quiz</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>View quiz information<br />
    </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>Attempt quizzes</p></td>
    <td><p>mod/quiz:attempt</p></td>
    <td><p>PREVENT</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Preview quizzes</p></td>
    <td><p>mod/quiz:preview</p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>SCORM/AICC</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Skip overview<br />
    </p></td>
    <td><p>mod/scorm:skipview<br />
    </p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>Save tracks<br />
    </p></td>
    <td><p>mod/scorm:savetrack<br />
    </p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>View scores<br />
    </p></td>
    <td><p>mod/scorm:viewscores<br />
    </p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Survey</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Respond to survey</p></td>
    <td><p>mod/survey:participate</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Wiki</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Edit wiki pages</p></td>
    <td><p>mod/wiki:participate</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Workshop</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>Participate in workshop</p></td>
    <td><p>mod/workshop:participate</p></td>
    <td><p>ALLOW</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p><strong>Block</strong></p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>View block</p></td>
    <td><p>moodle/block:view</p></td>
    <td><p>ALLOW</p></td>
    <td><p> </p></td>
    </tr>
    </tbody>
    </table>

    ## Assigning a role to a user in the course category context

<!-- -->

-   Select the course category and the sub category eg. Life Sciences/Anatomy and Developmental Biology.
-   Click Assign Roles (top right)
-   Choose the type of role you wish to assign. For example, if we wanted to assign a departmental guest role to mt3, we'd choose "departmental guest" from the list of roles.
-   Once you have chosen a role, two lists appear: The list on the left displays a list of users who currently have that role and the list on the right displays a list of users who don't. Our site contains too many users to display so search for the user by typing 'moodle' in to the search box below the list on the right. Potential user will then be displayed on the right. Select  'Moodle training account 3'  in the second list, and use the left-facing arrow button to add the user to the  Department Guest role account.
-   Now user mt3 is assigned the role of 'Department guest' in the context 'Course category' for Life Sciences/Anatomy and Developmental Biology. Mt3 will see any courses within this category listed under 'My courses' provided the setting 'Availability' is set to 'this course is available to students'

# New Role: Course Administrator/Tutor - hidden from students

**Problem with users who have been given the role 'course creator' but are now saying they can't see the courses they think they should be able to see**
Discussed by Rachel and Tina on 18-Sept-09

As we discussed this we wondered if in fact we want to give out 'course creator' status to anyone outside of LTSS, as perhaps we want to keep track on courses that are being created/removed.

We decided that if the question is: How do we set it up so that people can work on Moodle courses, but be invisible to students (so that students can't contact them about course queries).
The answer is:

-   create a new role that is a duplicate of '***Course Administrator***'.
-   This role has been called '***Course Administrator/Tutor - hidden from students***' (***courseadmin\_hidden***).
-   We do not need to change any of the permissions within this role.
-   We then need to go to Admin &gt; Appearance &gt; Course managers and ensure that this new role is not ticked (it shouldn't be as we have only just created the role).
    This has been set up on moodle-dev (wasdev-a) and is waiting to be signed off by LTSS (at the next VLE meeting? [VLE meeting 23Sept08](https://wiki.ucl.ac.uk/display/ISAppsDev/VLE+meeting+23Sept08))
    We can then apply it to moodle-pp

    The next question is: do we now go in and change things and stop users being Course Creators (except perhaps in special circumstances where the user is used to having this permission and it would be hard to remove it now).

# New Role: Sub Administrator - SCP 3780

We decided that having lots of people with full administrator rights was not a good idea as it makes it hard to track what is happening in Moodle. However members of the LTSS team still need to be able to create courses etc. It is proposed that a cut-down 'Sub Administrator' role is created for this purpose. This has been created on Moodle Dev (wasdev-a)

-   create a new role that is a duplicate of *'****Administrator***' (go to Administration &gt; Users &gt; Permissions &gt; Define roles)
-   Call this new role '***Sub Administrator***' (***sub\_admin***).
-   Make sure that the legacy role is set to 'Administrator'
-   Change the following settings:
    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td><p>Allowed to do everything<br />
    </p></td>
    <td><p>moodle/site:doanything<br />
    </p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Change site configuration<br />
    </p></td>
    <td><p>moodle/site:config</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Create users<br />
    </p></td>
    <td><p>moodle/user:create</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Delete users<br />
    </p></td>
    <td><p>moodle/user:delete</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Create and manage roles<br />
    </p></td>
    <td><p>moodle/role:manage</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Unassign own roles<br />
    </p></td>
    <td><p>moodle/role:unassignself</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Roam to a remote Moodle<br />
    </p></td>
    <td><p>moodle/site:mnetlogintoremote</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Manage myMoodle page blocks<br />
    </p></td>
    <td><p>moodle/my:manageblocks</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Edit master language packages<br />
    </p></td>
    <td><p>moodle/site:langeditmaster</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Customize local translation<br />
    </p></td>
    <td><p>moodle/site:langeditlocal</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="odd">
    <td><p>Manage payments<br />
    </p></td>
    <td><p>enrol/authorize:managepayments</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    <tr class="even">
    <td><p>Upload CSV file<br />
    </p></td>
    <td><p>enrol/authorize:uploadcsv</p></td>
    <td><p>PREVENT</p></td>
    </tr>
    </tbody>
    </table>

-   Leave the other settings as they are as these will be picked up by the 'legacy role: Administrator'
-   Click on the Save Changes button on the bottom of the screen
-   Click on the Allow role assignments tab at the top of the screenand tick the all the boxes in the Sub Admin row, except the 'Administrator' tick box column which should be left blank
-   Assign this role to all members of the LTSS and Apps Dev team, to do this go to Administration &gt; Users &gt; Permissions &gt; Assign system roles
-   See also [homepage display for sub\_admin users SCP 3803](homepage_display_for_sub_admin_users_SCP_3803) and [stop sub\_admin users appearing as course participants SCP 3822](stop_sub_admin_users_appearing_as_course_participants_SCP_3822) which need to be applied with this role.

The important setting here is: **Approve course creation moodle/site:approvecourse** which is set to 'allow', this is the unique setting that we can use within the moodle PHP code if we want the page to display a certain way to those with the sub admin role.

This has been applied to the live Moodle server along with the [homepage display for sub\_admin users SCP 3803](homepage_display_for_sub_admin_users_SCP_3803) hack to the moodle/index.php
The [stop sub\_admin users appearing as course participants SCP 3822](stop_sub_admin_users_appearing_as_course_participants_SCP_3822) hack is yet to be applied (awaiting testing from LTSS)

# Guest Role

There is a setting in Moodle **(Administration ? Users ? Permissions ? User policies)** called:

Auto-login guestsautologinguests (Default: No)
Should visitors be logged in as guests automatically when entering courses with guest access?

This is disabled. When a user enters a course they are asked to log in, however if the course has guest access then with this setting enabled they will automatically be logged in as a guest. A login message is received if they try to submit any data.

# Visitor Role

A request (ISH0117491) came in to Remedy for Anonymous Forum posts. Could look into the development of a Guest role with minimal posting capabilities. Requires very careful consideration but could open Moodle up to a larger user base.

# Key Holder

The key holder is a role required for courses where the enrollment key is being used. Typically if a student wishes to gain access to a course and it requires a key, they will be informed of this when trying to access for the first time. Moodle states that an enrollment key is required in order to access the course and it can be obtained from a tutor. By default, Moodle will look for the keyholder role - however this is not present on our setup. If it can not find this role it will fall back to the tutor with the lowest user ID. This has caused a problem for one set of users in Moodle, ARS call: ISH0092755

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [\[Fwd Re REMINDER - NOW URGENT - Moodle guest access\].eml](attachments/4655021/5865630.eml) (message/rfc822)

