# Bespoke UCL plugins- testing scripts 3.11.6

moodle-staging.ucl.ac.uk

<table>
<thead>
<tr class="header">
<th>Plugin</th>
<th>How to test</th>
<th>Tester</th>
<th>Browser (IE/FF/GC/S)</th>
<th>Done? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></th>
<th>Outcome/comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Library resources (block)</td>
<td><ul>
<li>Turn editing on and add Library Resource block</li>
<li>Check UCL Explore/WISE links open</li>
<li>Check Portico code displays/opens for Reading lists and Past exams</li>
<li>Enter search term e.g 'economics' using UCL Explore</li>
<li><del>Do the same with Google Scholar search</del></li>
</ul></td>
<td>NB/FH</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Common timetable (block)</td>
<td><ul>
<li>Turn editing on and add Common Timetable block</li>
<li>Does Personal timetable open?</li>
<li>Does Module timetable (xxELEX1001) open/display timetable?</li>
</ul></td>
<td>NB/FH</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Library search (block)</td>
<td><ul>
<li>Turn editing on and add Library Search block</li>
<li>Enter search term e.g 'economics' using UCL Explore</li>
<li><del>Do the same with Google Scholar search</del></li>
<li><del>Enter search term e.g 'economics' using UCL Explore</del></li>
<li><del>Do the same with Google Scholar search</del></li>
</ul></td>
<td>NB/FH</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Course visibility (block)</td>
<td><ul>
<li>Make course unavailable to students and turn editing off- does the course visibility block show the<br />
course as 'unavailable'.</li>
<li>Make course available to students, keep editing on- does the course visibility block say 'currently visible<br />
students'?</li>
</ul></td>
<td>NB</td>
<td><p>GC Version 99.0.4844.74</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Portico enrolments (block) ***</td>
<td><ul>
<li><strong>Edit Portico enrolments</strong></li>
<li>Search for module code e.g. ECON1001 and select modules (including pre-approval and group import)</li>
<li>Activate mapping</li>
<li>Do the students/groups appear on the course the next day?</li>
</ul></td>
<td>NB</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>MIM not fully enabled in staging</td>
</tr>
<tr class="even">
<td><strong>Non standard plugins</strong></td>
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
<tr class="odd">
<td><del>Course menu (block)</del></td>
<td><ul>
<li><del>Turn editing on and add Course Menu block</del></li>
<li><del>Do the topic names display as hyperlinks? Click on one to be taken to that topic</del></li>
<li><del>Change a topic name and see if this is reflected in the course menu block?</del></li>
</ul></td>
<td>NB</td>
<td><br />
</td>
<td><br />
</td>
<td><p>No longer part of</p>
<p>prod Moodle?</p></td>
</tr>
<tr class="even">
<td>Quickmail (block)</td>
<td><ul>
<li>Turn editing on and add Quickmail block</li>
<li>Click <strong>Configuration</strong> and check all usual roles are highlighted in <strong>Roles to filter by</strong></li>
<li>Click <strong>Compose New Email</strong></li>
<li>Add <strong>Potential Recipients</strong> to <strong>Selected recipients</strong></li>
<li>Attach test document to message</li>
<li>Compose message with hyperlink to website</li>
<li>Ensure <strong>Receive a copy</strong> is set to <strong>Yes</strong></li>
<li>Check your emails for received copy</li>
<li>After email is sent, go to <strong>View History</strong> in Quickmail block and see if posted message is included here</li>
</ul>
<p><br />
</p></td>
<td>NB</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p>Staging not configured</p>
<p>to send emails</p></td>
</tr>
<tr class="odd">
<td>Bulk enrolment (Settings block)</td>
<td><ul>
<li>Click <strong>Settings &gt; Users &gt; Bulk enrolments</strong></li>
<li>Create CSV file as per <a href="https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M06d+-+Bulk+enrolment">M06d - Bulk enrolment</a></li>
<li>Ensure you have <strong>Send me a mail report enabled</strong>- did you receive a confirmation email?</li>
<li>Repeat steps above for Bulk unenrolments. <strong>Settings &gt; Users &gt; Bulk unenrolments</strong></li>
</ul>
<p><strong><br />
</strong></p></td>
<td>NB</td>
<td>GC Version 99.0.4844.74</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [check.svg](attachments/202342585/202342747.svg) (image/svg+xml)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [check.svg](attachments/202342585/202342582.svg) (image/svg+xml)

