# W.5 Data Migration & W.4.6 Data Migration Tool Testing

## Pre Requisites

<table>
<thead>
<tr class="header">
<th>WP number</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Dates

<table>
<tbody>
<tr class="odd">
<td>Start</td>
<td><br />
</td>
<td>End</td>
<td><br />
</td>
<td>Actual Start</td>
<td><br />
</td>
<td>Actual End</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Products

<table>
<thead>
<tr class="header">
<th>Name</th>
<th>Details</th>
<th><br />
</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><p>Bulk staff creation</p>
<p><br />
</p>
<p>Create shell courses – with 1 or more tutors/admins</p>
<p><br />
</p>
<p>Tool to provide list of shell courses. Mapping table.</p>
<p><br />
</p>
<p>Tool to pull over all tutor and course admins</p></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><p>Required</p></td>
<td><p>Desirable</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Selection of backup items</p></td>
<td><p>Back end default</p>
<p>Never:</p>
<ul>
<li> </li>
<li>TII assignment</li>
<li> </li>
<li> </li>
<li>Collaborate</li>
<li> </li>
<li> </li>
<li>Lecturecast</li>
<li> activity</li>
<li> </li>
<li> </li>
<li>LCF</li>
<li> </li>
<li> </li>
<li>Advanced forums</li>
<li> </li>
<li> </li>
<li>Campus Pack</li>
<li> </li>
<li> </li>
<li>Blocks - ***TG</li>
<li> - check how backup deals with?</li>
<li> </li>
</ul>
<ul>
<li> </li>
</ul>
<ul>
<li> </li>
<li>Lecturecast</li>
<li> </li>
<li> </li>
<li>Migration tool</li>
<li> block?</li>
<li> </li>
</ul>
<ul>
<li> </li>
</ul>
<p> </p>
<p>No data activities:</p>
<ul>
<li> </li>
<li>Wikis</li>
<li> </li>
<li> </li>
<li>Glossaries</li>
</ul></td>
<td><p>User facing interface to allow selection of specific content</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Migration tool options</p></td>
<td><p>NOT AVAILABLE - When should migration be carried out?</p>
<p>Migration type/selectable roles →  Migrations Options: 1) Staff enrolements 2)Staff enrolments and content</p>
<p>Merge or delete - NOW ONLY DELETE - don’t show option but guidance text</p>
<p>Groups and groupings: SET TO YES, NOT EDITABLE</p>
<p>Module visibility - HIDDEN BY DEFAULT - not choice</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Roles migration</p></td>
<td><p>Course Admin and Tutor, Non-editing tutor enrolled staff transferred</p>
<p> </p>
<p>Module Leader from SITS enrolled on module</p></td>
<td><p>Ability for migrating staff to choose roles to be carried over</p>
<p> </p>
<p>Automatic mapping of current roles (including deprecated roles) to new Moodle roles</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Select Modules</p></td>
<td><p>Tool only shows courses user has access to - search should allow even user with cat level access to find course</p></td>
<td><p>Category selectable - possibly not needed if validation</p>
<p> </p>
<p>Display shortname followed by full name?</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Course Config overwrite</p></td>
<td><p>If deleting rather than merging the will overwrite course name and shortnames - needs to ensure that AMP based course details retained - maybe through rewrite on overwrite? Or intercept original overwrite</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Access method</p></td>
<td><p>Link in Staff help menu, and system wide context block with default link to migration tool.</p></td>
<td><p>Block on course - has migration option, and then take to review page with prepopulation of fields.</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Migrated flag</p></td>
<td><p>Appears in list, but greyed out with message and non-selectable.</p>
<p> </p>
<p>User is unable to migrate to destination module if already migrated flag exists on course</p></td>
<td><p>Possible option to untick to remove migrated flag in course.</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Migration timing/cron</p></td>
<td><p>Nightly</p></td>
<td><p>Nightly or more often with clear batching to avoid performance issues. Or throttling.</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Shell courses</p></td>
<td><p>Shortname: AMP module code_Year (non editable)</p>
<p> </p>
<p>Module code is copied to Portico id (id_number field) - (non-editable) ***TG to investigate making Portico id non unique - impact on SITS filter etc...</p>
<p> </p>
<p>Full name - Modulecode: Module name (year)<br />
-  (editable)</p>
<p> </p>
<p>Default config - as discussed - match current mostly</p>
<p> </p>
<p>Module Leader taken from SITS</p>
<p> </p>
<p>Default Baseline template applied</p></td>
<td><p>Category level templates applied.</p></td>
</tr>
</tbody>
</table>

## Actions

<table>
<thead>
<tr class="header">
<th>What</th>
<th>Who</th>
<th>Details</th>
<th>Status</th>
<th>Why</th>
</tr>
</thead>
<tbody>
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


