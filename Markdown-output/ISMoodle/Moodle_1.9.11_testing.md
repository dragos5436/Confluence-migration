# Moodle 1.9.11 testing

# Moodle 1.9.11 testing

Moodle 1.9.11 is available here for testing: <http://v1911.moodle-pp.ucl.ac.uk>

Any CONFIRMED bugs in 1.9.11 at UCL should go in TRAC: <https://svn.ucl.ac.uk/projects/Moodle-195/report/6>

Check that they don't already exist in 1.9.9 though

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
<th><p>outcome/decision/notes<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>new features need testing (all listed on this page):<br />
</p>
<ul>
<li>text editor works in chrome <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Glossary import displays too many items in recent activity</li>
<li>Quiz overall feedback incorrect as based on rounded result</li>
</ul></td>
<td><p><a href="http://tracker.moodle.org/browse/MDL/fixforversion/10654" class="uri">http://tracker.moodle.org/browse/MDL/fixforversion/10654</a></p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>Chrome on PC and Mac now works with text editor - Safari not part of this fix so still not available<br />
<br />
<br />
</p></td>
</tr>
<tr class="even">
<td><p>Quizzes<br />
<br />
</p></td>
<td><p> </p></td>
<td><p>Test quizzes thoroughly. We don't want e-exams affected!<br />
</p></td>
<td><p><br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>manual backups? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>make sure you deselect the Turnitin assignments as these will fail to restore and will create a course with no blocks and blank resources<br />
</p></td>
<td><p> </p></td>
<td><p>Jess<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>previously detected issues w UCL Moodle <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><ul>
<li><a href="https://svn.ucl.ac.uk/projects/Moodle-195/ticket/29">#29 still an issue - 3 fonts</a></li>
<li><a href="https://svn.ucl.ac.uk/projects/Moodle-195/ticket/33">#33 - don't understand</a></li>
<li>#39 - still an issue (not critical)</li>
<li>#53 - still an issue (not critical)</li>
<li>#56 - fixed!</li>
<li>#57 - fixed!</li>
</ul></td>
<td><p>need to check all issues that have been fixed<br />
</p></td>
<td><p>Jess<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Non-standard plugins<br />
* mod/book - the book plugin<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * mod/certificate - custom certificate for Eastman dental (not needed)!<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * mod/flv - JW media player plugin <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * mod/questionnaire<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * mod/scheduler<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * mod/slideshow<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * blocks/course_menu <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> * blocks_email_list <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
LaTex not interpreted currently so all quizzes (and other pages employing maths markup will have errors)RD - fixed by Pete<br />
Jmol filter doesn't appear to be active - correction - working fine (pete)<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>The UCL hacks - changes to the code specific to UCL<br />
* showing userid field in user lists (admin - browse list of users)</p>
<ul>
<li>calendar export - recent activity is hard coded to 90 days instead of 60<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>course edit form - a new course should default to being hidden from students<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Turnitin integration - layout issues work fine - not setup for submission so this won't be tested <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>essay grading in lesson module - page sorts by surname - check Case of the month (id=5407)<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> - Steve</li>
<li>flv module - when adding/editing - click advanced - you'll see entries in the drop-downs for the UCL streaming service<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Kosovo added to list of countries<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>quiz question numbering wraps instead of sitting on 1 long line (test with 50+ questions with 1 per page) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
</ul></td>
<td><p>These are listed in Pete's test course.<br />
</p></td>
<td><p> </p></td>
<td><p>Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>forum search <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Jess<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>All resources<br />
<br />
Popular activities:</p>
<ul>
<li>Assignments<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Forums<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Choice<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>Wiki <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
If there's time:</li>
<li>database<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>glossary<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>chat<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
<li>lesson<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></li>
</ul></td>
<td><p>files sitting on different server so not available to test<br />
</p></td>
<td><p> </p></td>
<td><p>Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Turnitin plugin <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
- Steve can you please check the layout problem you experienced on your netbook is still fixed please! <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Steve/Jess</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>New algebra question type <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Imported an algebra question set from Chem160x - tested 3 questions basic algebra manipulations including log question - looked OK 'cept for lack of LaTex for correct display.<br />
</p></td>
<td><p> </p></td>
<td><p>Rod</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>LaTex (Tex filter) <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>not interpreted currently so all quizzes (and other pages employing maths markup will have errors)RD - PR fixed by changing TEX filter permissions<br />
</p></td>
<td><p> </p></td>
<td><p>Rod<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>JMol filter (3D molecular images) ok </p></td>
<td><p>Link to jmol file was pointing at wronng server - fixed by editing the offending page.<br />
</p></td>
<td><p> </p></td>
<td><p>Rod<br />
</p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>


