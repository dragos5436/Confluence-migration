# SQL Analysis

**Streamlined queries**

``` java
--- These are the groups which are missing in from prod which do not have a BDO ID set in the idnumber text field (1590)
select * from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32;

--- these are the members of those deleted groups (13688)
select * from mdl_groups_members where groupid in (select id from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32);

--- these are course ids of the courses affected (308)
select distinct courseid from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32;

---these are the assignment submissions as a group for one of the deleted groups
SELECT * FROM mdl_assign_submission where groupid in (select id from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32);

--- these are course ids of the courses affected for which the groups actually had members (210 - but this naturally reduces as I fix it)
SELECT distinct courseid from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32 AND id in (select distinct groupid from mdl_groups_members);

--- list of affected groups for the courses where there are actually members in the course (not necessarily in each of these groups)
select * from mdl_groups where courseid in (SELECT distinct courseid from mdl_groups where id not in (select id from prod_group_ids) AND length(idnumber)=32 AND id in (select distinct groupid from mdl_groups_members)) AND length(idnumber)=32;
```

**Working out which groups are missing**

-   Query Prod DB for IDs of all groups in existence: select id from mdl\_groups;
-   Export the IDs locally, then import them into the restored DB:

``` java
LOAD DATA LOCAL INFILE  'C:\\temp\\2021-03-05-groups-issue\\data-2021-03-08\\mdl_groups-prod.csv'

INTO TABLE prod_group_ids

FIELDS TERMINATED BY ','

-- ENCLOSED BY '"'

LINES TERMINATED BY '\n'

IGNORE 1 ROWS;
```

** **

-   **Run query to estimate numbers for missing groups**

``` java
select

create_year_month

, probably_created_by_mim

, count(*) from (

SELECT

      extract(YEAR_MONTH FROM created_datetime) create_year_month

      , case when  1=1

            AND id_no_len = 32

            -- AND (ilv1.timecreated =  ilv1.timemodified)

            AND (ilv1.timecreated is not null)

            AND (ilv1.timemodified is not null)

            -- AND (((1 * ilv1.created_hour) > 20) OR ((1 * ilv1.created_hour) < 8))

      then 'Y' else 'N' end probably_created_by_mim

      ,ilv1.*

FROM

(

      SELECT

            length(idnumber) id_no_len

            ,from_unixtime(timecreated) created_datetime

            ,hour(from_unixtime(timecreated)) created_hour

            ,g.*

      FROM

            (select * from mdl_groups where id not in (select id from prod_group_ids)) g

/* where g.courseid in (22603, 22605) sample courses used for spot checks */

      ) ilv1

) ilv2

group by create_year_month

, probably_created_by_mim

order by count(*)

-- create_year_month

Desc
```

** **

**Results of query are**

YearMonth created

Created by MIM?

No. of groups

202010

Y

1100

202009

Y

382

202011

Y

108

202003

N

29

201805

N

14

201311

N

10

202006

N

9

202012

N

9

202102

N

9

202010

N

8

201503

N

3

202101

N

3

201703

N

3

201905

N

2

201601

N

2

201908

N

2

201710

N

2

202007

N

2

201508

N

2

201707

N

1

202002

N

1

201903

N

1

201701

N

1

201512

N

1

202011

N

1

201202

N

1

** **

In total, 1,706 groups are flagged as missing (about 2% of all groups in Moodle).

David provided two courses that had been reported as having groups disappear – 22603 and 22605. When we filtered for these courses, the above SQL indicated there were 8 related missing groups which matches what was reported by end user.

The details for the 8 missing groups can be found by executing the inner SQL:

``` java
SELECT

      extract(YEAR_MONTH FROM created_datetime) create_year_month

      , case when  1=1

            AND id_no_len = 32

            -- AND (ilv1.timecreated =  ilv1.timemodified)

            AND (ilv1.timecreated is not null)

            AND (ilv1.timemodified is not null)

            -- AND (((1 * ilv1.created_hour) > 20) OR ((1 * ilv1.created_hour) < 8))

      then 'Y' else 'N' end probably_created_by_mim

      ,ilv1.*

FROM

(

      SELECT

            length(idnumber) id_no_len

            ,from_unixtime(timecreated) created_datetime

            ,hour(from_unixtime(timecreated)) created_hour

            ,g.*

      FROM

            (select * from mdl_groups where id not in (select id from prod_group_ids)) g

        where g.courseid in (22603, 22605)

) ilv1
```

**Finding data related to the missing groups**

-   **Group members**

``` java
select

from_unixtime(timeadded)

,gm.*

from mdl_groups_members gm where groupid in (174906,174907,174908,174909,174910,174911,174912,174913)
```

Note that the id of the group should really be obtained from the query that identifies the groups based on course ID. In this instance 123 missing members were identified. All the missing members were added in Jan and Feb 2021 (so a good indication they may need to be reinstated). 14,301 group membership records seem to have been deleted with the earliest being created Feb 2019 and the latest on Feb 2021. This represents 7,784 distinct users.

-   **Groupings**

Search for missing groupings:

``` java
select gg.* from mdl_groupings_groups gg

where groupid in (174906,174907,174908,174909,174910,174911,174912,174913);
```

It’s worth pointing out that only 68 of the missing groups had a related grouping record in the restored database (these 68 groups were grouped into 54 groupings). See results of:

``` java
select gg.* from mdl_groupings_groups gg

where groupid in

(select id from mdl_groups where id not in (select id from prod_group_ids));
```

-   **Quiz\_overrides, Lesson\_overrides, Assign\_overrides**

Parameters/settings/options for some Moodle activities (such as assignments, lessons and quizzes) may be overridden for specific students or groups in order to give them a different experience of the activity compared to the general population of Moodle users.

Some of the settings that may be overridden include open (start) and close (due, cutoff) dates, time limits, number of attempts.

The three override tables, quiz\_overrides, lesson\_overrides, assign\_overrides table records overrides for groups using rows where the value of groupid is not null.

-   **Group overrides**

No missing group overrides were detected for quizzes in the restored DB. SQL used was:

``` java
SELECT ilv1.*

, case when (is_user_override = is_group_override)

   OR (is_user_override is null)

    OR (is_group_override is null)

  then 'Y' else 'N' end conflict_exist

 FROM (

select

qo.*

, case when qo.groupid is not null then 'Y' else 'N' end is_group_override

, case when qo.userid is not null then 'Y' else 'N' end is_user_override

from mdl_quiz_overrides qo

) ilv1 where is_group_override = 'Y'

and groupid in  (select id from mdl_groups where id not in (select id from prod_group_ids))

;
```

-   **Assignment overrides**

No missing assignment overrides were detected for quizzes in the restored DB. SQL used was:

``` java
SELECT ilv1.*

, case when (is_user_override = is_group_override)

   OR (is_user_override is null)

    OR (is_group_override is null)

  then 'Y' else 'N' end conflict_exist

 FROM (

select

ao.*

, case when ao.groupid is not null then 'Y' else 'N' end is_group_override

, case when ao.userid is not null then 'Y' else 'N' end is_user_override

from mdl_assign_overrides ao

) ilv1

where is_group_override = 'Y' and groupid in  (select id from mdl_groups where id not in (select id from prod_group_ids))

;
```

-   **Lesson overrides**

No missing lesson overrides were detected for quizzes in the restored DB. SQL used was:

``` java
select * from mdl_lesson_overrides;
```

-   **Group/Team assignments**

There are a total of 1,061 records in the mdl\_assign table that seem to be team or group related. Of these,only 2 of those records appear to be related to missing groups (and the two groups are for the same course) – so it seems only one course will be affected by missing team assignments. SQL:

``` java
select * from mdl_assign where 1=1

 -- and teamsubmission = 1

 and teamsubmissiongroupingid in (select id from mdl_groups where id not in (select id from prod_group_ids))

;
```

-   Group attendance records - 1,122 missing

select \* from \`mdl\_attendance\_sessions\`
where groupid in (select id from mdl\_groups where id not in (select id from prod\_group\_ids))

-   Chat message records - 14 missing

\`mdl\_chat\_messages\`

\`mdl\_choicegroup\_options\` -14 missing

\`mdl\_collaborate\_sessionlink\` - 54 missing

\`mdl\_event\` (group attendance) - 1,301

\`mdl\_forum\_discussions\` - 77

\`mdl\_groups\_members\` (probably directly related to group members) - 14301 missing

\`mdl\_hsuforum\_discussions\` - 5 missing

\`mdl\_assign\_submission\` - 22 missing

\`mdl\_attendance\_sessions\` - 1122 missing

**Other comments and recommendations**

-   As part of restoring normal service. Do we need to retain backup of last good MIM “state” DB?
-   Recommend use of DB streams for future logging of changes to critical data items
-   Consider rewriting MIM so it refreshes group membership per user on login (and updates group membership in bulk after immediately after courses are mapped – but after previews have been provided to the course mapper)

