# Installing MyFeedback

**
**

**moodle-report\_myfeedback**
==================

**Install instructions:**
1. Login to your Moodle install as admin
2. Copy the myfeedback folder to the report directory in Moodle on your server

a. Now becomes report/myfeedback

3. Install the plugin by navigating on your moodle site and clicking on Notifications under Site Admin then verifying that the plugin is listed to be upgraded and then select 'Upgrade the database'.

a. If the settings page of Myfeedback report shows up then these are the explanation of each field:
i. The 'Current Academic Year Database Settings' section is to add the replicated database that is used for MyFeedback queries.
ii. The 'Archived Database Settings' section is as follows:
&gt;&gt; Archived years - Select the number of years you want the archive to show in the report. Set to zero (0) means it will not check for archived years.
&gt;&gt; The Archived Fully Qualified domain name is needed so that when users try to view a feedback from an archived year it takes them to the correct archived Moodle site where they can log in and see the feedback in that instance of Moodle for that year. For e.g., looking at a feedback for 14/15 academic year would take them to 'https://moodle-snapshot.ucl.ac.uk/14-15/mod/workshop/submission.php?cmid=21&id=3'.
&gt;&gt; The Archived DB naming convention should be set to the default moodle\_archive. This is because the database for the archives use this convention (e.g. moodle\_archive\_1415).
&gt;&gt; Archived DB Host is currently 'moodle-snapshot-a.ucl.ac.uk' and should be set as such.
&gt;&gt; The Archived DB username and passwords will also need to be added.
iii. The 'Dept Admin Second Level Category Course Limit' section sets a course limit on the Dept admin dashboard. This is because when too many courses are queried from a single second level category, this causes a PHP memory error. The PHP memory limit is reached and so we try to limit the amount of courses. Set this to the default of 200.
iv. The 'Overview Tab Course Limit' section sets a limit on the number of courses that will be displayed on the overview tab of a user when looking at their report. Set this to the default of 10. If the user is enrolled on more than this number of active courses then a '...more' button will be displayed after the limit that is set here which takes the user to their profile page where they can see the remaining courses.

**Add role 'MyFeedback departmental Admin':**

4. Add a new role under Site admin &gt;&gt; Users &gt;&gt; Permissions &gt;&gt; Define roles &gt;&gt; Add a new role and upload the XML file 'progadmin' role that is used in the 2.5.6 SVN branch.
5. Ensure that the 'progadmin' role only allows report/myfeedback:progadmin and enrol/category:synchronised capabilities and that it is set at the Category and Course contexts

**Allow role assignments** needs to allow **Course Administrators** and **Tutors** (on the left) to assign MyFeedback Departmental Admins (at the top).

It is highly imperative that enrol/category:synchronised capability is added to this role or if the role is not used and the capability is just added to another role (this can be done as well), otherwise category assignments will not work.

&lt;&gt; This role gives users the ability to access the Dept admin dashboard.

**Edit role 'Personal tutor':**
6. Edit role under Site admin &gt;&gt; Users &gt;&gt; Permissions &gt;&gt; Define roles &gt;&gt; Click on Personal tutor role and then edit.
7. Ensure that the Context is ONLY set at the User level. If not, deselect any other levels and ensure only User is selected.
8. Search for the report/myfeedback:personaltutor capability in the filter and select 'Allow' to add this to the personal tutor role.

It is important that this role is used and not just adding the capabilities to the users as this is more manageable due to the number of capabilities that this role needs to work effectively.

**Assigning 'Personal tutor role'**
9. This is done by clicking on Preferences under the Administration section of the user's profile. Then under roles &gt;&gt; Assign roles relative to this user &gt;&gt; Click on Personal tutor role and assign the Personal tutor to the student.
10. There is also a documented bulk enrolment system that we have setup using dbuserrel.

**My feedback module tutor capability 'report/myfeedback:modtutor'**
11. There is a new capability being used for module tutors and the report will only consider users assigned this capability as a Module tutor.
12. Anyone that needs to be able to access the Module tutor dash board will need to have this capability added to their role.
13. It is currently being added to the following roles: Tutor, Non-editing Tutor, Course Administrator, Leader

**Student role**
14. The student role is assumed in the code to be those that have the following capabilities:
mod/assign:submit
moodle/grade:view
15. These capabilities are used within the code when determining students.

**Language strings**
16. All echoed strings are added as language strings in the report. To make changes use the Site admin &gt;&gt; Language &gt;&gt; Language customization (English (en)) &gt;&gt; Show strings of these components &gt;&gt; (Report) report\_myfeedback.

**Important information for RDE Learning**
17. When the My Feedback report is updated and made available to all UCL staff and students on live it will be configured to allow Category level Course Admins to enrol MyFeedback departmental admin's (which is a role only available at category level). This is done in the Allow role assignments tab when defining roles in the Moodle site admin settings.
This will mean that anyone requesting MyFeedback Departmental Administrator access within a department will need to approach the category level course admin for that department – which is an existing well-defined process that requires adequate Moodle training and HoD approval. This will avoid Digital Education services staff and the ISD Service Desk having to deal with any My Feedback access requests directly. If a department doesn't yet have a category level admin they will need to arrange this before (internally requesting) departmental admin access for the MyFeedback report.
Unfortunately it looks like end users can't see who the course admins are so hopefully ISD Service Desk staff can see this. Otherwise LTA can run this sql to get an up to date list – or grant Digi Ed staff vpn access to the db so they can run this themselves:
SELECT (SELECT cat2.name as parentname FROM mdl\_course\_categories cat2 WHERE cat2.id = cat.parent) as parentcat, cat.name, con.id as contextid, cat.id as category\_id, u.id as user\_id, u.firstname, u.lastname, u.department, u.email, u.phone1, u.auth FROM mdl\_course\_categories cat left join mdl\_context con on cat.id = con.instanceid join mdl\_role\_assignments ra on ra.contextid = con.id left join mdl\_user u on ra.userid = u.id where roleid = 7 and contextlevel = 40;
--Info from Jess Gramp

There is a user's guide being developed so this should explain a number of other functionalities\*
