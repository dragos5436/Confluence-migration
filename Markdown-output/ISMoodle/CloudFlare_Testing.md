# CloudFlare Testing

### **Functionality Testing**

<table>
<thead>
<tr class="header">
<th><br />
</th>
<th>Test Steps</th>
<th><p>Pass/Fail</p></th>
<th>Tester</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Bespoke</td>
<td><a href="http://wiki.ucl.ac.uk/display/ISLTSS/Bespoke+UCL+plugins-+testing+scripts">Bespoke UCL plugins- testing scripts</a></td>
<td>Pass</td>
<td>David</td>
</tr>
<tr class="even">
<td>Assignment</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests+-+Assignment">Tests - Assignment</a></td>
<td>Pass</td>
<td>David</td>
</tr>
<tr class="odd">
<td>Feedback</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-MyFeedback">Tests-MyFeedback</a></td>
<td>Fail - displays error reading from database. May have been like this before cloudflare testing</td>
<td>David</td>
</tr>
<tr class="even">
<td>Questionnaire</td>
<td>add steps</td>
<td>Pass</td>
<td>David</td>
</tr>
<tr class="odd">
<td>Chemistry and Maths</td>
<td>add steps<strong></strong></td>
<td>?</td>
<td>David</td>
</tr>
<tr class="even">
<td>Attendance</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-+Attendance">Tests- Attendance</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="odd">
<td>Stack Backend</td>
<td>add steps</td>
<td>Fail - 
<p>Exception - stack_cas_connection: MaximaPool error: 500</p>
<p>*This may have been down before cloudflare testing - WR #350454</p></td>
<td>David</td>
</tr>
<tr class="even">
<td>Book</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Book">Tests-Book</a></td>
<td>Pass</td>
<td>David</td>
</tr>
<tr class="odd">
<td>Choice</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Choice">Tests-Choice</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="even">
<td>Course Formats</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-CourseFormats">Tests-CourseFormats</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="odd">
<td>Feedback</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Feedback">Tests-Feedback</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="even">
<td>Folder</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Folder">Tests-Folder</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="odd">
<td>Forum</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Forum">Tests-Forum</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="even">
<td>General</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General">Tests-General</a></td>
<td><p>Pass</p></td>
<td>Nikola</td>
</tr>
<tr class="odd">
<td>Glossary</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Glossary">Tests-Glossary</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="even">
<td>Gradebook</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Gradebook">Tests-Gradebook</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="odd">
<td>GroupChoice</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-GroupChoice">Tests-GroupChoice</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="even">
<td>Lesson</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Lesson">Tests-Lesson</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="odd">
<td>Quiz</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Quiz">Tests-Quiz</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="even">
<td>Resource</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Resource">Tests-Resource</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="odd">
<td>Scheduler</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Scheduler">Tests-Scheduler</a></td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>SCORM</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-SCORM">Tests-SCORM</a></td>
<td><p>Fail? Does not load on 3 browsers.</p>
<p><br />
</p>
<p>Possible reason?</p>
<p><a href="https://moodle.org/mod/forum/discuss.php?d=391404" class="uri">https://moodle.org/mod/forum/discuss.php?d=391404</a></p>
<p><br />
</p></td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>Wiki</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Wiki">Tests-Wiki</a></td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>Workshop</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-Workshop">Tests-Workshop</a></td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>External Services Plugins</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Turnitin</td>
<td><a href="https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=119348490">Turnitin Test Script 15/07/19</a></td>
<td>Pass - JN</td>
<td>Digi-ed</td>
</tr>
<tr class="odd">
<td>Blackboard Collab</td>
<td><a href="Tests-BlackboardCollaborate" class="uri">Tests-BlackboardCollaborate</a></td>
<td>Pass</td>
<td>Ehsan</td>
</tr>
<tr class="even">
<td>Zoom</td>
<td><a href="Zoom_Tests_for_CloudFlare">Zoom Tests for CloudFlare</a></td>
<td>Pass</td>
<td>Nikola</td>
</tr>
<tr class="odd">
<td>Ally Report</td>
<td>add steps</td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>Stack</td>
<td><a href="https://wiki.ucl.ac.uk/display/ISLTSS/STACK+question+testing">Stack tests</a></td>
<td><p>FAIL - Exception - stack_cas_connection: MaximaPool error: 500</p>
<p><a href="http://docs.moodle.org/39/en/error/moodle/generalexceptionmessage">More information about this error</a></p>
<p>AP - can add the question but cannot save. Shows this error</p></td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>Echo360 (LectureCast)</td>
<td><a href="Tests-Lecturecast_LTI">Tests-Lecturecast LTI</a></td>
<td>Pass</td>
<td>Digi-ed</td>
</tr>
<tr class="even">
<td>LibreLamda (pdf conversion when grading assignments)</td>
<td>add steps</td>
<td>Pass</td>
<td>Digi-ed</td>
</tr>
<tr class="odd">
<td>Emails</td>
<td>add steps</td>
<td>Cannot test</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>Learning Science</td>
<td>add steps</td>
<td>Pass - JN</td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>Talis Aspire</td>
<td>add steps</td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>BibliU (LTI)</td>
<td>add steps</td>
<td>Pass - JN</td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>Media Central</td>
<td>add steps</td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>MatLab Grader</td>
<td>add steps</td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>Labster</td>
<td>add steps</td>
<td>Pass</td>
<td>Dig-ed</td>
</tr>
<tr class="even">
<td>Hypothes.is</td>
<td>add steps</td>
<td>Pass - JN</td>
<td>Dig-ed</td>
</tr>
<tr class="odd">
<td>H5P?</td>
<td>add steps</td>
<td>Pass</td>
<td>Digi-ed</td>
</tr>
</tbody>
</table>


