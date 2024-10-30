# CMIS Interface Development progress

<table>
<thead>
<tr class="header">
<th>Task</th>
<th>Description</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Check and create CMIS views under moodlemgr</td>
<td><p><br />
</p>
<p>CMIS_MOODLE_V_GROUP_MEMBER</p>
<p>CMIS_MOODLE_V_GROUP_TUTOR</p>
<p>CMIS_MOODLE_V_MODULE_GROUP</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Get CMIS Views</td>
<td><ul>
<li>Copies data to <strong>moodle_int_management</strong> schema.</li>
<li>Run by overnight CRON job scheduler.</li>
<li>Data types copied; <strong>ModuleGroup, GroupMembers, GroupTutors</strong></li>
<li>Each import should go into a table with a suffix “_dump”.</li>
</ul></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Create db tables</td>
<td><p>cmis_groups → cmis_module_group<br />
cmis_groups_course → cmis_module_group_course<br />
cmis_groups_deleted → cmis_module_group_deleted<br />
cmis_groups_dump → cmis_module_group_dump<br />
cmis_groups_moodle → cmis_module_group_moodle</p>
<p>cmis_enrolledusrs_moodle<br />
cmis_error_data_dump<br />
cmis_groupings_moodle</p>
<p><br />
cmis_groupmembers → cmis_group_member<br />
cmis_groupmembers_deleted → cmis_group_member_deleted<br />
cmis_groupmembers_dump → cmis_group_member_dump</p>
<p><br />
cmis_tutgroupmembers → cmis_group_tutor<br />
cmis_tutgroupmembers_deleted → cmis_group_tutor_deleted<br />
cmis_tutgroupmembers_dump → cmis_group_tutor_dump<br />
<br />
</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Create db views</td>
<td>cmis_v_groupmembersmerge → cmis_v_group_member_merge<br />
cmis_v_grouptutmembersmerge → cmis_v_group_tutor_merge</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Run group dump</td>
<td><ul>
<li>Dump from CMIS_MOODLE_V_MODULE_GROUP to cmis_module_group_dump</li>
</ul></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Run group member dump</td>
<td><ul>
<li>Dump from CMIS_MOODLE_V_GROUP_MEMBER to cmis_group_member_dump</li>
</ul></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Run group import</td>
<td><p>Update cmis_module_group, cmis_module_group_course from dump table</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Run group member import</td>
<td>Update cmis_group_member from dump table</td>
<td>Done</td>
</tr>
<tr class="odd">
<td>webservice Moodle</td>
<td><p>Get the webservice set-up between moodle and cmis interface</p>
<p>local, dev, uat, pre-prod</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Duplicate groups/groupings</td>
<td><p>Check for groups/groupings that already exist in moodle</p>
<p>Re-implement-</p>
<p>instead of deleting duplicate groups from cmis_groups_course table, add a new field 'duplicate' and set it to 1</p></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Create groups</td>
<td><p>creategroups() function re- implement</p>
<p>webservice to create groups</p>
<p>handlecreategroups() after response received from webservice</p>
<p>insert data into cmis_module_group_moodle table</p></td>
<td><p>Done</p></td>
</tr>
<tr class="even">
<td>Create groupings</td>
<td><p>creategroupings() function re-implement</p>
<p>webservice to create groupings</p>
<p>handlecreategroupings() re-implement after response from webservice call</p>
<p>insert data into cmis_module_grouping_moodle table</p></td>
<td><p>Done</p></td>
</tr>
<tr class="odd">
<td>Assign groups/groupings</td>
<td><p>getGroupsGroupings() for assignment</p>
<p>webservice call to assign groups to groupings</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Update groups/groupings</td>
<td><p>creategroups() function implement update functionality</p>
<p>webservice to create groups</p>
<p>handlecreategroups() after response received from webservice</p></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Delete groups</td>
<td><p>Deletegroups() function</p>
<p>webservice to delete groups</p>
<p>handledeletegroups() after response received from webservice</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Delete groupings</td>
<td><p>Deletegroupings() function</p>
<p>webservice to delete groupings</p>
<p>handle deletegroupings() after response</p></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Create group members</td>
<td><p>webservice to add members to groups</p>
<p>Handle add members from group</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Delete group members</td>
<td><p>webservice to remove members from a group</p>
<p>Handle delete members from group</p></td>
<td>Done</td>
</tr>
<tr class="odd">
<td>Run group tutor dump</td>
<td><p>Dump from CMIS_MOODLE_V_GROUP_TUTOR to cmis_group_tutor_dump</p></td>
<td>Done</td>
</tr>
<tr class="even">
<td>Run group tutor import</td>
<td>Update cmis_group_tutor from dump table</td>
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
</tr>
</tbody>
</table>


