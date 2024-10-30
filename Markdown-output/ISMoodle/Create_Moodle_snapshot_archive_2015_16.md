# Create Moodle snapshot/archive 2015/16

We follow the steps in the following [page](Archive_and_year-end_process_-_actions_required).

We use [moosh](http://moosh-online.com/) to prepare the Moodle snapshot.

If moosh is not install you could refer to their website or use the section in the appendices (see below).

 

Create two new roles - student (read only) and tutor (read only)

**BEST APPROACH**

EXPORT THE ROLES FROM THE PREVIOUS MOODLE-SNAPSHOT; then import them in the new snapshot.

This approach allow to keep the fine tuning made to the roles.

If the new snapshot introduces capabilities that were not present in the previous one; adjust the new capabilities as needed. 

**This approach is deprecated ** (skip to next section)****

-   This could be achieved by copying a course from one archive to the other with a test account enrolled in both roles as this duplicates the roles inside the new instance. Adjust new capabilities introduced as needed.

**This approach is deprecated (skip to next section)**

The following should create two readonly roles and save the IDs in variables

You will need [capabilities\_student\_readonly](attachments/62785118/62785161.txt) and [capabilities\_staff\_readonly](attachments/62785118/62785162.txt)

 

On [moodle-snapshot.ucl.ac.uk](http://moodle-snapshot.ucl.ac.uk)

 

``` bash
cd path_to_moodle

#Student read only role
readonlystudentID=`moosh role-create -d "read only student" -a student -n "Student readonly" readonlystudent`

while read capability; do
    moosh role-update-capability readonlystudent $capability prohibit 1
done <$HOME/capabilities_student_readonly.txt

#Staff read only role
readonlystaffID=`moosh role-create -d "read only staff" -a editingteacher -n "Staff readonly" readonlystaff`

while read capability; do
    moosh role-update-capability readonlystaff $capability prohibit 1
done <$HOME/capabilities_staff_readonly.txt

echo "ID of Student readonly role: $readonlystudentID"
echo "ID of Staff readonly role: $readonlystaffID"
echo ""
echo "If you haven't seen error messages, it means all is well."
echo ""
echo "<<<THE END>>>"
```

 

### Re-assign staff and students to the new roles

We need to identify the id's of the roles that need to be updated.

This can be done by going to the **users&gt;permissions&gt;define roles**. Hover over the roles to see the id

**Or executing the following**:

``` bash
moosh sql-run "select id,name,shortname from {role}"
```

 

OR (**don't do both)**

``` java
mysql> select id,name,shortname from mdl_role;
---------------+----------+
| id  | name                       | shortname        |
---------------+----------+
|   1 | Manager                    | manager          |
|   2 | Course creator             | coursecreator    |
|   3 | Tutor                      | editingteacher   |
|   4 | Non-editing Tutor          | teacher          |
|   5 | Student                    | student          |
|   6 | Guest                      | guest            |
|   7 | Course Administrator       | courseadmin      |
|  24 | UCL Support Staff          | supportstaff     |
|  26 | Participant                | participant      |
|  28 | Authenticated user         | user             |
|  64 | Enrolment keyholder        | keyholder        |
|  90 | Service Desk Administrator | servicedeskadmin |
|  96 | CALT                       | calt             |
|  99 | Sub-Administrator          | subadmin         |
| 140 | Student (read-only)        | studentread-only |
| 117 | Tutor (read-only)          | tutorread-only   |
---------------+----------+
```

From the output identify the 'Student role' ID, 'participant role' ID and 'Student read only role' ID.

**(For example roleid = 5,  roleid = 26 and roleid = 140)**

## Map students and staff to the student read only and the staff read only roles

In the [UCL wiki](Archive_and_year-end_process_-_actions_required) we do a role mapping; see section *Map students to the read only student role*

We normally would have used the following command. But here **DO NOT** use it

~~moosh sql-run "update {role\_assignments} set roleid=$readonlystudentID where roleid = $student\_role\_ID"~~

 

We are going to test a [different approach](https://moodle.org/mod/forum/discuss.php?d=88427#p391965); which is also easier to reverse. If it fails, we will go back to the 'traditional' way.

### Map students to the student read only role

The SQL we are going to use is as follow. I'll update the page so that it can be used with moosh sql-run "..."

For the time being use your favourite SQL editor

Typing the following will get you into the database

    moosh sql-cli

 

``` sql
--
--  Assign every student to the read-only role (in addition to their other roles).
--
-- create temporary table
drop table if exists temp_role_assignments;
create table temp_role_assignments like mdl_role_assignments;
-- insert targeted records into temporary table
INSERT temp_role_assignments
select * from
mdl_role_assignments
where
roleid = 5; -- student ID is 5
-- change all role IDs to 'read-only student'
update temp_role_assignments set roleid = 140; -- read-only student role ID is 140

-- insert records from temporary table into 'role assignments'
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder) 
SELECT roleid, contextid, userid, timemodified, modifierid, component, itemid, sortorder FROM temp_role_assignments;

-- To reverse read-only:
-- delete from mdl_role_assignments where roleid = 140;
```

 

### Map participants (role ID 26) to read-only student (role ID 140)

In the mdl\_role\_assignments table, the contextid, roleid and userid are used to define a unique index.

If we were to update the roleid to 140 where the role id was 26, the query would fail because it would result in duplicate fields in the unique index.

Therefore we need identify those records that would result in duplicates being created.

A temporary table is created containing a list of those records.

The update query is run and records in the temporary table are skipped.

 

``` sql
-- empty temporary table before next query
delete from temp_role_assignments;
 
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder 
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=140 and d.roleid in (26);
 
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder) 
SELECT 140, contextid, userid, timemodified, modifierid, component, itemid, sortorder 
FROM mdl_role_assignments ra
WHERE ra.roleid = 26 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
 
```

 

Staff will be done about 4 weeks later than students; therefore we delete temporary table

``` sql
drop table if exists temp_role_assignments;
```

 

 

### Map staff to the staff read-only role

*Map tutor (role id = 3) to read only staff role*

 

Note: the SQL script run to apply this role to tutor and admin roles is done 4 weeks after publishing of the archive to allow tutors a grace period in which they may hide materials they don't want to be visible in the archive.

``` sql
-- create temporary table
drop table if exists temp_role_assignments;
create table temp_role_assignments like mdl_role_assignments;


-- insert targeted records into temporary table
INSERT temp_role_assignments
select * from
mdl_role_assignments
where
roleid = 3; -- tutor role ID is 3

-- change all role IDs in temporary table to 142
update temp_role_assignments set roleid = 142; -- staff read-only role ID is 142

-- insert record from temporary table into 'role assignments' table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder) 
SELECT roleid, contextid, userid, timemodified, modifierid, component, itemid, sortorder FROM temp_role_assignments;
 
```

 

#### Map non editing tutor role (roleid = 4) to read only staff role (roleid = 142)

``` sql
-- empty temporary table before next query
delete from temp_role_assignments;
 
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=142 and d.roleid in (4);
 
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
SELECT 142, contextid, userid, timemodified, modifierid, component, itemid, sortorder
FROM mdl_role_assignments ra
WHERE ra.roleid = 4 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
```

 

#### Map course creator role (roleid=2) to read only staff role (roleid=142)

``` sql
 -- empty temporary table before next query
delete from temp_role_assignments;
  
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=142 and d.roleid in (2);
  
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
SELECT 142, contextid, userid, timemodified, modifierid, component, itemid, sortorder
FROM mdl_role_assignments ra
WHERE ra.roleid = 2 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
```

 

#### Map course administrator (roleid=7) to staff read only role (roleid=142)

``` sql
 -- empty temporary table before next query
delete from temp_role_assignments;
  
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=142 and d.roleid in (7);
  
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
SELECT 142, contextid, userid, timemodified, modifierid, component, itemid, sortorder
FROM mdl_role_assignments ra
WHERE ra.roleid = 7 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
```

 

#### Map UCL support staff (roleid=24) to staff read only role

``` sql
 -- empty temporary table before next query
delete from temp_role_assignments;
  
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=142 and d.roleid in (24);
  
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
SELECT 142, contextid, userid, timemodified, modifierid, component, itemid, sortorder
FROM mdl_role_assignments ra
WHERE ra.roleid = 24 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
```

 

#### Map enrolement keyholder (roleid=64) to staff read only role

``` sql
 -- empty temporary table before next query
delete from temp_role_assignments;
  
-- Identify what would end up being duplicates
INSERT temp_role_assignments (id,roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
select DISTINCT d.id, d.roleid, d.contextid, d.userid, d.timemodified, d.modifierid, d.component, d.itemid, d.sortorder
from
mdl_role_assignments m, mdl_role_assignments d
where
m.contextid=d.contextid and m.userid=d.userid
and m.roleid=142 and d.roleid in (64);
  
-- insert records into 'role assignment', except those who are in temporary table
INSERT mdl_role_assignments (roleid,contextid,userid,timemodified,modifierid,component,itemid,sortorder)
SELECT 142, contextid, userid, timemodified, modifierid, component, itemid, sortorder
FROM mdl_role_assignments ra
WHERE ra.roleid = 64 AND
ra.id NOT IN
(SELECT id from temp_role_assignments);
```

 

#### Map non site admin to staff read only:

#### NOT USUALLY REQUIRED.

 

 

**Delete temporary table**

``` sql
drop table if exists temp_role_assignments;
```

 

### Changes to site settings:

##### Remove guest login button - settings-&gt;siteadmin-&gt;plugins-&gt;authentication-&gt;manage auth-&gt;login button=hide

    moosh config-set guestloginbutton 0

 

##### Security &gt; Site policies &gt; Site policy URL = http://moodle-archive.ucl.ac.uk/yy-yy/policy/about\_the\_archive.html (update yy with 10-11, 11-12 etc)

    moosh config-set sitepolicy https://moodle.ucl.ac.uk/pluginfile.php/1/theme_ucl/usepolicy/1442233325/UCL_Moodle_usage_policy.html

    moosh config-set sitepolicyguest https://moodle.ucl.ac.uk/pluginfile.php/1/theme_ucl/usepolicy/1442233325/UCL_Moodle_usage_policy.html

 

##### Grades &gt; General Settings &gt; Graded roles - tick the box for Student (read-only) - once the role is created.

    moosh config-set gradebookroles 5,26,$readonlystudentID

For example   moosh config-set gradebookroles 5,26,140

 

##### Edit Topic 0 of the homepage to add a notice about the archive, a news/messages section and the FAQ Glossary activity (adding questions as needed)

I think will have to be done manually

I've tried things like (course with ID '1' should be the front page): moosh activity-add --name "FAQ/glossary Moodle archive" --section 0 glossary 1

and moosh activity-add --name "FAQ/glossary Moodle archive" glossary 1

moosh return the activity ID. However when I try to delete the activity moosh activity-delete $ID, moosh says the activity does not exitst.

 

##### Remove the news section - how?

To be done manually

 

##### Add a Glossary to the homepage, exprt the entries from the previous archive, import the XML into this Glossary and edit any questions/answers as necessary.

    To be done manually

 

##### Change cookie prefix to prevent session clashes (as more than one moodle instance on same server) : admin-&gt;server-&gt;session handling

    moosh config-set sessioncookie uclmoodle2015_16

 

##### Set all instances of **http://moodle.ucl.ac.uk/\*** **to \*\*\*\***http://moodle-archive.ucl.ac.uk/yy-yy\*\* **(where yy-yy is the academic year, like 10-11) - this means all the hard set links to files and resources are replaced with the archive location and not the live**   - is this still needed?

Mooddle 2.8 hasn't got a CLI search and replace (available from version 2.9), one has to use the web interface.

Once the snapshot/archive is up and running, one can use the moodle search and replace tool http://yourmoodlesite.org/admin/tool/replace/index.php

 

**Alternatively**

You could use what is often used on WordPress: [Search and Replace for WordPress Databases script](https://github.com/interconnectit/Search-Replace-DB).

It should work with any database. I've never tried it on Moodle but I intend to.

 

##### **mdl\_course** = set all guest access to 0 and all enrolment options to 0 – this disables all enrolments, guest functionality and student course ‘browsing’ - covered elsewhere?

    moosh config-set logguests 0
    moosh config-set allowguestmymoodle 0
    moosh config-set autologinguests 0 #already set
    moosh config-set enrol_plugins_enabled ""

    moosh config-set allowunenroll 0
    moosh config-set allow_mass_enroll_feature 0 #just in case

 

### Other configuration changes

##### 1. Add the snapshot banner/background image

Still to come

 

##### 2. Modify local\_settings.php:

###### a. Change dbhost to 'moodle-snapshot.ucl.ac.uk'

    sed -i s/${OLD_HOST}/${NEW_HOST}/g local_settings.php

 

###### b. Change dbname to 'moodle\_archive\_1516'

    sed -i s/${OLD_DATABASE}/${NEW_DATABASE}/g local_settings.php

 

###### c. Change wwwroot to 'https://moodle-snapshot.ucl.ac.uk/15-16'

    sed -i s/${OLD_WWWROOT}/${NEW_WWWROOT}/g local_settings.php

 

###### d. Change dirroot to '/data/apache/htdocs/moodle'

    sed -i s/${OLD_DIRROOT}/${NEW_DIRROOT}/g local_settings.php

 

###### e. Change dataroot to '/data/moodle'

    sed -i s/${OLD_DATAROOT}/${NEW_DATAROOT}/g local_settings.php

 

##### 3. Make other changes as required, especially noemailever = true.

    moosh config-set noemailever 1

 

##### 4. Disable memcached sessions.

Comment out all the memcached stuff in both local\_settings.php and config.php

 

### Appendices

### Install moosh

The following as been done on moodle-dev. Change according to your environment.

We install moosh in the 'bin' directory of the 'ccspmdd' user. The 'bin' directory is in the $PATH of ccspmdd ($HOME/bin).

Before we can install moosh, we isnstall composer.

What we have done is taken straight from the [moosh](http://moosh-online.com/)and [composer](https://getcomposer.org/)websites. Visit those websites for more details.

``` bash
#install composer
cd
 
## create directory 'bin' if it does not exist
[ ! -d bin ] && mkdir bin
 

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar bin/

cd bin
#create a symlink
ln -s ./composer.phar composer
 
#install moosh
wget -c https://github.com/tmuras/moosh/archive/master.zip
unzip master.zip
rm master.zip
mv moosh-master moosh_files
cd moosh_files/
composer install
#success :)
 
cd ..
#create a symlink
ln -s moosh_files/moosh.php moosh
```

 

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_student\_readonly.txt](attachments/62785118/62785161.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_staff\_readonly.txt](attachments/62785118/62785162.txt) (text/plain)

