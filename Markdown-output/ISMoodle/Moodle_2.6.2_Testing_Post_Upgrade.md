# Moodle 2.6.2 Testing Post Upgrade

Please log out of all other UCL Moodle's before you start testing!!

Test here <https://v262.moodle-uat.ucl.ac.uk> -    you can use the 'Moodle Testing' course.

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Issue</p></th>
<th><p>Details</p></th>
<th><p>Who?<br />
</p></th>
<th><p>Browser?<br />
IE/FF/Ch<br />
(incl. v.)<br />
</p></th>
<th><p>Done?<br />
 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></p></th>
<th><p>Outcome/Decision</p></th>
<th><p>Outcome/Decision from pre upgrade testing<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Essential Testing items, Pre and post upgrade</strong><br />
</p></td>
<td><p> </p></td>
<td><p><strong> -</strong></p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>Turnitin - see <a href="Tests-Turnitin">Tests Turnitin</a><br />
</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35</p></td>
<td><p>[ISLTSS:TII001T] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ISLTSS:TII002T] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ISLTSS:TII003T]<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  All works, including in IE11</p></td>
<td><p>With IE11 I could not open the Turnitin document viewer due to a 'certificate security' error. I believe this is related to it being on UAT and so see no reason why this should stop the upgrade. Noting it here so we can re-test in IE post upgrade. <br />
<br />
The was no new functionality and this will become relevant for testing with the Turntiin v2 upgrade.</p></td>
</tr>
<tr class="odd">
<td><p>Quizzes - see <a href="Tests-Quiz">Tests Quiz</a><br />
</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/Chv35<br />
</p></td>
<td><p>[QIZ001TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ002TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ003S] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ004S] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ005S] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ006S] N/A<br />
[QIZ007TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ008TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ090TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ010TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[QIZ011TS] N/A<br />
[QIZ012TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Due to new collapsed menus in settings we should consider having at least 1 option available for each section. Otherwise you expand the menu only to have to click 'Show more...' to actually get any options.</p></td>
</tr>
<tr class="even">
<td><p>Assignments - see <a href="Tests_-_Assignment">Tests Assignment</a><br />
</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>[ASS001S]  <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS002TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS003S] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[ASS004T]<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  (Red confirmation text is still weird)</p></td>
<td><p>It is a bit confusing that the message to say you have saved a grade change comes up in red, a colour usually used to indicate a problem. But I'm not sure if it is worth editing this.</p></td>
</tr>
<tr class="odd">
<td><p>Forums - see <a href="Tests-Forum">Tests Forum</a><br />
</p></td>
<td><p>Tested at:<br />
[https://moodle.ucl.ac.uk/mod/forum/view.php?f=60397<br />
]</p></td>
<td><p>RD</p></td>
<td><p><br />
</p></td>
<td><p>[FOR001TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[FOR002TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[FOR003TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[FOR006TS ]<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  <br />
[FOR007TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[FOR008TS] <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
[FOR009TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
[FOR011TS] <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p><br />
<br />
<br />
<br />
<br />
FOR008TS - Tracking dropdown has Optional or Off, cannot choose On.<br />
FOR009TS - Tutor can add and see ratings, student can only see rating for their own posts.<br />
FOR011TS - Hides form as required, but 'Sorry, this activity is currently hidden' message is huge &amp; grey.<br />
</p></td>
</tr>
<tr class="even">
<td><p>Manual backups &amp; restore<br />
Importing</p></td>
<td><p>Use  'Moodle Upgrade Testing'    to test</p></td>
<td><p>ZW<br />
Martin<br />
</p></td>
<td><p>IE11.0.9600.17126<br />
Other browsers<br />
<br />
</p></td>
<td><p>Ok but slow on Moodle Features Demo (10 mins ?)<br />
Backup timed out on BIOC1001/1009 after 90 minutes<br />
NB: Jo has a Known Issue of backing up and restoring large courses.  Fix published which requires a change in Core code.<br />
</p></td>
<td><p> </p></td>
<td><p>NOT OK - warning on backup and the restore failed. Probably due to mismatch between data and database version.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Bespoke UCL plugins:<br />
</p>
<ul>
<li>blocks/library_resources(RD)</li>
<li>blocks/common timetable (DS)</li>
<li>blocks/library_search (DS)<br />
Non-standard plugins  -</li>
<li>blocks/course_menu (DS)</li>
<li>blocks/quickmail (DS)</li>
<li>blocks/bulk enrolment(RD)</li>
</ul></td>
<td><p> </p></td>
<td><p>RD-2tests<br />
DS - 4test</p></td>
<td><p>DS- Chv35</p></td>
<td><p>blocks/library_resources <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/common timetable <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/course_menu <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/quickmail - 'delete email' icon missing <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /><br />
blocks/library_search <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
blocks/bulk enrolment<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>See Non core plugins table under<br />
[https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+2.6+-+Upgrade+Tasks<br />
]<br />
<br />
</p></td>
</tr>
<tr class="even">
<td><p>LaTex (Tex filter)  - still relevant?</p></td>
<td><p>Tested in forum post:<br />
[https://moodle.ucl.ac.uk/mod/forum/discuss.php?d=444033<br />
]</p></td>
<td><p>RD</p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>OK</p></td>
</tr>
<tr class="odd">
<td><p>JMol filter (3D molecular images)   - works if java is installed</p></td>
<td><p>Filters working OK:<br />
Tested in:<br />
[https://moodle.ucl.ac.uk/course/view.php?id=4083<br />
]</p></td>
<td><p>RD</p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
<td><p>Works fine in Chrome. Doesnt work in FF29, but then neither does the JMol on LIVE Moodle - probably my browser.<br />
</p></td>
</tr>
<tr class="even">
<td><p>Media filters mp3, flv</p></td>
<td><p>mp3 OK moodle player displayed in Topic area 1 label: <a href="https://moodle.ucl.ac.uk/course/view.php?id=27185" class="uri">https://moodle.ucl.ac.uk/course/view.php?id=27185</a><br />
MP4 OK - kicks in with QT plugin (Firefox 30.0)</p></td>
<td><p><strong> RD</strong></p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p><strong>Second priority pre-upgrade test items</strong></p></td>
<td><p>-</p></td>
<td><p><strong> -</strong></p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p><strong>Non core plugins</strong><br />
</p>
<ul>
<li>Questionnaire - not core</li>
<li>Scheduler - not core</li>
<li>Certificate - not core</li>
</ul></td>
<td><p> </p></td>
<td><p>MB<br />
</p></td>
<td><p><br />
</p></td>
<td><p>Certificate- DS <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Sheduler  MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
Questionnaire MB <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
<td><p>See table in<br />
[https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+2.6+-+Upgrade+Tasks<br />
]<br />
</p></td>
</tr>
<tr class="odd">
<td><p><strong>Core plugins</strong><br />
</p></td>
<td><p>For resources - may need to backup and restore files from live test course to be able test resources. There are no specific test schemas for these items, just go in, create one, and see if it works OK<br />
</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
</tr>
<tr class="even">
<td><p>Chat</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/Chv35<br />
</p></td>
<td><p>It works</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Choice</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>tested Allow Update, Limit number of responses, Time limit and Result views.<br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>OK - tested Allow Update, Limit number of responses, Time limit and Result views.<br />
</p></td>
</tr>
<tr class="even">
<td><p>Database</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>Tested adding basic fields, adding entries and commenting on entries. </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>Created select, image, file fields and created basic list and single view templates<br />
 added text and image and sound file. Set view restricted until one contribution made and tested as student - all  worked as expected.</p></td>
</tr>
<tr class="odd">
<td><p>Book</p></td>
<td><p> </p></td>
<td><p>JN</p></td>
<td><p>Chrome 35.0.1916.153 m</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  Tested creation, addition of chapters/subchapters, media embedding, document embeding, plain text<br />
</p></td>
<td><p> </p></td>
<td><p>Tested on own test course when updating MRC documentation - functionality as expected although the interface is more confusing than previous version being split between blocks.<br />
Tested Chapter/subchapter creation and import of HTML files.</p></td>
</tr>
<tr class="even">
<td><p>Folder</p></td>
<td><p> </p></td>
<td><p>ZW<br />
</p></td>
<td><p>FF30.0<br />
Chrome 35.0<br />
IE11.0.9600.17126<br />
</p></td>
<td><p>FF &amp; Chrome: Cannot drag &amp; drop a new zip file.  Can drag &amp; drop zip fiel which has been previosuly uploaded, even if the content has changed ...<br />
Very weird - drag and drop now seems to work fine on all browsers. Connected to weird .ini file ?<br />
</p></td>
<td><p> </p></td>
<td><p>Uploaded zip - unzipped- deleted original - preference set to display expanded tree by default - all worked fine.</p></td>
</tr>
<tr class="odd">
<td><p>Glossary</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>Created glossary, added entries (student &amp; staff), comment, edit, filter, print</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hot Question</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>Can choose whether or not to allow anonymous posting. With anon students can vote for own post. </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Works as expected - existing and new.</p></td>
</tr>
<tr class="odd">
<td><p>Lesson</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35</p></td>
<td><p>Tested a multiple choice question and content pages.</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Page</p></td>
<td><p> </p></td>
<td><p>ZW<br />
</p></td>
<td><p>FF30.0<br />
Chrome 35.0<br />
IE11.0.9600.17126<br />
</p></td>
<td><p>Added &amp; viewed<br />
Added &amp; viewed<br />
Added and viewed, no url problems.<br />
</p></td>
<td><p>OK<br />
OK<br />
OK<br />
</p></td>
<td><p>Adding a new Page from FF and IE works<br />
- but in IE it is not possible to convert text to url link.  Same on Page settings and Label setting, but URL resource is ok.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Scorm</p></td>
<td><p>Borrowed a scorm package from ELEC1003<br />
</p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p>Didn't display in IE11. Got example from <a href="http://www.centralquestion.com/Links/Samples.html" class="uri">http://www.centralquestion.com/Links/Samples.html</a></p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>Uploaded zip - seemed to be OK to view - no other functionality tested</p></td>
</tr>
<tr class="even">
<td><p>Survey</p></td>
<td><p> </p></td>
<td><p>DS</p></td>
<td><p>IE11/FF30.0/Chv35<br />
</p></td>
<td><p><br />
</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /><br />
</p></td>
<td><p>The surveys actually look quite useful in, for instance, gleaning the learning attitudes of a cohort of students (and how they might change) but the questions (non-editable) are aimed a professional distance learner - functionality-wise everything is OK</p></td>
</tr>
<tr class="odd">
<td><p>Wiki</p></td>
<td><p>Created at:<br />
[https://moodle.ucl.ac.uk/mod/wiki/view.php?pageid=17777&amp;group=0<br />
]</p></td>
<td><p>RD</p></td>
<td><p><br />
</p></td>
<td><p>checked page creation and collaborative editing by student - all checks out</p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Workshop</p></td>
<td><p>Created at:<br />
[https://moodle.ucl.ac.uk/mod/workshop/view.php?id=1624691<br />
]</p></td>
<td><p>SA</p></td>
<td><p>IE11/FF30.0/CHv35</p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td><p>checked adding extra aspects, random and manual allocation, multiple and different files (types). max files exceeded test, multiple files upload - drag and drop. assessment and re-assessment.<br />
<br />
</p></td>
</tr>
</tbody>
</table>


