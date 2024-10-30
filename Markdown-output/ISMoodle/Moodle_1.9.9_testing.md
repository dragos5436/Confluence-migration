# Moodle 1.9.9 testing

# Moodle 1.9.9 testing

Moodle 1.9.9 is available here: <http://v199.moodle-dev.ucl.ac.uk>

Any CONFIRMED bugs in 1.9.9 at UCL should go in TRAC: <http://wasdev-b.ucl-0.ucl.ac.uk/projects/Moodle-195/report/6>.
Check that they don't already exist in 1.9.8 tho!

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
<th><p>issue</p></th>
<th><p>link to details<br />
</p></th>
<th><p>action<br />
</p></th>
<th><p>who?<br />
</p></th>
<th><p>outcome/decision<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>new features need testing (all listed on this page):</p>
<ul>
<li>SCORM<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>gradebook reports <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>grade import<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>AICC <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>hotpotatoes <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>quiz <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>assignment <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>import fixed - YAY! <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>TeX <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>backup/restore changes links to files in labels<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
</ul></td>
<td><p><a href="http://tracker.moodle.org/browse/MDL/fixforversion/10405" class="uri">http://tracker.moodle.org/browse/MDL/fixforversion/10405</a></p></td>
<td><p>needs testing (including a course backup and restore)<br />
</p></td>
<td><p>Jess</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>Quizzes <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p>Jess<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>manual backups? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>Jess<br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>previously detected issues w UCL Moodle <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>need to check all issues that have been fixed<br />
</p></td>
<td><p>Jess<br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Non-standard plugins<img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" /> /)<br />
* mod/book - the book plugin</p>
<ul>
<li>mod/certificate - custom certificate for Eastman dental (not needed)!</li>
<li>mod/flv - JW media player plugin </li>
<li>mod/questionnaire</li>
<li>mod/scheduler</li>
<li>mod/slideshow</li>
<li>blocks/course_menu   </li>
<li>blocks_email_list</li>
</ul></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>The UCL hacks - changes to the code specific to UCL<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
* showing userid field in user lists (admin - browse list of users)</p>
<ul>
<li>calendar export - recent activity is hard coded to 90 days instead of 60</li>
<li>course edit form - a new course should default to being hidden from students</li>
<li>Turnitin integration</li>
<li>essay grading in lesson module - page sorts by surname (maybe get Steve to test)?</li>
<li>export and import help files need amending for certainty based marking - in /moodle/lang/en_utf8/help/quiz/</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the drop-downs for the UCL streaming service</li>
<li>Kosovo added to list of countries</li>
</ul></td>
<td><p>These are listed in Pete's test course.<br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>forum search <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Jess<br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>All resources <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
<br />
Popular activities:</p>
<ul>
<li>Assignments</li>
<li>Forums</li>
<li>Book</li>
<li>Choice</li>
<li>Wiki<br />
If there's time:</li>
<li>database</li>
<li>glossary</li>
<li>chat</li>
<li>lesson</li>
</ul></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Turnitin plugin <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
- would feel more comfortable if Steve could check this too given my relative inexperience with it!<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Steve/Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>New algebra question type <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


