# Moodle 2.8.10 - block update pre-upgrade testing

The changes are below.  The main difference is that the Bulk enrolment tool now becomes part of the course admin settings, under users, rather than a block that needs to be added to courses. This will need some new documentation around it.

Test at:  <https://v2810.moodle-uat.ucl.ac.uk>

 

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
<th><p>Issue</p></th>
<th><p>Details</p></th>
<th><p>Who?</p></th>
<th><p>Browser?<br />
IE/FF/Ch<br />
(incl. v.)</p></th>
<th><p>Done?<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th><p>Outcome/Decision</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Essential Testing items, Pre and post upgrade</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><strong>Editor plugins:</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Atto Pastespecial</td>
<td> </td>
<td>RD</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>helix atto</td>
<td> </td>
<td>RD</td>
<td> </td>
<td> </td>
<td>currently hidden - don't test</td>
</tr>
<tr class="odd">
<td>helix tinymce</td>
<td> </td>
<td>RD</td>
<td> </td>
<td> </td>
<td>currently hidden - don't test</td>
</tr>
<tr class="even">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><strong>Block</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Quickmail</td>
<td>Able to send and configure block successfully (although Cron not running)</td>
<td>FH</td>
<td>Google Chrome 49</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="odd">
<td>Choicegroup</td>
<td>Seems to work as expected.</td>
<td>DS</td>
<td>Chrome Version 49.0.2623.87 m</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="even">
<td>hotpot</td>
<td>No new HP added but existing activities tested. No display issues.</td>
<td>ZW</td>
<td> </td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="odd">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Bulk enrolments</td>
<td> </td>
<td>FH</td>
<td>Google Chrome 49</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="odd">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><strong>Question type</strong></td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>wordtable </td>
<td>Could not export questions to word table, get 'Sorry, the requested file could not be found'Qustion bank and category at:https://v2810.moodle-uat.ucl.ac.uk/question/edit.php?courseid=4083&amp;cat=14589%2C3 Domi was able to export multiple choice as Word. Was also able to import (when saved as .docx) </td>
<td><p>RD</p>
<br />
<br />

<p>DS </p></td>
<td><p>Chrome<br />
48.0.2564.116 m </p>
<p><br />
Chrome Version 49.0.2623.87 m</p></td>
<td><p><img src="images/icons/emoticons/error.png" alt="(error)" /></p>
<p><br />
<br />
<img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /></p></td>
<td> </td>
</tr>
<tr class="even">
<td>algebra </td>
<td>Works as expected.</td>
<td>DS</td>
<td>Chrome Version 49.0.2623.87 m</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="odd">
<td>ddmatch </td>
<td>Works as expected.</td>
<td>DS</td>
<td>Chrome Version 49.0.2623.87 m</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="even">
<td>gapfill </td>
<td>Works as expected.</td>
<td>DS</td>
<td>Chrome Version 49.0.2623.87 m</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="odd">
<td>multichoiceset </td>
<td>Works as expected.</td>
<td>DS</td>
<td>Chrome Version 49.0.2623.87 m</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
</tr>
<tr class="even">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</tbody>
</table>


