# Moodle 2.6.6 upgrade tasks

#### Date of upgrade: Tuesday 9th Dec 2014

    Upgrading from: 2.6.5 (Build: 20140908) - Release notes: https://docs.moodle.org/dev/Moodle_2.6.5_release_notes

    Upgrading to:   2.6.6 (Build: 20141110) - Release notes: https://docs.moodle.org/dev/Moodle_2.6.6_release_notes

 

#### Codebase

<img src="plugins/servlet/confluence/placeholder/unknown-macro" class="wysiwyg-unknown-macro" />

<img src="plugins/servlet/confluence/placeholder/unknown-macro" class="wysiwyg-unknown-macro" />

#### Bugs fixed

[Trac moodle26\#22: Groupings not shown on Labels](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/22)

[Trac moodle26\#160: Latest 'algebra' plugin on UAT](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/160)

[Trac moodle26\#159: Questionnaire template preview - broken](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/159)

[Trac moodle26\#156: turnitin V2 assignment - crumbtrail in popup windows](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/156)

**In progress**

[Trac moodle26\#83: Navigation and Settings (administration) block position weight](https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/83)

#### Upgraded Moodle Plugins

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Plugin type/name</p></th>
<th><p>Standard / Add-on</p></th>
<th><p>Version</p></th>
<th><p>Comment</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Activity:</strong> Forum (mod_forum)</td>
<td>Standard</td>
<td><pre><code>From: 2013110501</code></pre>
<pre><code>To:   2013110502</code></pre></td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Activity: HotPot</strong> module (mod_hotpot)</td>
<td><p>Add-on</p></td>
<td><pre><code>From: 2014070225</code></pre>
<pre><code>To:   2014111133</code></pre></td>
<td><p><a href="https://moodle.org/plugins/pluginversions.php?plugin=mod_hotpot" class="uri">https://moodle.org/plugins/pluginversions.php?plugin=mod_hotpot</a></p></td>
</tr>
<tr class="odd">
<td><p><strong>Activity: Scheduler</strong> (mod_scheduler)</p></td>
<td><p>Add-on</p></td>
<td><pre><code>From: 2.5.1 (2013092702)</code></pre>
<pre><code>To:   2.5.2 (2013092704)</code></pre></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><strong>Activity: Workshop</strong> (mod_workshop)</td>
<td>Standard</td>
<td><pre><code>From: 2013110500</code></pre>
<pre><code>To:   2013110501</code></pre></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Block: Configurable Reports</strong> (block_configurable_reports)</td>
<td>Add-on</td>
<td><pre><code>From: 2.3.3 (2011040114)</code></pre>
<pre><code>To:   2.3.4 (2011040115)</code></pre></td>
<td><p><a href="https://moodle.org/plugins/pluginversion.php?id=6884" class="uri">https://moodle.org/plugins/pluginversion.php?id=6884</a></p></td>
</tr>
<tr class="even">
<td><p><strong>Question type: Algebra</strong> (qtype_algebra)</p></td>
<td><p>Add-on</p></td>
<td><pre><code>From: 1.31 (2014061900)</code></pre>
<pre><code>To:   1.33 (2014110800)</code></pre></td>
<td> </td>
</tr>
<tr class="odd">
<td>Question type: 'Drag and drop onto image' (qtype_ddimageortext)</td>
<td>Add-on</td>
<td><pre><code>From: 1.5 (2014042800)</code></pre>
<pre><code>To:   1.6 (2014111200)</code></pre></td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Question type: '</strong>Drag and drop markers' (qtype_ddmarker)</td>
<td>Add-on</td>
<td><pre><code>From: 1.6 (2014060300)</code></pre>
<pre><code>To:   1.7 (2014111200)</code></pre></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Question type: '</strong>Drag and drop into text' (qtype_ddwtos)</td>
<td>Add-on</td>
<td><pre><code>From: 1.3 (2013070100)</code></pre>
<pre><code>To:   1.4 (2014111200)</code></pre></td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Question type: '</strong>Select missing words' (qtype_gapselect)</td>
<td>Add-on</td>
<td><pre><code>From: 1.5 (2014010800)</code></pre>
<pre><code>To:   1.6 (2014111200)</code></pre></td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Question format: 'Microsoft Word table'</strong> (qformat_wordtable)</td>
<td>Add-on</td>
<td><pre><code>From: 2.10 (2014081201)</code></pre>
<pre><code>To:   2.10.1 (2014100801)</code></pre></td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Theme: Essential</strong> (theme_essential)</td>
<td> </td>
<td> </td>
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
<td><p>Respository file upload (local_repositoryfileupload)</p></td>
<td><p>Add-on</p></td>
<td><p>2014100900</p></td>
<td><p> </p></td>
<td><p>Developed by Niv.</p></td>
</tr>
</tbody>
</table>

 

 
