# Moodle 2.6 ucl hacks

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
<th><p>2.4 hack<br />
</p></th>
<th><p>Fixes ticket?<br />
</p></th>
<th><p>Script<br />
</p></th>
<th><p>How to test<br />
</p></th>
<th><p>Needs to be applied to 2.6?<br />
</p></th>
<th><p>Comments<br />
</p></th>
<th><p>Applied to moodle - 2.6.2?</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>When adding users to a group in a course that contains more than 100 users, the message displays 'Too many users to show'.</p></td>
<td><p>#3<br />
</p></td>
<td><p>moodle/user/selector/lib.php</p></td>
<td><p>To replicate the problem go to [​<a href="https://v243.moodle-dev.ucl.ac.uk/course/view.php?id=17523" class="uri">https://v243.moodle-dev.ucl.ac.uk/course/view.php?id=17523</a><br />
Select Settings&gt;Users&gt;Groups<br />
Select the group 'testa'<br />
Select Add/Remove users</p></td>
<td><p>No, because it is a configurable setting in <a href="https://v262.moodle-uat.ucl.ac.uk/admin/settings.php" class="uri">https://v262.moodle-uat.ucl.ac.uk/admin/settings.php</a></p></td>
<td><p>MB Tested. Fix needs to be implemented<br />
This hack is not working in 262 uat. The hack has been applied but MAX_USERS_PER_PAGE is not referred to in this version of lib.php  like it was in 247. After a bit of research, discovered that this hack is no longer necessary. The max number of users can be set in <a href="https://v262.moodle-uat.ucl.ac.uk/admin/settings.php" class="uri">https://v262.moodle-uat.ucl.ac.uk/admin/settings.php</a> in 'maximum users per page'. We need to remove this hack from /user/selector/lib.php<br />
<br />
23/06/14 IDW Can confirm that maxusersperpage setting works correctly.<br />
</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Course Menu Block - trimlength default being ignored when adding a new block</p></td>
<td><p>#21,#164</p></td>
<td><p>/blocks/course_menu/block_course_menu.php</p></td>
<td><p>Configure course to display using Topics format. Give sections names longer than 20 characters.<br />
</p></td>
<td><p>No, because this setting is now working<br />
</p></td>
<td><p>23/06/14 IDW Can confirm that default &quot;How many characters to trim to&quot; is being applied when adding a new block.<br />
</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Skip orphan assignments, while loading list of assignmentids that can be upgraded</p></td>
<td><p>#23</p></td>
<td><p>\admin\tool\assignmentupgrade\locallib.php</p></td>
<td><p>The assignments listed at line 184 in the ..assignmentupgrade\locallib.php script are still not upgraded. Click on Site Administration-&gt;Assignment Upgrade Helper. Click on 'List assignments that have not been upgraded' and press 'Upgrade all assignments' button. Press 'Continue' button.<br />
</p></td>
<td><p>Yes. This is custom fix to skip orphaned assignments specific to UCL. Hence needs to be included in 2.6 version.</p></td>
<td><p>23/06/14 IDW Can confirm that hard coded UCL courses are not upgraded.<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>change fontsize</p></td>
<td><p> </p></td>
<td><p>\blocks\dock.js</p></td>
<td><p> </p></td>
<td><p>Not sure. This is to fix issue within themes. So will have to check with standard themes if it needs to be fixed</p></td>
<td><p>MB - we wont be having docked blocks in 2.6<br />
No need to implement</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>change text-align</p></td>
<td><p> </p></td>
<td><p>\blocks\quiz_results\styles.css</p></td>
<td><p> </p></td>
<td><p>Yes. the text-align value is set to center. Change it to be set to left</p></td>
<td><p>MB Confirmed<br />
<br />
23/06/14 IDW This hack should be removed from core code and the required styling included in the theme. Note that this hack doesn't seem to do anything on 2.6.2<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>close the if statement after the return html statement</p></td>
<td><p>#97</p></td>
<td><p>\blocks\course_menu\renderer.php</p></td>
<td><p> </p></td>
<td><p>Yes. /blocks/course_menu/ is not part of core code. Need most recent version of block and changes to be applied</p></td>
<td><p>23/06/14 IDW It seems this hack is no longer included but the expanded tree seems to work in course id 5009 (as described in ticket #97).<br />
</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>hide hidden sections from students if the course settings say that</p></td>
<td><p>#212</p></td>
<td><p>\blocks\course_menu\block_course_menu.php</p></td>
<td><p>Hide a course section and ensure it is not listed in the course menu block if logged in as a student.<br />
</p></td>
<td><p>Yes. /blocks/course_menu/ is not part of core code. Need most recent version of block and changes to be applied</p></td>
<td><p>23/06/14 IDW Can confirm that hidden sections are not displayed in the course menu block.<br />
</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Add the target block instances defined in config.php. The block instances to be docked.</p></td>
<td><p> </p></td>
<td><p>\blocks\moodleblock.class.php</p></td>
<td><p> </p></td>
<td><p>Yes. We need 'navigation', 'settings' and 'help' blocks to be docked. That needs to be hardcoded within html_attributes() function. Note- also worth looking for an alternative rather than hacking the code.</p></td>
<td><p>MB - we wont be having docked blocks in 2.6<br />
No need to implement<br />
</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Replace timeend=90 days rather than 60 days. Specific to 'recentupcoming' case.</p></td>
<td><p> </p></td>
<td><p>\calendar\export_execute.php</p></td>
<td><p>Create a calendar event beyond 60 days from current date.<br />
</p></td>
<td><p>Yes. core code -&gt; $timeend = time() + 5184000; ucl hack code -&gt; $timeend = time() + 7776000;</p></td>
<td><p>23/06/14 IDW Confirmed this works as expected.<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>When select default clicked, only select student (==5) rather than all those with an archetype of student because we don't want to reset participant and non editing tutor.</p></td>
<td><p>#91</p></td>
<td><p>\course\reset_form.php</p></td>
<td><p> </p></td>
<td><p>Yes. Within load_defaults() function <br />
<br />
</p></td>
<td><p>MB Confirmed<br />
<br />
23/06/14 IDW Can confirm this works as expected.<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>check for duplicate course id (portico identifier)</p></td>
<td><p>#63</p></td>
<td><p>\course\edit_form.php</p></td>
<td><p> </p></td>
<td><p>Yes. Within validation()</p></td>
<td><p>MB - course ID must be unique by default moodle code, BUT it may need to be NOT unique depending on Moodle Portico integration. Wait on the integration project.<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Hack to add 2 lang strings</p></td>
<td><p> </p></td>
<td><p>\enrol\imsenterprise\lang\en\enrol_imsenterprise.php</p></td>
<td><p> </p></td>
<td><p>Yes.</p></td>
<td><p> </p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Fix to set user 'auth' field to be set to 'ldap' always</p></td>
<td><p>#47</p></td>
<td><p>\enrol\imsenterprise\lib.php</p></td>
<td><p> </p></td>
<td><p>Not sure. Check 1) check why is it failing on multi auth(moodle must support multiauth) 2) The code gets auth value from config- can we not set it up in config</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Hack to unenrol students enrolled via portico</p></td>
<td><p>#4</p></td>
<td><p>\enrol\imsenterprise\lib.php</p></td>
<td><p> </p></td>
<td><p>Yes. Two functions have been copied from enrol/manual/lib.php 1) get_user_enrolment_actions() 2) allow_unenrol()</p></td>
<td><p>MB - check when portico integration project work runs<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>New file access.php for managing permissions to the hacks made within \enrol\imsenterprise\lib.php</p></td>
<td><p> </p></td>
<td><p>\enrol\imsenterprise\db\access.php</p></td>
<td><p> </p></td>
<td><p>Yes. New file access.php to be added with new permissions.</p></td>
<td><p> </p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Comment out some extra fields within code</p></td>
<td><p>#9</p></td>
<td><p>\grade\report\grader\lib.php</p></td>
<td><p> </p></td>
<td><p>Yes. Comment out extra fields used from code within get_left_rows() function</p></td>
<td><p>25/06/14 IDW Confirmed hack is in place and no extra fields are being displayed in grader report.<br />
 <br />
MB Tested. Needs to be implemented</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Changes within lang scripts</p></td>
<td><p> </p></td>
<td><p>\lang\en\countries.php<br />
\lang\en\calendar.php<br />
</p></td>
<td><p> </p></td>
<td><p>Yes 1) Add new country 'Kosovo' which is not on list<br />
2) replace 'recentupcoming' string with right value &quot;Recent and next 90 days&quot;</p></td>
<td><p>25/06/14 IDW Calendar language string used correctly. Kosovo listed in Edit profile 'Select a country' drop down.<br />
<br />
<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Add an alert before tinymce confirmation pop-up appears</p></td>
<td><p> </p></td>
<td><p>\lib\editor\tinymce\tiny_mce\3.5.7b\plugins\advimage\js\image.js</p></td>
<td><p> </p></td>
<td><p>Yes. Add an extra js alert.</p></td>
<td><p>MB Tested - cant remember what original behaviour is. Is this related to ticket 10 null alt  <br />
[https://svn.ucl.ac.uk/projects/isd/moodle24/ticket/10<br />
] If it is, it needs implementing<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Custom changes to mass_enroll plugin within /local/ folder</p></td>
<td><p> </p></td>
<td><p>/local/mass_enroll/mass_enrol_form.php</p></td>
<td><p> </p></td>
<td><p>No. This is not a core code plugin. This seems to be a custom plugin developed by either UCL or downloaded externally.</p></td>
<td><p>MB - probably yes - check functionality when installing latest mass enrolment plugin. These are tweaks for default settings and language in file upload settings screen.<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Automatically search for Moodle users with middle initials</p></td>
<td><p>#53</p></td>
<td><p>\enrol\manual\yui\quickenrolment\quickenrolment.js</p></td>
<td><p> </p></td>
<td><p>Not sure. Check if it is possible to search for users with middlename in 2.6 version. If not apply fix within search:function()</p></td>
<td><p>25/06/14 IDW Confirm working in 'Enroll users' JavaScript popup dialog.<br />
<br />
MB Tested. Needs to be implemented<br />
</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Hack to cycle through all students</p></td>
<td><p> </p></td>
<td><p>\mod\lesson\essay.php<br />
</p></td>
<td><p> </p></td>
<td><p>Yes. The 2.6 version cycles through only student essays. Apply fix</p></td>
<td><p>25/06/14 IDW Seems to be working okay.</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Hack for submissions to be viewed just by admins</p></td>
<td><p> </p></td>
<td><p>\mod\assign\locallib.php<br />
</p></td>
<td><p> </p></td>
<td><p>No. I suppose new capability 'moodle/course:viewsuspendedusers' is implemented in v2.6. May not need the hack to check for siteadmin()</p></td>
<td><p>Haven't applied this hack. Test in moodle 2.6.</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Hack within hotquestion module</p></td>
<td><p>#81</p></td>
<td><p>\mod\hotquestion\view.php</p></td>
<td><p> </p></td>
<td><p>No. /mod/hotquestion is not a core moodle module. Get latest version of 'hotquestion' module and check if this is fixed</p></td>
<td><p>The fix is available win latest mod/hotquestion version- 2013081200</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Stop autopopulation of file author field in file picker</p></td>
<td><p>#38</p></td>
<td><p>\repository\filepicker.js</p></td>
<td><p> </p></td>
<td><p>Yes. Within create_upload_form() function. Set the value to null</p></td>
<td><p>24/06/14 IDW Confirmed this is working.</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Hacks to ucl.css</p></td>
<td><p>#69 #70</p></td>
<td><p>\theme\ucl\style\ucl.css</p></td>
<td><p> </p></td>
<td><p>Not sure. We are probably not using themes</p></td>
<td><p>24/06/14 IDW Issues described in #69 and #70 seem to be okay in new theme (tested on UAT).<br />
 <br />
MB - leave all out to start with and check when testing theme development.<br />
</p></td>
<td><p>No</p></td>
</tr>
</tbody>
</table>


