# Moodle 2.6.10 upgrade tasks

#### Date of upgrade: 

    Upgrading from: Moodle 2.6.7 (Build: 20150112) - Release notes: https://docs.moodle.org/dev/Moodle_2.6.7_release_notes

    Upgrading to: Moodle 2.6.10 (Build: 20150310) - Release notes: https://docs.moodle.org/dev/Moodle_2.6.10_release_notes

#### Codebase

<https://svn.ucl.ac.uk/repos/isd/moodle26/branches/moodle_ucl-2.6.10_cceanse>

#### Bugs fixed

Issues fixed -

-   <https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/135>

#### Upgraded Moodle Plugins

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Plugin type/name</p></th>
<th><p>Standard / Add-on</p></th>
<th><p>Version</p></th>
<th>Current version</th>
<th>Fixes</th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Activity : Certifcate</p>
<p>mod_certificate</p></td>
<td>Add-on</td>
<td>2014041804</td>
<td>2014041801</td>
<td>list of fixes not found</td>
<td> </td>
</tr>
<tr class="even">
<td><p>Activity : Hotpot</p>
<p>mod_hotpot</p></td>
<td>Add-on</td>
<td>2015021162</td>
<td>2015010655</td>
<td>list of fixes not found</td>
<td> </td>
</tr>
<tr class="odd">
<td><p>Activity : Questoinnaire</p>
<p>mod_questionnaire</p></td>
<td>Add-on</td>
<td>2014041804</td>
<td>2014041801</td>
<td><p>Version 2.6.7 (Build - 2015031901)<br />
CONTRIB-4838 - allow configuration of allowed fields for CSV download - security issue.<br />
CONTRIB-5616 fix type qreg_quote</p>
<p>Version 2.6.6 (Build - 2015020601)<br />
CONTRIB-5530 - Fixed code to correctly ignore '\!other=' when fixing value/display pairs in radio buttons.<br />
CONTRIB-5435 - Put back precision setting for text box questions.<br />
CONTRIB-5403 fix errors from orphaned surveys.<br />
CONTRIB-5351 fix preg usage<br />
CONTRIB-5288 :: Issue with zero in numeric question<br />
CONTRIB-5284 :: order of subquestions in report of ranked question varies (in postgresql)<br />
CONTRIB-5199 Upgrade from 2.5 to 2.6 or 2.7 does not correctly create the new &quot;personality test&quot; fields &amp; tables.</p></td>
<td> </td>
</tr>
<tr class="even">
<td><p>Activity : Turnitin Assignment</p>
<p>mod_turnitintool</p></td>
<td>Add-on</td>
<td>2015030301</td>
<td>2013111404</td>
<td><p> Fixes:<br />
- When enrolling all students, check student submit capability</p>
<p>- Added Czech language pack.</p></td>
<td> </td>
</tr>
<tr class="odd">
<td><p>Question types : Drag and drop markers</p>
<p>qtype_ddmarker</p></td>
<td>Add-on</td>
<td>2015031800</td>
<td>2014111200</td>
<td>list of fixes not found</td>
<td> </td>
</tr>
<tr class="even">
<td><p>Question types : Drag and drop into text</p>
<p>qtype_ddwtos</p></td>
<td>Add-on</td>
<td>2015031800</td>
<td>2014111200</td>
<td>list of fixes not found</td>
<td> </td>
</tr>
<tr class="odd">
<td><p>Question types : Select missing words</p>
<p>qtype_gapselect</p></td>
<td>Add-on</td>
<td>2015031800</td>
<td>2014111200</td>
<td>list of fixes not found</td>
<td> </td>
</tr>
<tr class="even">
<td><p>Question formats : Microsoft Word table format (wordtable)</p>
<p>qformat_wordtable</p></td>
<td>Add-on</td>
<td>2015031101</td>
<td>2014100801</td>
<td>list of fixes not found</td>
<td> </td>
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
<td><p>UCL tools</p>
<p>local_ucl_tools</p></td>
<td>Add-on</td>
<td>2015060300</td>
<td>inhouse UCL plugin</td>
<td><p> </p>
<p> </p></td>
</tr>
<tr class="even">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</tbody>
</table>


