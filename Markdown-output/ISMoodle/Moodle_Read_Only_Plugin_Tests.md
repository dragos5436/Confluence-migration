# Moodle Read Only Plugin Tests

Tests performed to confirm that Moodle is in read only mode. <https://github.com/marcusgreen/local_read_only>.

-   The moodle instance is on moodle-01-u
-   UCL test course created - <https://moodle37.moodle-01-u.ucl.ac.uk/course/view.php?id=2>
-   Test site created by Marcus Green - <https://vledevelop.co.uk/ro/login/index.php>

<table>
<thead>
<tr class="header">
<th><p>Activity\Function</p></th>
<th>Action performed</th>
<th>Role</th>
<th>Error messages/success messages DEBUG ON</th>
<th>logstore entry</th>
<th>Pass/Fail</th>
<th>Same result as MG test site?</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Announcements</td>
<td>Add a new topic then post to forum</td>
<td>Teacher</td>
<td><p>Your post was successfully added.</p>
<p>You have 30 mins to edit it if you want to make any changes.</p>
<p>Debug info: Error output, so disabling automatic redirect.</p></td>
<td>Yes</td>
<td>Pass</td>
<td>Yes</td>
<td>Topic was not created</td>
</tr>
<tr class="even">
<td>Test Forum</td>
<td>Add a new discussion topic</td>
<td>Teacher</td>
<td><p>Your post was successfully added.</p>
<p>You have 30 mins to edit it if you want to make any changes.</p>
<p>admin_s10 testaccount will be notified of new posts in 'new discussion' of 'Test Forum'</p></td>
<td>Yes</td>
<td>Pass</td>
<td>N/A</td>
<td>Discussion topic was not created</td>
</tr>
<tr class="odd">
<td>Wiki</td>
<td>Add new page</td>
<td>Teacher</td>
<td><p>Invalid course module ID</p>
<p>Debug info: SELECT id,course FROM {course_modules} WHERE id IS NULL<br />
[array (<br />
)]<br />
Error code: invalidcoursemodule</p></td>
<td>No</td>
<td>Pass</td>
<td>N/A</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Wiki</td>
<td>Edit page</td>
<td>Teacher, Student</td>
<td>none</td>
<td>No</td>
<td>Pass</td>
<td>Yes</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>LDAP configured</td>
<td>Login in with UCL account</td>
<td>no role</td>
<td>Debug info: Error output, so disabling automatic redirect.</td>
<td>Yes</td>
<td>Pass</td>
<td>N/A</td>
<td><p>Account could not be created on the fly, automatically logged in as guest.</p>
<p>LDAP works when read only mode is off, account is created on the fly. LDAP setting in Moodle for passwords is set to 'not cached' so if the account exists in the database, users will be able to login, even if they change the password in the future.</p></td>
</tr>
<tr class="even">
<td>Assignment</td>
<td>Submit an assignment</td>
<td>Student</td>
<td><p>none</p></td>
<td>Yes</td>
<td>Pass</td>
<td>Yes</td>
<td>Unable to save submission. Nothing happens after file is submitted.</td>
</tr>
<tr class="odd">
<td>Quiz</td>
<td>Attempt quiz</td>
<td>Student</td>
<td>none</td>
<td>Yes</td>
<td>Fail</td>
<td>Yes</td>
<td>Quiz attempts are allowed</td>
</tr>
<tr class="even">
<td>Quiz</td>
<td>Attempt quiz</td>
<td>Student</td>
<td>This is not your attempt!</td>
<td>No</td>
<td>Pass</td>
<td>N/A</td>
<td><p>Quiz attempts not allowed after commenting out quiz tables in mysqliro_native_moodle_database.php</p>
<p><a href="https://github.com/marcusgreen/local_read_only/blob/marcus/classes/mysqliro_native_moodle_database.php#L29-L34" class="uri">https://github.com/marcusgreen/local_read_only/blob/marcus/classes/mysqliro_native_moodle_database.php#L29-L34</a></p></td>
</tr>
<tr class="odd">
<td>Quiz</td>
<td>Quiz show report</td>
<td>Teacher</td>
<td>none</td>
<td>No</td>
<td>Pass</td>
<td>Yes</td>
<td>Reports are displayed</td>
</tr>
<tr class="even">
<td>Assignment (Moodle)</td>
<td>Add a submission</td>
<td>Student</td>
<td>Unknown exception related to local files (Invalid itemid)</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Redirected back to a different activity and course after pressing continue on error message page on first attempt</p>
<p>Redirected back to home page on second attempt (this is usually standard Moodle behaviour when an error occurs)</p></td>
</tr>
<tr class="odd">
<td>Chat</td>
<td>Join a chat session</td>
<td>Student</td>
<td><p>Regular interface: Says user not logged in</p>
<p>Accessible interface: Could not find any users!</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Clicking continue in the separate window for the chat session will redirect the user to the homepage</td>
</tr>
<tr class="even">
<td>Survey</td>
<td>Complete a survey activity</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>?</td>
<td><br />
</td>
<td>Saved survey result and was able to review answers</td>
</tr>
<tr class="odd">
<td>Questionnaire</td>
<td>Complete a questionnaire activity</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>?</td>
<td><br />
</td>
<td>Completes the attempt but doesn't save the answers</td>
</tr>
<tr class="even">
<td>Feedback</td>
<td>Complete a feedback activity</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Doesn't record a result or completed attempt</td>
</tr>
<tr class="odd">
<td>Lesson</td>
<td>Complete a lesson activity</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Allows the activity to be viewed but doesn't track completion/viewed progress which results in the progress bar always being at 0%</td>
</tr>
<tr class="even">
<td>Hot question</td>
<td>Submit a question</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Will tell the user that their question has been submitted but doesn't save it</td>
</tr>
<tr class="odd">
<td>Database</td>
<td>Save and view a new entry</td>
<td>Student</td>
<td>Incorrect record</td>
<td><br />
</td>
<td>Fail?</td>
<td><br />
</td>
<td>Doesn't create entry and clicking continue when viewing the error message redirects the user to their dashboard</td>
</tr>
<tr class="even">
<td>Choice</td>
<td>Submit a choice</td>
<td>Student</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Doesn't record result and allows users to submit again</td>
</tr>
<tr class="odd">
<td>Rename course section</td>
<td>Turn editing on and use the pencil icon to edit a section name</td>
<td>Course administrator</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Can press enter to save the change but the original name is shown</td>
</tr>
<tr class="even">
<td>Delete an activity or resource</td>
<td>Turn editing on, find an activity or resource and then delete it</td>
<td>Course administrator</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Activity/resource can be deleted and will appear deleted until editing is turned off upon which the page will refresh and show the deleted activity/resource again</td>
</tr>
<tr class="odd">
<td>Delete a course section</td>
<td>Turn editing on, find a course section and then delete it</td>
<td>Course administrator</td>
<td>None</td>
<td><br />
</td>
<td>Fail</td>
<td><br />
</td>
<td>Course section was deleted and didn't appear like a deleted activity when editing was turned off</td>
</tr>
<tr class="even">
<td>Hot question</td>
<td>Delete a submitted question</td>
<td>Course administrator</td>
<td>None</td>
<td><br />
</td>
<td>Pass</td>
<td><br />
</td>
<td>Tells the user the deletion is successful but doesn't delete anything</td>
</tr>
<tr class="odd">
<td>Edit user profile</td>
<td>Edit the user profile to change displayed information</td>
<td>Authenticated user (function outside of a course)?</td>
<td>Error writing to database</td>
<td><br />
</td>
<td>Fail</td>
<td><br />
</td>
<td>Saves during the edit but throws database error when trying to view user profile afterwards</td>
</tr>
</tbody>
</table>


