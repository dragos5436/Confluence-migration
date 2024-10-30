# Hacks for 2.8

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
<th><p>2.6 hack</p></th>
<th><p>Fixes ticket?</p></th>
<th><p>Script</p></th>
<th><p>How to test</p></th>
<th><p>Needs to be applied to 2.8?</p></th>
<th><p>Comments</p></th>
<th>Applied to moodle - 2.8.6?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>lesson activity - Full editor not appearing for answer section when creating questions</td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/24" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle26/ticket/24</a></td>
<td><p>mod/lesson/locallib.php</p>
<p> </p></td>
<td><p>go to /mod/lesson/edit.php?id=1244685</p>
<p>Add a question page -&gt;use the default multiple choice type and add page -&gt; in the editors that appear in the subsequent page you'll see they default to Moodle-autoformat as opposed to HTML this can't be changed except with the workaround(s) suggested in the ticket at Moodle.org.</p></td>
<td>No because its fixed apparently according to <a href="https://tracker.moodle.org/browse/MDL-32870" class="uri">https://tracker.moodle.org/browse/MDL-32870</a></td>
<td><p>Get Rod to test as he originally raised the issue.</p>
<p>Rod Tested, looks good <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td>No</td>
</tr>
<tr class="even">
<td>Certificate - install images for seal and signature</td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/13" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/13</a></td>
<td>copy additional images to /mod/calendar/certificate/pix</td>
<td><p>Add a new certificate.</p>
<p>The dropdown box for 'Signature Image' and 'Seal or Logo Image' should contain additional images prefixed</p></td>
<td>yes</td>
<td><p>Rod Tested, looks good <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p>
<p> </p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="odd">
<td>add Kosovo to countries list</td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/7" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/7</a></td>
<td>\lang\ne\countries.php</td>
<td>go to /user/editadvanced.php?id=23962&amp;course=1</td>
<td>Yes</td>
<td><p>MB - Kosovo is there on 2.8.5 dev</p>
<p>Not sure if that is 'hack applied' or core code</p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="even">
<td>sort students alphabetically in Grade Essays option in Lesson</td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/11" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/11</a></td>
<td>\mod\lesson\essay.php</td>
<td>goto mod/lesson/essay.php?id=323750 and make sure students are sorted alphabeticall</td>
<td>Yes</td>
<td>Rod Tested, looks good <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></td>
<td>MB, not copied over.</td>
</tr>
<tr class="odd">
<td><p>change text-align</p></td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/235" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle2/ticket/235</a></td>
<td><p>\blocks\quiz_results\styles.css</p></td>
<td>don't know</td>
<td><p>Not sure</p></td>
<td><p>MB - looks fine in 2.8.5 dev, so not needed.</p></td>
<td>No</td>
</tr>
<tr class="even">
<td><p>Course menu sub-categories not holding</p></td>
<td><br />

<p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/97" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/97</a></p></td>
<td><p>\blocks\course_menu\renderer.php</p></td>
<td>Configure course menu block. Unhide expandable tree. Go back to the course, turn editing on, edit the course menu block and re-arrange items. Log in as a student, Log back in as admin and the course menu reverts back to the default chapter grouping.</td>
<td><p>Not sure</p></td>
<td>When a topic is hidden the student view displays the list wrong. Moodle tries to compensate for the hidden topic by moving up one from the sub-category below. Please ask Domi if this is unclear.</td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>hide hidden sections from students if the course settings say that</p></td>
<td><p>#212</p></td>
<td><p>\blocks\course_menu\block_course_menu.php</p></td>
<td><p>Hide a course section and ensure it is not listed in the course menu block if logged in as a student.</p></td>
<td><p>Yes. /blocks/course_menu/ is not part of core code. Need most recent version of block and changes to be applied</p></td>
<td><p>See above.</p></td>
<td>No</td>
</tr>
<tr class="even">
<td><p>change the calender export from 60 to 90 days</p></td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/6" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/6</a></td>
<td><p>\calendar\export_execute.php</p></td>
<td><p>Create a calendar event beyond 60 days from current date and export the calendar</p></td>
<td><p>Yes</p></td>
<td><p>MB - Not working on 2.8.5 dev. Either include hack to extend export to 90 days, or change text to say '60 days' as export works for events up to 60 days in future.</p></td>
<td>MB good post upgrade - export extended to 90 days</td>
</tr>
<tr class="odd">
<td><p>Course reset - if the 'select default' button is clicked, only student must be selected and not participant or UCL support staff.</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/91" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/91</a></p></td>
<td><p>\course\reset_form.php</p></td>
<td>Select 'reset' under course administration. At the bottom of the page click 'select defaults'. In the drop down list. Expand the 'Roles' section and in the dropdown box for 'Unenrol users' make sure only student is selected</td>
<td><p>Yes</p></td>
<td><p>MB - working OK in 2.8.5 dev</p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="even">
<td><p>check for duplicate course id (portico identifier)</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/63" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/63</a></p></td>
<td><p>\course\edit_form.php</p></td>
<td><p>Go to /course/edit.php?id=22269</p>
<p>in the Portico identifier field, enter an existing porico id. eg BENG1001</p>
<p>The following error should be displayed:</p>
<p>Portico identifier is already used by another course (BENG1001: Introduction to Biochemical Engineering)</p>
<p> </p></td>
<td><p>Yes.</p></td>
<td><p>Rod Tested, looks good <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="odd">
<td><p>Hack to add 2 lang strings</p></td>
<td> </td>
<td><p>\enrol\imsenterprise\lang\en\enrol_imsenterprise.php</p></td>
<td>No testing req as not implemented</td>
<td><p>No. See #4</p></td>
<td> </td>
<td>No</td>
</tr>
<tr class="even">
<td><p>Fix to set user 'auth' field to be set to 'ldap' always</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/47" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/47</a></p></td>
<td><p>\enrol\imsenterprise\lib.php</p></td>
<td>Can't be tested from the moodle interface</td>
<td><p>Yes</p></td>
<td> </td>
<td>Yes</td>
</tr>
<tr class="odd">
<td><p>Hack to unenrol students enrolled via portico</p></td>
<td><p>#4</p></td>
<td><p>\enrol\imsenterprise\lib.php</p></td>
<td> </td>
<td><p>No because students should be unenroled in Portico which will then be indicated in the xml file and the s</p></td>
<td><p> </p></td>
<td>No</td>
</tr>
<tr class="even">
<td><p>New file access.php for managing permissions to the hacks made within \enrol\imsenterprise\lib.php</p></td>
<td> </td>
<td><p>\enrol\imsenterprise\db\access.php</p></td>
<td> </td>
<td><p>No. See #4</p></td>
<td> </td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>Grader report - hide email and department fields</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/9" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/9</a></p></td>
<td><p>\grade\report\grader\lib.php</p></td>
<td><p>go to grade/report/grader/index.php?id=12731. Make sure email and department are not displayed</p>
<p> </p></td>
<td><p>No. This hack has not been implemented for 2.8 because it has not been included as a hack since v 2.6.5 so I'm not sure if it's still required. See <a href="https://docs.moodle.org/28/en/Grades_FAQ#How_can_I_remove_user_ID_numbers_and.2For_email_addresses_from_the_grader_report">instructions</a>for hiding email addresses if this is still required so that we can avoid implementing a hack.</p></td>
<td><p> </p></td>
<td>No</td>
</tr>
<tr class="even">
<td><p>When adding an image, force user to enter alternative text</p></td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/10" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/10</a></td>
<td><p>\lib\editor\tinymce\tiny_mce\3.5.7b\plugins\advimage\js\image.js</p></td>
<td><p>Turn editing on.</p>
<p>Create a label.</p>
<p>Upload an image</p></td>
<td><p>No because now when you upload an image and try to save it, unless you tick the 'Description not necessary' field, you are prompted to enter a description for the image</p></td>
<td><p> </p></td>
<td>No</td>
</tr>
<tr class="odd">
<td><p>Custom changes to mass_enroll plugin within /local/ folder</p></td>
<td> </td>
<td><p>/local/mass_enroll/mass_enrol_form.php</p>
<p>This is the bulk enrolement block. hack is to set the default opts for the import process.</p></td>
<td> </td>
<td><p>No. This is not a core code plugin. This seems to be a custom plugin developed by either UCL or downloaded externally.</p></td>
<td><p>MB - probably yes - check functionality when installing latest mass enrolment plugin. These are tweaks for default settings and language in file upload settings screen.</p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="even">
<td><p>Automatically search for Moodle users with middle initials</p></td>
<td><p><a href="https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/53" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/53</a></p></td>
<td><p>\enrol\manual\yui\quickenrolment\quickenrolment.js</p></td>
<td>Go to enrol/users.php?id=13091. Select enroll users. Search for a user with a middle initial. Ensure that user is displayed</td>
<td><p>Yes</p></td>
<td><p> <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> MB tested in 2.8.6 Working fine</p></td>
<td>MB good post upgrade</td>
</tr>
<tr class="odd">
<td><p>Hack to cycle through all students</p></td>
<td> </td>
<td><p>\mod\lesson\essay.php</p></td>
<td> </td>
<td><p>Yes. The 2.6 version cycles through only student essays. Apply fix</p></td>
<td><p> </p></td>
<td>Hard to test - no tic number</td>
</tr>
<tr class="even">
<td><p>Hack for submissions to be viewed just by admins</p></td>
<td> </td>
<td><p>\mod\assign\locallib.php</p></td>
<td> </td>
<td><p>No. I suppose new capability 'moodle/course:viewsuspendedusers' is implemented in v2.6. May not need the hack to check for siteadmin()</p></td>
<td><p>Haven't applied this hack. Test in moodle 2.6.</p></td>
<td>Hard to test - no tic number</td>
</tr>
<tr class="odd">
<td><p>Hack within hotquestion module</p></td>
<td><p>#81</p></td>
<td><p>\mod\hotquestion\view.php</p></td>
<td> </td>
<td><p>No. /mod/hotquestion is not a core moodle module. Get latest version of 'hotquestion' module and check if this is fixed</p></td>
<td><p>The fix is available with latest mod/hotquestion version- 2013081200</p></td>
<td>No</td>
</tr>
<tr class="even">
<td><p>Stop autopopulation of file author field in file picker</p></td>
<td><p>#38</p></td>
<td><p>\repository\filepicker.js</p></td>
<td><p>Add activity or resourse&gt;File</p>
<p>upload a file. Ensure that the author field is not populated</p></td>
<td><p>Yes</p></td>
<td><p>Rod Tested, looks good <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /></p></td>
<td>MB, not copied over.</td>
</tr>
</tbody>
</table>


