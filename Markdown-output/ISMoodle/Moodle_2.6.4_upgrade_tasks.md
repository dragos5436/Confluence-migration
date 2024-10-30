# Moodle 2.6.4 upgrade tasks

Date of upgrade - 19th August 2014

#### Bugs fixed

1) Bug in glossary when searching multiple words

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/105>

2) No scrollbar on pop-up window for repositioning elements

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/85>

3) no horizontal scrolling in gradebook

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/99>

4) Short answer question type in Moodle lesson not responding as expected

<https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/106>

#### Upgraded Moodle Plugins/Question types

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
<th><p>Location</p></th>
<th><p>Download location</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Assignment<br />
Version - 2013110501</p></td>
<td><p>Standard</p></td>
<td><p>Site admin-&gt; Activity modules-&gt; Assignment<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Certificate<br />
Version - 2014041800</p></td>
<td><p>Add-on</p></td>
<td><p>Site admin-&gt; Activity modules -&gt; Certificate</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=mod_certificate<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forum<br />
Version - 2013110501</p></td>
<td><p>Standard</p></td>
<td><p>Site admin -&gt; Activity modules -&gt; Forum</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>HotPot module<br />
Version - 2014070225</p></td>
<td><p>Add-on</p></td>
<td><p>Site admin -&gt; Activity modules -&gt; Hotpot Module</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=mod_hotpot<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Questionnaire<br />
Version - 2014041801</p></td>
<td><p>Add-on</p></td>
<td><p>Site admin -&gt; Activity modules -&gt; Questionnaire<br />
</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=mod_questionnaire<br />
]</p></td>
<td><p>This is included on live moodle262 as part of security fix on 13/08/2014</p></td>
</tr>
<tr class="even">
<td><p>SCORM package<br />
Version - 2013110504</p></td>
<td><p>Standard</p></td>
<td><p>Site admin -&gt; Activity modules -&gt; SCORM package<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Quickmail<br />
Version - 2014042914</p></td>
<td><p>Add-on</p></td>
<td><p>Site admin-&gt;blocks-&gt;Quickmail</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=block_quickmail<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>algebra<br />
Version - 2014061900</p></td>
<td><p>Add-on</p></td>
<td><p>[https://v264.moodle-uat.ucl.ac.uk/admin/settings.php?section=qtypesettingalgebra<br />
]</p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=qtype_algebra<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Drag and drop onto image<br />
Version - 2014042800</p></td>
<td><p>Add-on</p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddimageortext<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Drag and drop markers<br />
Version - 2014060300</p></td>
<td><p>Add-on</p></td>
<td><p> </p></td>
<td><p>[https://moodle.org/plugins/pluginversions.php?plugin=qtype_ddmarker<br />
]</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Microsoft Word table format (wordtable)<br />
Version - 2014071002</p></td>
<td><p>Add-on</p></td>
<td><p> </p></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=qformat_wordtable" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=qformat_wordtable</a></p></td>
<td><p>[https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/42<br />
]</p></td>
</tr>
</tbody>
</table>

#### New Plugins

<https://moodle.org/plugins/view.php?plugin=block_configurable_reports>

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
<th><p>Plugin name<br />
</p></th>
<th><p>Version</p></th>
<th><p>Location</p></th>
<th><p>Download Location</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Group Choice</p></td>
<td><p>2014010100</p></td>
<td><p>/mod/choicegroup</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=mod_choicegroup" class="uri">https://moodle.org/plugins/view.php?plugin=mod_choicegroup</a></p></td>
<td><p>[https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/102<br />
]</p></td>
</tr>
<tr class="even">
<td><p>Configurable Reports</p></td>
<td><p>2011040114</p></td>
<td><p>[https://v264.moodle-uat.ucl.ac.uk/admin/settings.php?section=blocksettingconfigurable_reports</p></td>
<td><p><a href="https://moodle.org/plugins/view.php?plugin=block_configurable_reports" class="uri">https://moodle.org/plugins/view.php?plugin=block_configurable_reports</a><br />
</p></td>
<td><p>[https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/108<br />
]<br />
<br />
</p></td>
</tr>
</tbody>
</table>


