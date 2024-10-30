# CMIS Interface Unit Testing

<table>
<thead>
<tr class="header">
<th>Module</th>
<th>Test scenarios</th>
<th>Result</th>
<th>Status</th>
<th>Comment</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Group</td>
<td>Run group dump</td>
<td>Data is inserted into cmis_module_group_dump from views</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Group Member</td>
<td>Run group member dump</td>
<td>Data is inserted into cmis_module_group_member_dump</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Group</td>
<td><p>Import:</p>
<p>Update cmis_module_group, cmis_module_group_course from dump table</p></td>
<td><p>cmis_module_group</p>
<p>cmis_module_group_course tables</p>
<p>updated</p></td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Group Member</td>
<td><p>Import:</p>
<p>Update cmis_module_group_member from dump table</p></td>
<td>cmis_module_group_member table updated</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Duplicate groups/groupings</td>
<td><p>check if duplicate groups/groupings exist in Moodle</p></td>
<td>Lists duplicate groups/groupings in Moodle</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>webservice</td>
<td><p>Webservice</p>
<p>getMoodleGroups()</p>
<p>getMoodleGroupings()</p></td>
<td>returns list of groups and groupings from Moodle</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Group</td>
<td><p>Create groups</p></td>
<td>Update 'toadd' column of cmis_module_group_course table</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Webservice</td>
<td><p>Webservice</p>
<p>createGroups()</p>
<p>createGroupings()</p>
<p>assignGroupsGroupings()</p></td>
<td><p>Create groups in Moodle</p>
<p>Create groupings in Moodle</p>
<p>Assign groups to groupings</p></td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Group Member</td>
<td>Add groupmemebers</td>
<td>cmis_v_groupmembermerge view lists the group members to be added</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>EnrolledUsers</td>
<td><p>Webservice</p>
<p>getEnrolledUsers()</p>
<p>populate enrolled users into a table - cmis_enrolledusrs_moodle</p></td>
<td>Get all enrolled users for a course</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Webservice</td>
<td><p>Webservice</p>
<p>AssignGroupMembers()</p></td>
<td>List the groupmembers to be assigned to a specific group in Moodle</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Group Member</td>
<td>Delete group member</td>
<td>Delete group members and update cmis_module_group_members table</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Webservice</td>
<td><p>Webservice</p>
<p>DeleteGroupMembers()</p></td>
<td>Delete group members from a group in Moodle</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Group</td>
<td>Delete groups/groupings</td>
<td>Delete groups groupings in cmis tables and update cmis_module_groups_course</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Webservice</td>
<td><p>Webservice</p>
<p>DeleteMoodleGroups()</p>
<p>DeleteMoodleGroupings()</p></td>
<td><p>Delete groups in Moodle</p>
<p>Delete groupings in Moodle</p></td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>ResetFlags</td>
<td><p>Reset flags</p>
<p>toadd,todelete,found,tpuodate to 0</p></td>
<td><br />
</td>
<td>pass</td>
<td><br />
</td>
</tr>
</tbody>
</table>


