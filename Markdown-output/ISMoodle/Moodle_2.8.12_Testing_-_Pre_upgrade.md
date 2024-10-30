# Moodle 2.8.12 Testing - Pre upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v2812.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

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
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a></p>
<p> </p>
<p>| Plugin                                                    |                                | From               | To                    |</p>
<p>|--------------------------------------------------- |-------------------------- |---------------------|---------------------|</p>
<p>| Activities: Turnitin's Moodle Direct       | mod_turnitintool       | v2015030304  | v2015030305  |</p>
<p>| Activities: Turnitin's Moodle Direct v2  | mod_turnitintooltwo  | v2015040110  | v2015040111  |</p></td>
<td><p>V1</p>
<ul>
<li>ISLTSS:TII001T] Create New Turnitin Assignment</li>
<li>[ISLTSS:TII002T] Check existing</li>
<li>[ISLTSS:TII003T] New functionality</li>
</ul>
<p>V2</p>
<ul>
<li>ISLTSS:TII001T] Create New Turnitin Assignment</li>
<li>[ISLTSS:TII002T] Check existing</li>
<li>[ISLTSS:TII003T] New functionality</li>
</ul></td>
<td> </td>
<td> </td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td>Not needed</td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:</p>
<ul>
<li>blocks/library_resources</li>
<li>blocks/common timetable</li>
<li>blocks/library_search  </li>
<li>blocks/course_visibility</li>
<li>blocks/portico_enrolments<br />
Non-standard plugins   </li>
<li>blocks/course_menu</li>
<li>blocks/quickmail</li>
<li>blocks/bulk enrolment</li>
</ul></td>
<td><p>Not needed</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td> </td>
<td><p></p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is not installed - uses Javascript version</p></td>
<td> </td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td>Updated plugins - these should all be checked<br />

<pre><code> </code></pre>
<p>| Plugin                                                                                                | From              | To           |</p>
<p>|------------------------------------------------------------|--------------------------- |--------------------|--------------|</p>
<p>| Activities: Aspire resource list                        | mod_aspirelist         | 2015012106   | 2015012107   |</p>
<p>| Filters: Jmol                                                   | filter_jmol                 | 2015110900   | 2016011200   |</p>
<p>| Atto: More font colours                                  | atto_morefontcolors  | 2015101400   | 2016010600   |</p>
<p>| Atto: Paste special                                         | atto_pastespecial     | 2015120300   | 2016010600   |</p>
<p> </p></td>
<td><p> </p></td>
<td> </td>
<td> </td>
<td> </td>
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
<td><p><strong>Non core plugins</strong></p>
<ul>
<li>Reading lits items</li>
<li>Attendance</li>
<li>Certificate</li>
<li>Group Choice</li>
<li>Campus pack</li>
<li>Blackboard collaborate</li>
<li>Hot pot</li>
<li>Hot question</li>
<li>Forum advanced</li>
<li>Questionnaire</li>
<li>Scheduler</li>
<li>Slideshow</li>
</ul></td>
<td><p> </p></td>
<td><p> </p>
<p> </p></td>
<td><p> </p>
<p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p><strong>Core plugins</strong></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Scorm</p></td>
<td><p>Borrow a scorm zip from a live course</p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Wiki</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Workshop</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


