# How to bulk remap roles in Moodle

LTSS received a request to reassign roles at course category level - changing departmental guests to non-editing teachers. This can't be done via the Moodle interface so it's necessary to run some SQL queries directly on the database. **In the end this wasn't carried out - but here are the notes anyway.**

The categories needing changing were as follows:

PHOL: <http://moodle.ucl.ac.uk/admin/roles/assign.php?contextid=153673>
PHAR: <http://moodle.ucl.ac.uk/admin/roles/assign.php?contextid=153665>
ANAT: <http://moodle.ucl.ac.uk/admin/roles/assign.php?contextid=153671>

#### Background reading - how the roles work

The mdl\_role\_assigments table is where a user id is given a role id for a specific context id. These reference the mdl\_role and mdl\_context tables.

The 'official' roles from the mdl\_role table (at the time of writing - oct 09) were as follows: 

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id<br />
</p></td>
<td><p>name<br />
</p></td>
<td><p>short name<br />
</p></td>
<td><p>desc<br />
</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Administrator</p></td>
<td><p>admin</p></td>
<td><p>Administrators can usually do anything on the site...</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Course creator</p></td>
<td><p>coursecreator</p></td>
<td><p>Course creators can create new courses and teach i...</p></td>
</tr>
<tr class="even">
<td><p>3</p></td>
<td><p>Tutor</p></td>
<td><p>editingteacher</p></td>
<td><p>Tutors can do anything within a course, including ...</p></td>
</tr>
<tr class="odd">
<td><p>4</p></td>
<td><p>Non-editing teacher</p></td>
<td><p>teacher</p></td>
<td><p>Non-editing teachers can teach in courses and grad...</p></td>
</tr>
<tr class="even">
<td><p>5</p></td>
<td><p>Student</p></td>
<td><p>student</p></td>
<td><p>Students generally have less privileges within a c...</p></td>
</tr>
<tr class="odd">
<td><p>6</p></td>
<td><p>Guest</p></td>
<td><p>guest</p></td>
<td><p>Guests have minimal privileges and usually can not...</p></td>
</tr>
<tr class="even">
<td><p>7</p></td>
<td><p>Course Administrator</p></td>
<td><p>courseadmin</p></td>
<td><p>Course Administrators can do anything within a cou...</p></td>
</tr>
<tr class="odd">
<td><p>22</p></td>
<td><p>Delegate</p></td>
<td><p>delegate</p></td>
<td><p>Role identical to student, but with alternative na...</p></td>
</tr>
<tr class="even">
<td><p>26</p></td>
<td><p>Participant</p></td>
<td><p>participant</p></td>
<td><p>A role similar to a student, but who are able to ...</p></td>
</tr>
<tr class="odd">
<td><p>37</p></td>
<td><p>Restricted Student</p></td>
<td><p>restricted_student</p></td>
<td><p>Duplicate of student role but cannot participate ...</p></td>
</tr>
<tr class="even">
<td><p>24</p></td>
<td><p>UCL Support Staff</p></td>
<td><p>supportstaff</p></td>
<td><p>Read-only access for UCL Support Staff such as Sub...</p></td>
</tr>
<tr class="odd">
<td><p>28</p></td>
<td><p>Authenticated user</p></td>
<td><p>user</p></td>
<td><p>All logged in users.</p></td>
</tr>
<tr class="even">
<td><p>35</p></td>
<td><p>Department Guest</p></td>
<td><p>deptguest</p></td>
<td><p>This account is a read-only student account for d...</p></td>
</tr>
</tbody>
</table>

The contexts are actually hard coded into one of the libraries -

// context definitions from accesslib.php
define('CONTEXT\_SYSTEM', 10);
define('CONTEXT\_USER', 30);
define('CONTEXT\_COURSECAT', 40);
define('CONTEXT\_COURSE', 50);
define('CONTEXT\_MODULE', 70);
define('CONTEXT\_BLOCK', 80);

The mdl\_context table is as follows:

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id<br />
</p></td>
<td><p>contextlevel<br />
</p></td>
<td><p>instanceid<br />
</p></td>
<td><p>path<br />
</p></td>
<td><p>depth<br />
</p></td>
</tr>
<tr class="even">
<td><p>153673<br />
</p></td>
<td><p>40</p></td>
<td><p>197<br />
</p></td>
<td><p>/1/496/137829/153673</p></td>
<td><p>4</p></td>
</tr>
</tbody>
</table>

The instanceid depends on the context level - so the example above shows a context level of 40 (coursecat), so the instanceid refers to a course category id - 197 (PHOL courses).

So - back to the task in hand, to list the people assigned as department guests to the PHOL course category, you need to specify role id 35 and context id 153673.

#### Step 1 - check and note the existing category role assignments

Before you make any changes, you can check the existing assignments like so (use phpmyadmin and take a printout of each): 

for PHOL

SELECT u.id, u.firstname, u.lastname, u.email, ra.hidden, ra.roleid FROM mdl\_role\_assignments ra JOIN mdl\_user u ON u.id = ra.userid JOIN mdl\_role r ON ra.roleid = r.id WHERE (ra.contextid = 153673 ) AND ra.roleid = 35 ORDER BY u.lastname ASC  

for PHAR

SELECT u.id, u.firstname, u.lastname, u.email, ra.hidden, ra.roleid FROM mdl\_role\_assignments ra JOIN mdl\_user u ON u.id = ra.userid JOIN mdl\_role r ON ra.roleid = r.id WHERE (ra.contextid = 153665 ) AND ra.roleid = 35 ORDER BY u.lastname ASC  

for ANAT

SELECT u.id, u.firstname, u.lastname, u.email, ra.hidden, ra.roleid FROM mdl\_role\_assignments ra JOIN mdl\_user u ON u.id = ra.userid JOIN mdl\_role r ON ra.roleid = r.id WHERE (ra.contextid = 153671 ) AND ra.roleid = 35 ORDER BY u.lastname ASC  

#### Step 2 - update course category role assignments

Easier - just do all three at once

**update mdl\_role\_assignments set  roleid=4 WHERE (contextid in (153671,153665,153673))  AND (roleid = 35)**

otherwise for each one you would need:

for PHOL

update mdl\_role\_assignments set  roleid=4 WHERE (contextid = 153673 AND roleid = 35)

for PHAR

update mdl\_role\_assignments set  roleid=4 WHERE (contextid = 153665 AND roleid = 35)

for ANAT

update mdl\_role\_assignments set  roleid=4 WHERE (contextid = 153671  AND roleid = 35)

Step 3 - check the end results
Use Moodle to check that that the course categories have non-editing teachers assigned to match the lists you printed earlier

#### Here is something random and useful

Show the dupes?

SELECT d.id, d.roleid, d.contextid,d.userid  FROM mdl\_role\_assignments m, mdl\_role\_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=81 and d.roleid in (22,26,37)
order by userid

## Tasks for Jan 2011 1- move the users from the delegate role (22) to the participant role (26)

to see how many there are

select count(\*) from mdl\_role\_assignments where roleid=22

to fix them, unfortunately you can't just do the following  as there will be some users who have both roles already

**update mdl\_role\_assignments set  roleid=26 WHERE roleid = 22**

hence some deduping is needed first

### Find out how many dupes there are -

select d.id from
mdl\_role\_assignments m, mdl\_role\_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=22 and d.roleid=26

If there are just one or two dupes - delete them by hand

eg - delete from mdl\_role\_assignments where id=609052

then do - update mdl\_role\_assignments set roleid=26 where roleid=22

-----

# 2 - Remap administrator to course admin role

LTSS - "As well as changing the delegate role to participants role could we also automate the changing of administrator roles to course administrators on all courses except where id =1 (as this is site wide admin access that the LTSS/ATS etc. require). I started to do this manually but there are a lot of them and the users will receive a welcome email when I do this, which is not ideal."

To see who might be affected:

SELECT u.id, u.firstname, u.lastname, u.email, ra.hidden, ra.roleid, r.name, c.id, c.instanceid, c.contextlevel
FROM mdl\_role\_assignments ra
JOIN mdl\_user u ON u.id = ra.userid
JOIN mdl\_role r ON ra.roleid = r.id
JOIN mdl\_context c ON ra.contextid = c.id
WHERE ra.roleid=1
and contextlevel&lt;&gt;50
ORDER BY u.lastname ASC , contextlevel ASC , instanceid ASC

To see the contexts:

SELECT count(u.id) as total,c.contextlevel
FROM mdl\_role\_assignments ra
JOIN mdl\_user u ON u.id = ra.userid
JOIN mdl\_role r ON ra.roleid = r.id
JOIN mdl\_context c ON ra.contextid = c.id
WHERE ra.roleid=1
group by contextlevel

#### Results - admin role assignments

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>total users</p></td>
<td><p>contextlevel</p></td>
<td><p>context</p></td>
<td><p>notes</p></td>
<td><p>LTSS verdict</p></td>
</tr>
<tr class="even">
<td><p>14</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
<td><p>LTSS/ATS admin users</p></td>
<td><p>KEEP!!<br />
</p></td>
</tr>
<tr class="odd">
<td><p>1</p></td>
<td><p>30</p></td>
<td><p>user<br />
</p></td>
<td><p>delete these?<br />
</p></td>
<td><p>deleted!<br />
</p></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>40</p></td>
<td><p>course category<br />
</p></td>
<td><p>delete these or remap?<br />
</p></td>
<td><p>remap<br />
</p></td>
</tr>
<tr class="odd">
<td><p>527</p></td>
<td><p>50</p></td>
<td><p>course level</p></td>
<td><p>remap to course admin</p></td>
<td><p>remap<br />
</p></td>
</tr>
<tr class="even">
<td><p>9</p></td>
<td><p>70</p></td>
<td><p>module<br />
</p></td>
<td><p>delete these? - These are all course admins/tutors anyway at course level<br />
</p></td>
<td><p>deleted!<br />
</p></td>
</tr>
<tr class="odd">
<td><p>9</p></td>
<td><p>80</p></td>
<td><p>block<br />
</p></td>
<td><p>delete these?<br />
</p></td>
<td><p>deleted!<br />
</p></td>
</tr>
</tbody>
</table>

This seems a bit weird. Some of these need deleting as opposed to remapping(?)

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>id</p></td>
<td><p>user email</p></td>
<td><p>contextlevel</p></td>
<td><p>context</p></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>moodle-support@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>66067</p></td>
<td><p>p.roberts@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>23962</p></td>
<td><p>jo.matthews@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>53879</p></td>
<td><p>ccspmdl@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>66393</p></td>
<td><p>c.p.l.young@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>10335</p></td>
<td><p>a.eyt-dessus@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>61251</p></td>
<td><p>r.digges@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>174</p></td>
<td><p>rachel.f.cooper@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>40119</p></td>
<td><p>t.gagen@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>64297</p></td>
<td><p>m.jenner@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>176</p></td>
<td><p>f.strawbridge@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>65312</p></td>
<td><p>s.rowett@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>99809</p></td>
<td><p>m.tedla@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="odd">
<td><p>58813</p></td>
<td><p>j.gramp@ucl.ac.uk</p></td>
<td><p>10</p></td>
<td><p>system</p></td>
</tr>
<tr class="even">
<td><p>9945</p></td>
<td><p>s.vanpraag@ucl.ac.uk</p></td>
<td><p>30</p></td>
<td><p>user</p></td>
</tr>
<tr class="odd">
<td><p>7453</p></td>
<td><p>m.darlison@ucl.ac.uk</p></td>
<td><p>40</p></td>
<td><p>course category</p></td>
</tr>
<tr class="even">
<td><p>222</p></td>
<td><p>w.coppola@ucl.ac.uk</p></td>
<td><p>40</p></td>
<td><p>course category</p></td>
</tr>
<tr class="odd">
<td><p>7048</p></td>
<td><p>k.howe@ucl.ac.uk</p></td>
<td><p>40</p></td>
<td><p>course category</p></td>
</tr>
<tr class="even">
<td><p>60471</p></td>
<td><p>ccaajgr@ucl.ac.uk</p></td>
<td><p>40</p></td>
<td><p>course category</p></td>
</tr>
<tr class="odd">
<td><p>1297</p></td>
<td><p>m.faigenblum@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="even">
<td><p>68691</p></td>
<td><p>ucacsw0@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="odd">
<td><p>9149</p></td>
<td><p>m.ogbogbo@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="even">
<td><p>6343</p></td>
<td><p>uczidbu@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="odd">
<td><p>24277</p></td>
<td><p>e.sivyer@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="even">
<td><p>64085</p></td>
<td><p>elizabeth.hancock@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="odd">
<td><p>88650</p></td>
<td><p>ciaran.moynihan.09@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="even">
<td><p>63893</p></td>
<td><p>maria.blanco@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="odd">
<td><p>9941</p></td>
<td><p>s.hassard@ucl.ac.uk</p></td>
<td><p>70</p></td>
<td><p>module</p></td>
</tr>
<tr class="even">
<td><p>40097</p></td>
<td><p>stephen.thomson@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="odd">
<td><p>35017</p></td>
<td><p>a.bhattacharya@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="even">
<td><p>5230</p></td>
<td><p>e.nivorozhkin@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="odd">
<td><p>53035</p></td>
<td><p>r.armbruster@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="even">
<td><p>9771</p></td>
<td><p>v.banks@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="odd">
<td><p>35733</p></td>
<td><p>ruth.austin@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="even">
<td><p>9771</p></td>
<td><p>v.banks@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="odd">
<td><p>55029</p></td>
<td><p>a.kosinski@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
<tr class="even">
<td><p>7951</p></td>
<td><p>r.sparks@ucl.ac.uk</p></td>
<td><p>80</p></td>
<td><p>block</p></td>
</tr>
</tbody>
</table>


