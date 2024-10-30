# Moodle gradebook calculation ID issue

### Jira stories

CTP-1333 - Investigate gradebook calc id issue - IN05237530 Backlog

### Issue

-   User reported getting error messages when trying to set the ID numbers for the gradebook calculation.  The user has created multiple instances of the LTI GoReact with each having a group name.  The user was able to add ID numbers for multiple groups but when trying to add ID for 'Group AU' and 'Group AW', the error messages where shown.  George did initial investigation and discovered that the errors where due to the both LTIs having the same database ID.
-   <https://moodle.ucl.ac.uk/grade/edit/tree/index.php?id=11363> Group AW and AU have the same ID which should not be possible.

### Investigation

-   I have setup the following course with multiple GoReact LTI's [https://311.preview-moodle.ucl.ac.uk/course/view.php?id=](https://311.preview-moodle.ucl.ac.uk/course/view.php?id=2)2
-   When clicking on the LTI you are taken to the GoReact website.  The only functionality you have from their is to upload, view and mark.  There is no option to create id numbers for the LTI.  This is a Moodle specific function
-   Possibly when the user added multiple GoReact LTI' to the course, they used the duplicate function to add multiple instances.  Maybe caused an ID to duplicate

### Fix

No fix.  Unable to replicate.  Funcationality working as normal

### Testing

<table>
<thead>
<tr class="header">
<th>Scenario</th>
<th>Steps</th>
<th>Expected Behavior</th>
<th>Pass/Fail</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Add ID numbers to GoReact LTI gradebook calculations</td>
<td><ol>
<li>log into moodle &gt; navigate to course &gt; click gradebook setup on course admin menu</li>
<li>add a grade item &gt; saves changes</li>
<li>go to the grade item &gt; click edit &gt; edit calculation</li>
<li>add 'au' and 'aw' in the fields &gt; click 'add id numbers'</li>
</ol></td>
<td>id numbers are added</td>
<td>pass</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>create multiple LTI GoReact instances using duplicate function</td>
<td><ol>
<li>log into moodle &gt; navigate to course &gt; turn editing on</li>
<li>add external tool &gt; add go react details &gt; save</li>
<li>on the course pag click edit &gt; duplciate</li>
</ol></td>
<td>activity is duplicated with unique id</td>
<td>pass</td>
<td><br />
</td>
</tr>
</tbody>
</table>


