# Models

Each Model class represents a database table (or view ) within the following databases:

-    sisd (Portico)
-    moodle\_dev\_262\_sf2
-   moodle\_sits\_management\_dev2

The views in sisd  and tables in moodle\_dev\_262\_sf2 are strictly readonly;

The tables in moodle\_sits\_management\_dev2 are for inserting & deleting data & for generating the moodle xml output script.

Click [here](http://book.cakephp.org/2.0/en/models.html) formore informaation on models and data management

**Models & their database specficiations**

The following table lists all of the models & their relevant database tables

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Database table / view name</strong></p></td>
<td><p><strong>Model name</strong></p></td>
<td><p><strong>Database</strong></p></td>
<td><p><strong>Summary</strong></p></td>
</tr>
<tr class="even">
<td><p>UCL_SITS_MV_MOODLE_STUDENTS</p></td>
<td><p>PorticoStudent</p></td>
<td><p>sisd (Portico)</p></td>
<td><p>View of student records - READ ONLY VIEW<br />
</p></td>
</tr>
<tr class="odd">
<td><p>UCL_SITS_MV_MOODLE_MOD_REG</p></td>
<td><p>PorticoCourse</p></td>
<td><p>sisd (Portico)</p></td>
<td><p>View of student &amp; module registrations - READ ONLY VIEW</p></td>
</tr>
<tr class="even">
<td><p>assignments</p></td>
<td><p>Assignment</p></td>
<td><p>_dev2</p></td>
<td><p>Assignments table – includes PorticoStudent,Report , SytemSetting</p></td>
</tr>
<tr class="odd">
<td><p>Courses</p></td>
<td><p>Course</p></td>
<td><p>_dev2</p></td>
<td><p>Courses – includes PorticoStudent,Report , SytemSetting</p></td>
</tr>
<tr class="even">
<td><p>Departments</p></td>
<td><p>Department</p></td>
<td><p>_dev2</p></td>
<td><p>Departments – includes PorticoStudent,Report   tables</p></td>
</tr>
<tr class="odd">
<td><p>Facultys</p></td>
<td><p>Faculty</p></td>
<td><p>_dev2</p></td>
<td><p>Faculty – includes PorticoStudent,Report   tables</p></td>
</tr>
<tr class="even">
<td><p><br />
<br />
Memberships</p></td>
<td><p>Membership</p></td>
<td><p>_dev2</p></td>
<td><p>Memberships table – includes PorticoCourse,Report , SytemSetting</p></td>
</tr>
<tr class="odd">
<td><p>Modules</p></td>
<td><p>Module</p></td>
<td><p>_dev2</p></td>
<td><p>Modules table – includes PorticoCourse,Report , SytemSetting</p></td>
</tr>
<tr class="even">
<td><p>Programmes</p></td>
<td><p>Programme</p></td>
<td><p>_de2</p></td>
<td><p>Programmes table – includes PorticoStudent,Report</p></td>
</tr>
<tr class="odd">
<td><p>Reports</p></td>
<td><p>Report</p></td>
<td><p>_dev2</p></td>
<td><p>Reports table - includes PorticoStudent,Report</p></td>
</tr>
<tr class="even">
<td><p>Routes</p></td>
<td><p>Route</p></td>
<td><p>_dev2</p></td>
<td><p>Routes table</p></td>
</tr>
<tr class="odd">
<td><p>Students</p></td>
<td><p>Student</p></td>
<td><p>_dev2</p></td>
<td><p>Students – includes PorticoStudent,Report , SytemSetting</p></td>
</tr>
<tr class="even">
<td><p>moodle_course_and_department</p></td>
<td><p>MoodleCourseDepartment</p></td>
<td><p>_dev2</p></td>
<td><p>moodle_course_and_department table</p></td>
</tr>
<tr class="odd">
<td><p>moodle_course_and_faculty</p></td>
<td><p>MoodleCourseFaculty</p></td>
<td><p>_dev2</p></td>
<td><p>moodle_course_and_faculty</p></td>
</tr>
<tr class="even">
<td><p>moodle_course_and_module</p></td>
<td><p>MoodleCourseModule</p></td>
<td><p>_dev2</p></td>
<td><p>moodle_course_and_module- DO NOT TRUNCATE<br />
</p></td>
</tr>
<tr class="odd">
<td><p>moodle_course_and_programme</p></td>
<td><p>MoodleCourseProgramme</p></td>
<td><p>_dev2</p></td>
<td><p>moodle_course_and_programme table</p></td>
</tr>
<tr class="even">
<td><p>moodle_course_and_route</p></td>
<td><p>MoodleCourseRoute</p></td>
<td><p>_dev2</p></td>
<td><p>moodle_course_and_route table</p></td>
</tr>
<tr class="odd">
<td><p>mdl_course</p></td>
<td><p>Moodlecourse</p></td>
<td><p>_sf2</p></td>
<td><p>mdl_course - MOODLE DB - READ ONLY<br />
</p></td>
</tr>
<tr class="even">
<td><p>mdl_user</p></td>
<td><p>Moodleuser</p></td>
<td><p>_sf2</p></td>
<td><p>mdl_user - MOODLE DB - READ ONLY</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>mapping_codes<br />
</p></td>
<td><p>n/a - not used in sits_filter2<br />
</p></td>
<td><p>_dev2<br />
</p></td>
<td><p>original data set from mapping file data DO NOT DELETE / TRUNCATE / MODIFY</p></td>
</tr>
<tr class="even">
<td><p>system_settings<br />
</p></td>
<td><p>SystemSetting<br />
</p></td>
<td><p>_dev2<br />
</p></td>
<td><p>used in various parts of sits_filter_2<br />
</p></td>
</tr>
<tr class="odd">
<td><p>status_codes<br />
</p></td>
<td><p>n/a - not used in sits_filter2</p></td>
<td><p>_dev2</p></td>
<td><p>for handling student status data CAN BE MODIFIED<br />
</p></td>
</tr>
</tbody>
</table>


