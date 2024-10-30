# Assigning personal tutors

In order to automate the process of assigning personal tutors to students, we have installed the dbuserrel plugin. This plugin allows you to configure automatic relationships between users from an external database. The external database is moodle\_sits\_management\_2 and the student&gt;personal tutor data is in sf2\_v\_personaltutorrole. There is a cron job that is executed at 02.30 every day which runs the dbuserrel plugin:

    30 2 * * * su - ccspwww -c /opt/rh/php54/root/usr/bin/php -f 
    /data/apache/htdocs/moodle/enrol/dbuserrel/cli/sync.php > /var/log/enrol_dbuserrel/moodle-dbuserr

This assigns the personal tutors to students in moodle. When a personal tutor logs in to moodle they will see a My tutees block on their home and course page. This block will list the students that have been assigned to them.

Testing

Select a tutor from moodle\_sits\_management\_2.sf2\_v\_personaltutorrole

mysql&gt;select student\_firstname, student\_surname, tutor\_firstname, tutor\_surname from sf2\_v\_personaltutorrole;

Login to moodle as one of the tutors

Check that the My tutees block lists the students.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th> </th>
<th>server</th>
<th> </th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>log</td>
<td>/var/log/enrol_dbuserrel/moodle-dbuserr</td>
<td>moodle-admin</td>
<td> </td>
</tr>
<tr class="even">
<td>code</td>
<td>/enrol/dbuserrel</td>
<td>moodle-admin, moodle-d/e/f</td>
<td> </td>
</tr>
<tr class="odd">
<td>database and table</td>
<td>moodle_sits_management_2.sf2_v_personaltutorrole</td>
<td>moodle-db-a</td>
<td> </td>
</tr>
<tr class="even">
<td>cron</td>
<td><pre><code>30 2 * * * su - ccspwww -c /opt/rh/php54/root/usr/bin/php -f 
/data/apache/htdocs/moodle/enrol/dbuserrel/cli/sync.php &gt; /var/log/enrol_dbuserrel/moodle-dbuserr</code></pre></td>
<td>moodle-admin</td>
<td> </td>
</tr>
</tbody>
</table>

 

 

 

 
