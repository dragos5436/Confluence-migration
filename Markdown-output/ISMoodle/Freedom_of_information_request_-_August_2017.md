# Freedom of information request - August 2017

Requested by user ID: 425019

On this year's Moodle (current Moodle). Using moodle-db-b

 

Reference:

<https://docs.moodle.org/dev/Grades>

<https://docs.moodle.org/dev/images_dev/e/e0/Gradebook_erd.png>

 

It seems the user hasn't touched any outcomes or any gradebook category:

``` sql
select * from mdl_grade_outcomes where usermodified = 425019;
Empty set (0.09 sec)
select * from mdl_grade_outcomes_history where loggeduser = 425019;
Empty set (0.04 sec)
select * from mdl_grade_categories_history where loggeduser = 425019;
Empty set (0.04 sec)
```

 

 

When looking into mdl\_grade\_grades\_history, I find only one item. the fire safety quiz the user took

``` sql
select 
ggh.id 'grade-value history id',
FROM_UNIXTIME(ggh.timemodified, '%d/%m/%Y %T') 'time grade value was modified',
(SELECT CASE ggh.action WHEN 0 THEN 'insert'
                        WHEN 1 THEN 'update'
                        ELSE 'delete'
END) 'action',
gi.itemname 'item name',
gi.itemtype 'item type',
gi.itemmodule 'item module',
c.shortname 'course',
ggh.source 'module from which the action originated',
concat(u1.firstname , ' ', u1.lastname) 'person who performed the action',
concat(u2.firstname , ' ', u2.lastname) 'person who last modified the raw grade value',
concat(u.firstname , ' ', u.lastname) 'user who is graded'
from mdl_grade_grades_history ggh
join mdl_grade_grades gg on gg.id = ggh.oldid
join mdl_user u1 on u1.id = ggh.loggeduser 
join mdl_user u2 on u2.id = gg.usermodified 
join mdl_user u on u.id = gg.userid 
join mdl_grade_items gi on gi.id = gg.itemid
join mdl_course c on c.id = gi.courseid
where ggh.loggeduser = 425019;


Showing rows 0 - 0 (1 total, Query took 0.1359 seconds.)
```

grade-value history id
time grade value was modified
action
item name
item type
item module
course
module from which the action originated
person who performed the action
person who last modified the raw grade value
user who is graded
 
35527141
19/01/2016 18:29:52
update
Basic Fire Safety Quiz
mod
quiz
Basic Fire Safety 15/16
mod/quiz
Sinkwan Cheng
Sinkwan Cheng
Sinkwan Cheng

 

However, the log table has recorded more regarding the user:

``` sql
select * from mdl_logstore_standard_log where userid = 425019
and action like '%graded%'


select * from mdl_logstore_standard_log where userid = 425019
and eventname like '%graded%'
```

| id        | eventname                   | component | action | target | objecttable   | objectid | crud | edulevel | contextid | contextlevel | contextinstanceid | userid | courseid | relateduserid | anonymous | other                                                 | timecreated | origin | ip        | realuserid |
|-----------|-----------------------------|-----------|--------|--------|---------------|----------|------|----------|-----------|--------------|-------------------|--------|----------|---------------|-----------|-------------------------------------------------------|-------------|--------|-----------|------------|
| 432379219 | \\core\\event\\user\_graded | core      | graded | user   | grade\_grades | 16821313 | u    | 1        | 2731945   | 50           | 29783             | 425019 | 29783    | 425019        | 0         | a:3:{s:6:"itemid";s:6:"234577";s:10:"overridden";b... | 1478429718  | web    | 10.55.0.2 | NULL       |
| 432379221 | \\core\\event\\user\_graded | core      | graded | user   | grade\_grades | 16821315 | u    | 1        | 2731945   | 50           | 29783             | 425019 | 29783    | 425019        | 0         | a:3:{s:6:"itemid";s:6:"234575";s:10:"overridden";b... | 1478429718  | web    | 10.55.0.2 | NULL       |

Not much regarding the user in the graded item history. history of the items being graded:

``` sql
select 
gih.id 'grade-item history id',
FROM_UNIXTIME(gih.timemodified, '%d/%m/%Y %T') 'time grade item was modified',
(SELECT CASE gih.action WHEN 0 THEN 'insert'
                        WHEN 1 THEN 'update'
                        ELSE 'delete'
END) 'action',
gih.itemname 'item name',
gih.itemtype 'item type',
gih.itemmodule 'item module',
c.shortname 'course',
gih.source 'module from which the action originated',
FROM_UNIXTIME(gih.timemodified, '%d/%m/%Y %T') 'timemodified',
concat(u1.firstname , ' ', u1.lastname) 'person who performed the action'
from mdl_grade_items_history gih 
join mdl_user u1 on u1.id = gih.loggeduser
join mdl_course c on c.id = gih.courseid
where gih.loggeduser = 425019;
 
MySQL returned an empty result set (i.e. zero rows). (Query took 0.0886 seconds.)
```

 

 

Note: this particular user seems to never log out of Moodle. probably simply closes the web browser

    select * from mdl_logstore_standard_log where userid = 425019
    and eventname like '%logged%'

 

I want now to create a view that stores what the user marked and what was subsequently edited by someone else.

a query is also needed for 'log in' times.

 

``` sql
-- CREATE VIEW
CREATE OR REPLACE VIEW moodle_live.fia_v_gradechanged AS 
select 
ggh.id AS 'id',
ggh.oldid as 'oldid',
ggh.timemodified as 'timemodified',
ggh.action as 'action',
gi.itemname as 'itemname',
gi.itemtype as 'itemtype',
gi.itemmodule as 'itemmodule',
gi.courseid as 'courseid',
ggh.source as 'source',
ggh.loggeduser as 'loggeduser',
gg.usermodified as 'usermodified',
gg.userid as 'userid'
from mdl_grade_grades_history ggh
join mdl_grade_grades gg on gg.id = ggh.oldid
join mdl_grade_items gi on gi.id = gg.itemid
where ggh.loggeduser = 425019;
 
-- query the view 
select 
ggh.id 'grade-value history id',
FROM_UNIXTIME(ggh.timemodified, '%d/%m/%Y %T') 'time grade value was modified',
(SELECT CASE ggh.action WHEN 0 THEN 'insert'
                        WHEN 1 THEN 'update'
                        ELSE 'delete'
END) 'action',
gi.itemname 'item name',
gi.itemtype 'item type',
gi.itemmodule 'item module',
c.shortname 'course',
ggh.source 'module from which the action originated',
concat(u1.firstname , ' ', u1.lastname) 'person who performed the action',
concat(u2.firstname , ' ', u2.lastname) 'person who last modified the raw grade value',
concat(u.firstname , ' ', u.lastname) 'user who is graded'
from mdl_grade_grades_history ggh
join mdl_grade_grades gg on gg.id = ggh.oldid
join mdl_user u1 on u1.id = ggh.loggeduser 
join mdl_user u2 on u2.id = gg.usermodified 
join mdl_user u on u.id = gg.userid 
join mdl_grade_items gi on gi.id = gg.itemid
join mdl_course c on c.id = gi.courseid
where ggh.id in (select f.id from 
                moodle_live.fia_v_gradechanged f 
                join mdl_grade_grades_history h
                on f.id = h.id
                where f.timemodified < h.timemodified
                );
```

 

Extract 'log in times'

The view returned an **empty result set** <img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" />. So no need to query the view!

``` sql
 -- create view
CREATE OR REPLACE VIEW moodle_live.fia_v_rechanged AS
select 
f.id 'id',
h.oldid 'oldid',
h.userid 'userid',
h.timemodified 'timemodified'
from 
moodle_live.fia_v_gradechanged f 
join mdl_grade_grades_history h on f.id = h.id
where f.timemodified < h.timemodified
 

-- query the view                
```

 

 

Drop the view when done

``` sql
drop view if exists moodle_live.fia_v_gradechanged;
 
DROP VIEW if exists `moodle_live`.`fia_v_rechanged`;
```

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mdl\_logstore\_standard\_log.pdf](attachments/70756910/70757036.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mdl\_logstore\_standard\_log.csv](attachments/70756910/70757037.csv) (text/csv)

