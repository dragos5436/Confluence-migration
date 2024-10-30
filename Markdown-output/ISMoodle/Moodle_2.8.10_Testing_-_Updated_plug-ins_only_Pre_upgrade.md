# Moodle 2.8.10 Testing - Updated plug-ins only Pre upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v2810.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

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
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td>Not needed</td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Atto Pastespecial<br />
helix atto - hidden no need to test<br />
helix tinymce - hidden no need to test</p>
<p>Block;<br />
Quickmail - cant test without CRON running<br />
choicegroup<br />
hotpot</p>
<p>Local;<br />
mass_enroll (Bulk enrolments) - it has changed location but functionality should be exactly the same</p>
<p>Activity;<br />
helixmedia - hidden no need to test</p>
<p>Question type;<br />
wordtable - Jess' baby, not sure how easy it is to test<br />
algebra<br />
ddmatch<br />
gapfill<br />
multichoiceset</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>LaTex (Tex filter) </p></td>
<td> </td>
<td><p></p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>JMol filter (3D molecular images)   - works if java is not installed - uses Javascript version</p></td>
<td> </td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Second priority pre-upgrade test items - only do if time allows.<br />
</strong></p></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>UCL in house fixes, hacks and Improvements</p></td>
<td><p>S</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Core plugins</strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Scorm</p></td>
<td><p>Borrow a scorm zip from a live course</p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


