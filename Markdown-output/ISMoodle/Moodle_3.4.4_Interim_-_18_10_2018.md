# Moodle 3.4.4 Interim - 18/10/2018

<table>
<thead>
<tr class="header">
<th>What</th>
<th>CR</th>
<th>Mantis</th>
<th>Steps</th>
<th>Who</th>
<th>Confirmed</th>
<th>Comment</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Mapping is active tick box clickable even if no deliveries mapped</p></td>
<td><br />
</td>
<td>7941</td>
<td><p>Copy portico_enrolments directory from</p>
<p><a href="http://moodle-01-u.ucl.ac.uk">moodle-01-u.ucl.ac.uk/data/apache/moodle-vhosts/v3.4.4+_build-20180709/blocks</a></p>
<p>to same location on</p>
<p><a href="http://moodle-app-01.ucl.ac.uk">moodle-app-(01,2,3,4 admin).ucl.ac.uk</a></p></td>
<td>AS</td>
<td>yes</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
<tr class="even">
<td>Config Change: RSS feeds for activities</td>
<td><br />
</td>
<td>7900</td>
<td><p>Enable RSS feeds should be set to &quot;Yes&quot; for the forum, database and glossary activities.</p>
<p><br />
</p>
<p>/admin/settings.php?section=modsettingforum</p>
<p>/admin/settings.php?section=modsettingdata</p>
<p>/admin/settings.php?section=modsettingglossary</p>
<p><br />
</p>
<p>These changes have already been made on v344 UAT but should be made on Prod, PP and Dev.</p></td>
<td>AS</td>
<td>Done</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
<tr class="odd">
<td>Role Change: Set moodle/course:viewhiddensections to Allow</td>
<td><br />
</td>
<td>7902</td>
<td>moodle config change</td>
<td>AS</td>
<td>Done</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
<tr class="even">
<td>Long course names truncate in top turquoise banner</td>
<td><br />
</td>
<td>7639</td>
<td><p>Change course title max length to 100 at</p>
<p>https://moodle-1819.ucl.ac.uk/admin/settings.php?section=theme_adaptable_header#admin-coursetitlemaxwidth</p>
<p></p>
<p>Copy extra CSS from https://v344.moodle-01-u.ucl.ac.uk/admin/settings.php?section=theme_adaptable_generic</p>
<p>to same location on moodle-1819.ucl.ac.uk</p></td>
<td>AS</td>
<td>Done</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
<tr class="odd">
<td>Role change</td>
<td><br />
</td>
<td>7942</td>
<td><p>The following roles need to be assignable in the context of an activity module on 18-19 Moodle:</p>
<p>- Leader (uclleader)</p>
<p>- Course Administrator (uclcourseadmin)</p>
<p>- Tutor (ucltutor)</p>
<p>- Non-editing Tutor (uclnoneditingtutor)</p>
<p>- Student (uclstudent)</p>
<p><br />
</p>
<p>This was disabled as a result of a previous role change but a use case for this requires this to be enabled.</p></td>
<td>AS</td>
<td>Done</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
<tr class="even">
<td>Blocks 'my home' - ensure consistency across environments</td>
<td><br />
</td>
<td>7627</td>
<td>ensure blocks are consistent at /my/indexsys.php</td>
<td>MB</td>
<td>Done</td>
<td><div class="content-wrapper">
<p>18 Oct 2018 </p>
</div></td>
</tr>
</tbody>
</table>


