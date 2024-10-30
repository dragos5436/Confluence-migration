# Create/Delete/Create group testing

<table>
<thead>
<tr class="header">
<th>Scenario</th>
<th>Group Deleted</th>
<th>Group Deleted &amp; New Group created, original members added</th>
<th>Manual steps required to relink via web interface</th>
<th>If not possible via web interface, technical steps required to relink</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Moodle Assignment: group submission</p>
<p>assignment submitted,</p>
<p>assignment graded</p></td>
<td><p>Student's grade is still visible in the gradebook and they can see their feedback but they cannot see their submission</p></td>
<td>Student's grade is still visible in the gradebook and they can see their feedback but they cannot see their submission</td>
<td>No manual steps possible to resolve it.</td>
<td><p>This is in mdl_assign_submission table groupid column.</p>
<p><br />
</p>
<p>Ticket to LAMA ? → but we then need to raise as ticket to Catalyst to make db level changes</p></td>
</tr>
<tr class="even">
<td>Resource: restricted to one particular group </td>
<td>Particular group can't access</td>
<td>Particular group can't access</td>
<td>Edit activity and select the newly re-created group as being allowed access.</td>
<td><p>Can be done manually.</p>
<p>it's stored in the mdl_course_modules table, availability column as JSON. Not feasible to do in bulk.</p></td>
</tr>
<tr class="odd">
<td><p>Quiz: Group override.  (Students get 60 mins.</p>
<p>Members of 'SORA' get 90 mins)</p></td>
<td>Particular group doesn't get override</td>
<td>Particular group doesn't get override</td>
<td>Edit quiz group override and create a new override for the new re-created group.</td>
<td><p>Can be done manually.</p>
<p>stored in mdl_quiz_overrides table, groupid column.</p></td>
</tr>
<tr class="even">
<td>Turnitin assignment: No group submissions, only allows sorting.</td>
<td>Can't sort?</td>
<td>Can sort?</td>
<td>N/A?</td>
<td>N/A?</td>
</tr>
<tr class="odd">
<td><p>Group Choice:  Restricted access - student must achieve 80+ grade from Assignment A to join Group A, student A has met requirements and joined Group A </p>
<p><br />
</p></td>
<td>Group A choice no longer exists in Group choice selected groups, student A no longer a member of Group A </td>
<td>Group A no longer exists in Group choice selected groups, student A no longer a member of Group A and also Group choice from student is removed</td>
<td>Edit group choice and select new created  Group A, But you would need to login as student and choose Group A in group choice settings!</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>Forum: Separate groups</p>
<p>grouping selected - group1 in grouping1</p>
<p>Post added</p></td>
<td>Group and grouping deleted - Forum post remains.</td>
<td>Forum post remains, new groups will not have access to the original post</td>
<td>Edit forum settings and choose new re-created groups and grouping to have access to post</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Forum: Separate groups - 3 groups created</p>
<p>NO GROUPINGS</p></td>
<td>Forum posts remains.</td>
<td>Forum post remains from all previous groups but  reference to posts from groups are removed</td>
<td>N/A</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

'Resource' refers to static content: Label, File, url.  Same apply to a section ?

'Passive' set once to a specific group ID ?

'Active' automatically changes as groups added or deleted.

Restricted to group is probably passive

Quiz: Group override is probably passive

Visible groups is probably active

Separate groups is probably active

Group Choice: active or passive ?

Groupings of groups: active or passive ?


