# 15/16 - Archive tests for Student and Staff Read-only roles

Note some URLs for example courses need updating as pointing to 14/15

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
<th><p>Basic checks</p></th>
<th><p>Check</p></th>
<th><p>Checker</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Guest Access</p></td>
<td><p>Check not available</p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Check on any course the student roles are mapped</p></td>
<td><p>Checked on:/course/view.php?id=28055</p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p>All students mapped to both student and student-read only roles - harder prohibits set in read-only which should overwrite</p></td>
</tr>
<tr class="odd">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><p>StudentTests</p></td>
<td><p> </p></td>
<td><p>Tester</p></td>
<td><p>OK/Not OK</p></td>
<td><p>Notes</p></td>
</tr>
<tr class="odd">
<td><p>Check Log-in</p></td>
<td><p>Logged into:<br />
<a href="https://moodle-snapshot.ucl.ac.uk/15-16/course/view.php?id=28055" class="uri">https://moodle-snapshot.ucl.ac.uk/15-16/course/view.php?id=28055</a><a href="https://moodle-snapshot.ucl.ac.uk/14-15/course/view.php?id=28055">5</a> as:<br />
Christopher Barker</p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p>Log-in OK (no site prompt for terms and conditions like last year)</p></td>
</tr>
<tr class="even">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://moodle-snapshot.ucl.ac.uk/15-16/mod/forum/view.php?f=64261" class="uri">https://moodle-snapshot.ucl.ac.uk/15-16/mod/forum/view.php?f=64261</a></p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p>Could read forum posts in News forum.<br />
Could read posts in normal forum <br />
Could not create new discussion or reply to existing posts - as expected</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - can review but not alter</p></td>
<td><p>RD</p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>logged in as <a href="https://moodle-snapshot.ucl.ac.uk/15-16/user/profile.php?id=350327" title="View profile">Nwanne Amadi</a> to course ID 20838 (GSWMII) can review and retake quizzes - amended student read-only role to prohibit quizz attempts as was done with 14-15 archive.</p></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Can see Turnitin Submission</p></td>
<td><p>[https://moodle-archive.ucl.ac.uk/13-14/mod/turnitintool/view.php?id=1576627&amp;do=submission<br />
]</p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p>Accessed submission in box reviewed assignment in Turnitin Viewer<br />
- could download original document at link:<a href="https://moodle-snapshot.ucl.ac.uk/14-15/mod/turnitintooltwo/view.php?id=1845423&amp;do=submissions" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/mod/turnitintooltwo/view.php?id=1845423&amp;do=submissions</a></p></td>
</tr>
<tr class="odd">
<td><p>Moodle assignment - can access old submissions</p></td>
<td><p>Tested using trail67 as student above had no moodle submissions on her courses.<br />
<a href="https://moodle-archive.ucl.ac.uk/13-14/mod/assign/view.php?id=1623187" class="uri">https://moodle-archive.ucl.ac.uk/13-14/mod/assign/view.php?id=1623187</a></p></td>
<td><p>RD</p></td>
<td><p>OK - sort of</p></td>
<td><p>Same issue as last year still needs resolving - in order to allow viewing of old submissions editing, and submission on open assignments (there shouldn't be many of those) has to be enabled - this needs reviewing during the year.</p></td>
</tr>
<tr class="even">
<td><p>Can see gradeboook</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p>OK</p></td>
<td><p>logged in as <a href="https://moodle-snapshot.ucl.ac.uk/15-16/user/profile.php?id=350327" title="View profile">Nwanne Amadi</a> to course ID 20838 (GSWMII) can review grades in gradebook</p></td>
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
<th><p>Basic checks</p></th>
<th><p>Check</p></th>
<th><p>Checker</p></th>
<th><p>OK/Not OK</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Check on any course the Tutor read-only roles are mapped</p></td>
<td><p>Checked on:<a href="https://moodle-snapshot.ucl.ac.uk/14-15/course/view.php?id=28055" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/course/view.php?id=28055</a></p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Check after Jo runs SQL</p></td>
</tr>
<tr class="even">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><p>Tutor Tests</p></td>
<td><p> </p></td>
<td><p>Tester</p></td>
<td><p>OK/Not OK</p></td>
<td><p>Notes</p></td>
</tr>
<tr class="even">
<td><p>Check Log-in</p></td>
<td><p>Logged into:<br />
<a href="https://moodle-snapshot.ucl.ac.uk/14-15/course/view.php?id=28055" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/course/view.php?id=28055</a> as:<br />
Test account ccaardi_s1212 assigned to Tutor-read-only role on this course</p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Log-in OK got site agreement as expected and continued to course</p></td>
</tr>
<tr class="odd">
<td>Cannot turn editing on</td>
<td> </td>
<td>RD</td>
<td> </td>
<td> </td>
</tr>
<tr class="even">
<td><p>Forums</p></td>
<td><p>Checked in <a href="https://moodle-snapshot.ucl.ac.uk/14-15/mod/forum/view.php?f=69519" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/mod/forum/view.php?f=69519</a></p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Could read forum posts in News forum.<br />
Could read posts in normal forum <br />
Could not create new discussion or reply to existing posts - as expected</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - can review but not alter</p></td>
<td><p><a href="https://moodle-snapshot.ucl.ac.uk/14-15/mod/quiz/review.php?attempt=2550233" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/mod/quiz/review.php?attempt=2550233</a></p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Could access and review quiz and all student attempts - could not alter questions or change quiz settings</p>
<p> </p></td>
</tr>
<tr class="even">
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><p>Can see Turnitin Submission</p></td>
<td><p>[<a href="https://moodle-archive.ucl.ac.uk/13-14/mod/turnitintool/view.php?id=1576627&amp;do=submission" class="uri">https://moodle-archive.ucl.ac.uk/13-14/mod/turnitintool/view.php?id=1576627&amp;do=submission</a><br />
]</p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Accessed submission in box reviewed assignment in Turnitin Viewer<br />
- could download original document at link:<a href="https://moodle-snapshot.ucl.ac.uk/14-15/mod/turnitintooltwo/view.php?id=1845423&amp;do=submissions" class="uri">https://moodle-snapshot.ucl.ac.uk/14-15/mod/turnitintooltwo/view.php?id=1845423&amp;do=submissions</a></p></td>
</tr>
<tr class="even">
<td><p>Moodle assignment - can access all old submissions</p></td>
<td><p>Tested using trail67 as student above had no moodle submissions on her courses.<br />
<a href="https://moodle-archive.ucl.ac.uk/13-14/mod/assign/view.php?id=1623187">https://moodle-archive.ucl.ac.uk/13-14/mod/assign/view.php?id=1671245</a></p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p>Same issue as last year still needs resolving - in order to allow viewing of old submissions editing, and submission on open assignments (there shouldn't be many of those) has to be enabled - this needs reviewing during the year.</p></td>
</tr>
<tr class="odd">
<td><p>Can see gradeboook</p></td>
<td><p> </p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td>Can see but not modify gradebook</td>
</tr>
</tbody>
</table>


