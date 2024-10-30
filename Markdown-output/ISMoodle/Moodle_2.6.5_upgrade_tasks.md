# Moodle 2.6.5 upgrade tasks

Date of upgrade - 14th Oct 2014

#### Codebase

<https://svn.ucl.ac.uk/repos/isd/moodle26/branches/moodle_ucl-2.6.5>

#### Bugs fixed

1) Group filter and paged results for users.php  

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/124>

2) Moodle SCORM player loads menu bar when opened in a New Window  

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/115>

3) Grader report CSS tweak ('Overall average' label text contrast/background colour)

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/110>

4) [increse image size on drag and drop marker question type](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/104)

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/104>

5) Course menu block not holding it's formatting

https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/131

6) Two small CSS tweaks

https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/129

7) Moodle Grader setting change

https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/142

8) UCL theme CSS fix: Opacity/stacking-context issue (Links in dropdown menus for hidden elements in new theme dont always work).

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/126> (svn commit: <https://svn.ucl.ac.uk/projects/isd/moodle26/changeset/219767/branches/moodle_ucl-2.6.5>)

9) UCL theme CSS change: Add background colour so course section +/- buttons are visible against a white background with editing turned on.

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/119> (svn commit: <https://svn.ucl.ac.uk/projects/isd/moodle26/changeset/219879/trunk>)

#### Upgraded Moodle Plugins/Question types

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Plugin name</p></th>
<th><p>Standard / Add-on</p></th>
<th><p>Version</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Certificate</p></td>
<td><p>Add-on</p></td>
<td><p>2014041801</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Potatoes XML format</p></td>
<td><p>Add-on</p></td>
<td><p>2014083116</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Microsoft Word table format (wordtable)</p></td>
<td><p>Add-on</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Course menu block</p></td>
<td><p>Add-on</p></td>
<td><p>2014080100</p></td>
<td><p>also had to add a hack to fix #131</p></td>
</tr>
</tbody>
</table>

#### New Plugins

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Plugin name</p></th>
<th><p>Standard / Add-on</p></th>
<th><p>Version</p></th>
<th><p>Download Location</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CBM Summary</p></td>
<td><p>Add-on</p></td>
<td><p>2014082300</p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=quiz_cbmgrades" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=quiz_cbmgrades</a></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Test Account Automation</p></td>
<td><p>UCL custom plugin</p></td>
<td><p>2014100200</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


