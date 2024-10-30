# Zoom Tests for CloudFlare

<table>
<thead>
<tr class="header">
<th>Test</th>
<th><p>Tester</p>
<p>Nikola</p></th>
<th><p>Before </p>
<p>CloudFlare</p></th>
<th><p>After</p>
<p>CloudFlare</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ol>
<li>Create a meeting in Moodle - check the meeting is created in Zoom?</li>
</ol></td>
<td><br />
</td>
<td><p>Pass</p></td>
<td>Pass</td>
</tr>
<tr class="even">
<td><p>1.1. Start the meeting created in 1) within Moodle and check it is starting in Zoom</p></td>
<td><br />
</td>
<td><p>Pass</p></td>
<td>Pass</td>
</tr>
<tr class="odd">
<td><p>1.2. Update the meeting created in 1) and check the changes are passed to Zoom </p></td>
<td><br />
</td>
<td>Pass</td>
<td>Pass</td>
</tr>
<tr class="even">
<td>        1.3. Delete the meeting created in 1) in Zoom - check Moodle identifies the deletion</td>
<td><br />
</td>
<td><p>Pass</p></td>
<td>Pass</td>
</tr>
<tr class="odd">
<td><p>2. Update meeting settings in Zoom e.g. Passcode and Waiting room enabled,</p>
<p>wait for cron &quot;update meeting settings from Zoom&quot; to run and check changes are passed back to Moodle</p></td>
<td><br />
</td>
<td><p>Pass</p>
<p><br />
</p></td>
<td>Pass</td>
</tr>
<tr class="even">
<td>3. Check if a student user can join a Zoom meeting from Moodle?</td>
<td><br />
</td>
<td>Pass</td>
<td>Pass</td>
</tr>
<tr class="odd">
<td>4. Check cron &quot;Get meeting report from Zoom \mod_zoom\task\get_meeting_reports&quot; is running and not failing</td>
<td><br />
</td>
<td><p>Pass</p>
<p>Known issue with Zoom plugin v3.4 - reports not populating</p></td>
<td><p>Pass</p>
<p>Known issue with Zoom plugin v3.4 - reports not populating</p></td>
</tr>
<tr class="even">
<td>5. Check cron &quot;Update meeting settings from Zoom \mod_zoom\task\update_meetings&quot; is running and not failing</td>
<td><br />
</td>
<td>Pass</td>
<td>Pass</td>
</tr>
</tbody>
</table>


