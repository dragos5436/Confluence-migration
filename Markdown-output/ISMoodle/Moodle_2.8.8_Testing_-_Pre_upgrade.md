# Moodle 2.8.8 Testing - Pre upgrade

/

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v288.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

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
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a></p></td>
<td><p>Domi tested last week. - Just a quick check needed.</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a></p></td>
<td><p>Just a quick check needed.</p></td>
<td><p>DS</p></td>
<td><p>FF</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p>No major changes. Tested setting up new quiz with exam settings and adding questions. all worked fine.</p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a></p></td>
<td><p>Just a quick check needed.</p></td>
<td><p>RD</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a></p></td>
<td><p>Just a quick check needed.</p></td>
<td><p>MB</p></td>
<td><p>FF</p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p>A quick run through. All looks fine</p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p> </p></td>
<td><p>MB</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
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
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td> </td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter) </p></td>
<td><p><a href="https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=33466" class="uri">https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=33466</a></p></td>
<td><p>RD</p></td>
<td><p>chrome<br />
46.0.2490.80 </p></td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is not installed - uses Javascript version</p></td>
<td><p><a href="https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=33466" class="uri">https://v286.moodle-uat.ucl.ac.uk/course/view.php?id=33466</a></p></td>
<td><p>RD</p></td>
<td><p>chrome<br />
46.0.2490.80</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td>Updated plugins - these should all be checked<br />

<pre><code> </code></pre></td>
<td><p> </p></td>
<td><p><strong> </strong></p></td>
<td> </td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><pre><code>| HTMLPlus                         | atto_htmlplus        | 2.9 (Build: 2015082100)  </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="even">
<td><pre><code>| More font colours                | atto_morefontcolors  | 1.2 for Moodle 2.7-2.9</code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="odd">
<td><pre><code>| Grid format                      | format_grid          | 2.8.2.4   </code></pre></td>
<td>1) changes to section title changes that sections image size in the grid (workaround by re-saving course settings)</td>
<td>RD</td>
<td>chrome<br />
46.0.2490.80</td>
<td><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /></td>
<td> </td>
</tr>
<tr class="even">
<td><pre><code>| Collapsed Topics                 | format_topcoll       | 2.8.2.5 </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="odd">
<td><pre><code>| Reading List items               | mod_aspirelist       | 2.7.7 (Build: 20150928)   </code></pre></td>
<td>Checked on   <a href="https://v288.moodle-uat.ucl.ac.uk/course/view.php?id=34499" class="uri">https://v288.moodle-uat.ucl.ac.uk/course/view.php?id=34499</a></td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="even">
<td><pre><code>| Group Choice                     | mod_choicegroup      | 1.8.3 for Moodle 2.7-2.9 (Build: 2015080100)</code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="odd">
<td><pre><code>| HotPot module                    | mod_hotpot           | 2015-10-07 (77) </code></pre></td>
<td> </td>
<td>MB</td>
<td> </td>
<td> </td>
<td>Not going to test. So old and need hotpot content</td>
</tr>
<tr class="even">
<td><pre><code>| Forum (Advanced)                 | mod_hsuforum         | 2.8.0 (Build: 20150708)  </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="odd">
<td><pre><code>| Scheduler                        | mod_scheduler        | 2.7.1  </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="even">
<td><pre><code>| Microsoft Word 2010 table format | qformat_wordtable    | 3.4.3 (Build: 20150930) </code></pre></td>
<td>Jess might look at this</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr class="odd">
<td><pre><code>| Drag and drop onto image         | qtype_ddimageortext  | 1.8 for Moodle 2.6+  </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
</tr>
<tr class="even">
<td><pre><code>| Multinumerical                   | qtype_multinumerical | 2.5.4 for Moodle 2.3-2.9  </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td>No Idea what this Q type is meant to do, but I can create the question OK</td>
</tr>
<tr class="odd">
<td><pre><code>| Pattern match                    | qtype_pmatch         | 1.9 for Moodle 2.6+ </code></pre></td>
<td> </td>
<td>MB</td>
<td>FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td>No Idea about pattern matching syntax, but it looks to work OK</td>
</tr>
<tr class="even">
<td>Check 'auto form population' by browsers</td>
<td> </td>
<td>MB</td>
<td>Chrome/FF</td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td> </td>
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
<td><p>See separate 2.8 hacks page</p></td>
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
<td><p>For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK</p></td>
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


