# Moodle 3.4.4 Interim - 01/11/2018

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
<td><p>Role Change: Set enrol/manual:unenrolself to Allow for multiple roles</p></td>
<td><br />
</td>
<td>7950</td>
<td><p>setting enrol/manual:unenrolself to Allow for:<br />
- Leader<br />
- Tutor<br />
- Course Administrator<br />
- Course Administrator (No E-Mail)<br />
- Non-editing Tutor<br />
- Non-editing Tutor (No E-Mail)</p></td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>26 Oct 2018 </p>
</div></td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td>Change of full documentation link in the enrolment block</td>
<td><br />
</td>
<td>7953</td>
<td><p>Change the Help link setting in <a href="https://moodle-1819.ucl.ac.uk/admin/settings.php?section=blocksettingportico_enrolments" class="uri">https://moodle-1819.ucl.ac.uk/admin/settings.php?section=blocksettingportico_enrolments</a> to <a href="https://wiki.ucl.ac.uk/x/fAMJAw" class="uri">https://wiki.ucl.ac.uk/x/fAMJAw</a></p></td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>26 Oct 2018 </p>
</div></td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td>Failed login offers guest access, but then presented with nothing</td>
<td><br />
</td>
<td>7510</td>
<td>Code to be inserted in the /index.php after the local_hub include:<br />
<br />
if(isguestuser()){<br />
   $urltogo = $CFG-&gt;wwwroot.'/course/index.php';<br />
   redirect($urltogo);<br />
}</td>
<td>AS</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>01 Nov 2018 </p>
</div></td>
<td><div class="content-wrapper">
<p>Change to be recorded once moodle-core hack oddities are cleared up <a href="https://git.dcs.ucl.ac.uk/moodle/moodle-core/commit/8a3de4a5755ccf1f4f47f3f6a2ca8b8411f00fcb">https://git.dcs.ucl.ac.uk/moodle/moodle-core/commit/8a3de4a5755ccf1f4f47f3f6a2ca8b8411f00fc</a>i</p>
</div></td>
</tr>
<tr class="even">
<td>Test student accounts given wrong role</td>
<td><br />
</td>
<td>7751</td>
<td><p>Edit local\testaccount_automation\classes\testaccount_automation_create.php on line 198 setting to uclstudent instead of student</p>
<p><br />
</p></td>
<td>AS</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>01 Nov 2018 </p>
</div></td>
<td><div class="content-wrapper">
<p>Change recorded as <a href="https://git.dcs.ucl.ac.uk/moodle/moodle-local_testaccount_automation/commit/a9b50e75dfd97bc7f952aca8c4e3d3076611b3e0" class="uri">https://git.dcs.ucl.ac.uk/moodle/moodle-local_testaccount_automation/commit/a9b50e75dfd97bc7f952aca8c4e3d3076611b3e0</a></p>
</div></td>
</tr>
<tr class="odd">
<td>Library skills link not appearning in Library resources block</td>
<td><br />
</td>
<td>7912</td>
<td><p>Set $static_links = array(3, 16); on prod in /blocks/library_resources/edit_form.php line 14</p>
<p>and <a href="https://git.dcs.ucl.ac.uk/lta/moodle-mip/blob/feature_moodle-v3.4.4/blocks/library_resources/block_library_resources.php#L54" class="uri">https://git.dcs.ucl.ac.uk/lta/moodle-mip/blob/feature_moodle-v3.4.4/blocks/library_resources/block_library_resources.php#L54</a></p></td>
<td>AS</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>01 Nov 2018 </p>
</div></td>
<td>Change recorded as <a href="https://git.dcs.ucl.ac.uk/moodle/moodle-block_library_resources/commit/d9a2cd2e52e3979d988fe0218e87b5322c81df18" class="uri">https://git.dcs.ucl.ac.uk/moodle/moodle-block_library_resources/commit/d9a2cd2e52e3979d988fe0218e87b5322c81df18</a></td>
</tr>
<tr class="even">
<td>Hide 'Blog menu', 'Blog tags' &amp; 'Recent blog entries' blocks site-wide</td>
<td><br />
</td>
<td>7975</td>
<td>Go to https://moodle-1819.ucl.ac.uk/admin/blocks.php and disable 'Blog menu', 'Blog tags' &amp; 'Recent blog entries' blocks</td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>31 Oct 2018 </p>
</div></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>End users unable to create template questionnaires</td>
<td><br />
</td>
<td>7954</td>
<td>set 'mod/questionnaire:createtemplates' to Allow for:<br />
- Leader<br />
- Tutor<br />
- Course Administrator<br />
- Course Administrator (No E-Mail)</td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>31 Oct 2018 </p>
</div></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Role Change: Set moodle/calendar:manageownentries to Allow for multiple roles</td>
<td><br />
</td>
<td>7968</td>
<td>Set moodle/calendar:manageownentries to Allow for:<br />
- Leader<br />
- Tutor<br />
- Course Administrator<br />
- Course Administrator (No E-Mail)<br />
- Non-editing Tutor<br />
- Non-editing Tutor (No E-Mail)<br />
- Student</td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
<p>30 Oct 2018 </p>
</div></td>
<td><br />
</td>
</tr>
</tbody>
</table>


