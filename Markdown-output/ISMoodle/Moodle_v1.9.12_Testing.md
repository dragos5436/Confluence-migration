# Moodle v1.9.12 Testing

This page contains everything to test for Moodle 1.9.12

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Issue</p></th>
<th><p>Tester<br />
</p></th>
<th><p>Passed?<br />
</p></th>
<th><p>Notes<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>filter/jmol</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>mod/book - the book plugin</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>mod/flv - JW media player plugin</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p>I never noticed how many skins they are?<br />
</p></td>
</tr>
<tr class="even">
<td><p>mod/questionnaire</p></td>
<td><p>Matt</p></td>
<td><p>No<br />
</p></td>
<td><p>The Moodle WYSIWYG editor doesn't look right, it has white gaps inbetween the icons. Probably the theme. (Pete - yes looks like the theme. Works on dev with my themes.)<br />
</p></td>
</tr>
<tr class="odd">
<td><p>mod/quiz responses (detailed report for quizzes)</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>mod/scheduler</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p>Seems ok but haven't testing extensively<br />
</p></td>
</tr>
<tr class="odd">
<td><p>mod/slideshow</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p>Seems a bit unhappy on loading with lots of images (10) but I assume this is a limitation of the plug-in rather than anything serious.<br />
</p></td>
</tr>
<tr class="even">
<td><p>blocks/course_menu</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>blocks/email_list</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>blocks/library_resources</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>blocks/library_search</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>blocks/mycourses</p></td>
<td><p>matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p>Seems to do as expected<br />
</p></td>
</tr>
<tr class="odd">
<td><p>blocks/Quickmail</p></td>
<td><p>Matt</p></td>
<td><p>Yes<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>mod/turnitintool</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>NEEDS THOROUGH TESTING by more than 1 person<br />
scale grades still not working - Letter grade turns to 0 and if scale is selected in options and you give a numeric grade nothing shows in gradebook - when changed back to our of 100 you need to re-enter the assignment in Turnitin for the gared to display correctly in gradebook - otherwise it just shows 0 :(<br />
</p></td>
</tr>
<tr class="odd">
<td><p>showing userid field in user lists (admin - browse list of users)</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>calendar export - recent activity is hard coded to 90 days instead of 60</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>course edit form - a new course should default to being hidden from students</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>essay grading in lesson module - page sorts by surname - check Case of the month (id=5407 - try case 3 part 10)<br />
</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>flv module - when adding/editing - click advanced - you'll see entries in the drop-downs for the 'UCL Media streaming' service</p></td>
<td><p>Jess<br />
</p></td>
<td><p>Yes</p></td>
<td><p>'UCL Media streaming' option is there<br />
</p></td>
</tr>
<tr class="even">
<td><p>Kosovo added to list of countries</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>quiz question numbering wraps instead of sitting on 1 long line (test with 50+ questions with 1 per page)</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>IMS enterprise enrolment - check auth type (Pete tests this)</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>the Themes<br />
</p></td>
<td><p>Jess</p></td>
<td><p>Yes</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
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
</tr>
</tbody>
</table>


