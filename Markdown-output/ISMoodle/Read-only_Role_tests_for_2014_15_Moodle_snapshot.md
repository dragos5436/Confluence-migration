# Read-only Role tests for 2014/15 Moodle snapshot

Tested on: <https://ele.moodle-uat.ucl.ac.uk/course/view.php?id=28055>

Student used for test: Mathew Beal

Read-only Student: Table

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
<th>Tested By:</th>
<th>Test</th>
<th>Pass</th>
<th>Fail</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Rod Digges</td>
<td>Can view Forums</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Rod Digges</td>
<td>Cannot post to Forums</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td>Rod Digges</td>
<td>Cannot edit forum posts</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Rod Digges</td>
<td>Can review quizz attempts</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td><a href="https://ele.moodle-uat.ucl.ac.uk/mod/quiz/view.php?id=1822785" class="uri">https://ele.moodle-uat.ucl.ac.uk/mod/quiz/view.php?id=1822785</a></td>
</tr>
<tr class="odd">
<td>Rod Digges</td>
<td>Cannot retake (even open quizzes)</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td><p><a href="https://ele.moodle-uat.ucl.ac.uk/mod/quiz/view.php?id=1822785" class="uri">https://ele.moodle-uat.ucl.ac.uk/mod/quiz/view.php?id=1822785</a></p>
<p>Quizz opened for another year and set to unlimited attempts</p></td>
</tr>
<tr class="even">
<td>Rod Digges</td>
<td>Can view/download Moodle assignments</td>
<td><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /></td>
<td> </td>
<td>Have to enable &quot;allow submission&quot; in order for student to be able to <strong>view</strong> their submission<br />
This unfortunately also allows Editing of submissions. This looks like a sort of bug as there<br />
are separate permissions dealing student review and submission of assignments. </td>
</tr>
<tr class="odd">
<td>Rod Digges</td>
<td>Can view Gradebook (if allowed in course settings</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td>Rod Digges</td>
<td>Turnitin Assignments (both types)</td>
<td><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /></td>
<td> </td>
<td>Have to enable &quot;allow submission&quot; in order for student to be able to <strong>view</strong> their submission<br />
This unfortunately also allows Editing of submissions. This looks like a sort of bug as there<br />
are separate permissions dealing student review and submission of assignments.</td>
</tr>
<tr class="odd">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</tbody>
</table>


