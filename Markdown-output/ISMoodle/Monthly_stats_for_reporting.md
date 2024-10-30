# Monthly stats for reporting

 

-   [Moodle](#Monthlystatsforreporting-Moodle)
    -   [Logins](#Monthlystatsforreporting-Logins)
    -   [Courses](#Monthlystatsforreporting-Courses)
    -   [Moodle Designers](#Monthlystatsforreporting-MoodleDesigners)
-   [Confluence (wiki)](#Monthlystatsforreporting-Confluence(wiki))
    -   [Spaces](#Monthlystatsforreporting-Spaces)
    -   [Pages](#Monthlystatsforreporting-Pages)
    -   [Users](#Monthlystatsforreporting-Users)
-   [Opinio](#Monthlystatsforreporting-Opinio)
-   [Using MySQL Workbench](#Monthlystatsforreporting-UsingMySQLWorkbench)

 

New process to update the monthly service statistics

To update the spreadsheet go to this web page and copy and paste the stats in each table into the relevant tab in the spreadsheet located at: S:\\AASG\\Service Statistics\\AASG Service Stats.xls

<https://www.ucl.ac.uk/isd-extra/staff/e-learning/scripts/monthlystats.php>

For Support Calls stats look at the reports generated in the LTSS section of the IS Stats page:

<http://www.ucl.ac.uk/isd/staff/stats/isd>

# Moodle

These SQL queries should be performed on the **moodle** database on the moodledb MySQL servers

**active courses last 6 months (this includes viewing a course)**

``` java
SELECT c.id, c.idnumber, c.shortname, c.fullname, c.startdate, cc.name AS category, cc.id AS categoryid, FROM_UNIXTIME( max( timeaccess )  )  AS lastaccess
FROM mdl_course c, mdl_user_lastaccess, mdl_course_categories cc
WHERE courseid = c.id
AND c.category = cc.id
GROUP  BY courseid
HAVING unix_timestamp( lastaccess )  > unix_timestamp( date_sub( now(  ) ,  INTERVAL 6 
MONTH  )  ) 
```

**course created this year (since January)**

``` java
select 
id,category,fullname, from_unixtime(timecreated) as created
from mdl_course where year(from_unixtime(timecreated)) = year(now()) 
order by timecreated
```

 

#### Logins

**active users in the last month**

``` java
SELECT id,username,FROM_UNIXTIME(`lastlogin`) AS days 
FROM `mdl_user` 
WHERE lastlogin > unix_timestamp( date_sub( now(  ) ,  INTERVAL 1 
MONTH  )  ) 
order by lastlogin
```

**logins per month since January this year**

``` java
SELECT count(lastlogin),concat(monthname(from_unixtime(lastlogin)),' ', year(from_unixtime(lastlogin)))FROM mdl_user where year(from_unixtime(lastlogin)) = year(now()) group by month(from_unixtime(lastlogin));
```

**logins per month in 2014 - 2015**

``` java
SELECT count(lastlogin),concat(monthname(from_unixtime(lastlogin)),' ',year(from_unixtime(lastlogin))) as month FROM mdl_user 
where 
year(from_unixtime(lastlogin)) = 2015
or
year(from_unixtime(lastlogin)) = 2014
group by year(from_unixtime(lastlogin)),monthname(from_unixtime(lastlogin))
order by lastlogin
```

 

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total logins **

To find out how many logins there have been between two dates (e.g. 1st Dec 09 - 31st Dec 09), the date is stored in the database as a unix timestamp (yyyymmdd)

``` sql
SELECT COUNT(userid)AS number
FROM mdl_log
WHERE action='login' AND (time > UNIX_TIMESTAMP(20091201) AND time < UNIX_TIMESTAMP(20091231));
```

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Unique logins**
To find out how many *unique* logins there have been between two dates

``` sql
SELECT COUNT(DISTINCT userid)AS number
FROM mdl_log
WHERE action='login' AND (time > UNIX_TIMESTAMP(20091201) AND time < UNIX_TIMESTAMP(20091231));
```

#### Courses

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total courses**

To see the total number of courses in Moodle

``` sql
SELECT COUNT(*)
FROM mdl_course;
```

 

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total active courses**

To see how many courses are visible to students within Moodle

``` sql
SELECT COUNT(*)
FROM mdl_course
WHERE visible = 1;
```

**New courses created** <img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" />
To see how many new courses have been created within a time period, e.g. to see how many courses were created between two dates (e.g. 1st Dec 09 - 31st Dec 09)

``` sql
SELECT COUNT(*)
FROM mdl_course
WHERE (timecreated > UNIX_TIMESTAMP(20091201) AND timecreated < UNIX_TIMESTAMP(20091231));
```

To see how many new courses (not including LTSS training, test courses, VLE Assistants courses and Restored courses, see [^Moodle Course Categories.txt](Monthly_stats_for_reporting)) have been created within a time period, e.g. to see how many courses were created between two dates (e.g. 1st Dec 09 - 31st Dec 09)

``` sql
SELECT COUNT(*)
FROM mdl_course c
WHERE c.category <> 13 AND c.category <> 259 AND c.category <> 261 AND c.category <> 36
    AND c.category <> 253  AND c.category <> 112  AND c.category <> 114  AND c.category <> 118
    AND (c.timecreated >= UNIX_TIMESTAMP(20091201) AND c.timecreated < UNIX_TIMESTAMP(20091231));
```

 

To see how many students, restricted students and delegates (staff acting as students) are in each Moodle course

``` sql
SELECT c.id as course_id, c.fullname AS course_name, count(r.userid) AS no_students
FROM mdl_role_assignments r
JOIN mdl_context x on r.contextid=x.id JOIN mdl_course c on x.instanceid = c.id
    AND (r.roleid=5 or r.roleid=22 or r.roleid=37) GROUP BY c.fullname;
```

To list all categories, sub-categories and their courses

``` sql
SELECT ccccc.name, cccc.name, ccc.name, cc.name, c.fullname
FROM mdl_course c
inner join mdl_course_categories cc on c.category = cc.id
left join mdl_course_categories ccc on cc.parent = ccc.id
left join mdl_course_categories cccc on ccc.parent = cccc.id
left join mdl_course_categories ccccc on cccc.parent = ccccc.id order by ccccc.name, cccc.name, ccc.name, cc.name, c.fullname;
```

#### Moodle Designers

# Confluence (wiki)

These SQL queries should be performed on the **confluence\_live** database on the central MySQL servers 

#### Spaces

 

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **New spaces**

To find the number **new spaces** have been created between two dates, e.g. in December 09

``` sql
SELECT count(*)
FROM SPACES S
where (creationdate >= "2009-12-01 00:00:00" AND creationdate <= "2009-12-31 23:59:59");
```

 

To see the **details of the new spaces** have been created between two dates, e.g. in December 09

``` sql
SELECT *
FROM SPACES S
where (creationdate >= "2009-12-01 00:00:00" AND creationdate <= "2009-12-31 23:59:59");
```

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total global spaces** 
To find the total number of **global spaces**

``` sql
SELECT count(*) FROM SPACES S where spacetype = "global";
```

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total personal spaces**
To find the total number of **personal spaces**

``` sql
SELECT count(*) FROM SPACES S where spacetype = "personal";
```

#### Pages

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **New pages** 

To find the number **new pages** have been created between two dates, e.g. in December 09

``` sql
SELECT count(*)
FROM CONTENT C
where contenttype = "PAGE"  AND (creationdate >= "2009-12-01 00:00:00" AND creationdate <= "2009-12-31 23:59:59") AND VERSION = 1;
```

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total pages**
To find the **total number of pages**

``` sql
SELECT count(*) FROM CONTENT C where contenttype = "PAGE" and version = 1;
```

#### Users

<img src="images/icons/emoticons/star_yellow.svg" alt="(star)" class="emoticon emoticon-yellow-star" /> **Total users** 

To find the total number of wiki users

``` sql
SELECT count(DISTINCT name) FROM external_entities e;
```

Warning

 

It's not clear whether the value this returns is accurate, as it's about twice as big as the value you get when you click the "People Directory" link on Confluence's front page. It may be that the "external entities" is an overestimate as it may include groups as well as users, but also the People Directory may be an underestimate because all the ex-directory users may be covered by the single blank name.

 

# Opinio

See <http://wiki.ucl.ac.uk/display/ISOpinio/Useful+SQL+queries+for+the+Opinio+database>

# Using MySQL Workbench

Instructions are on the parent page here: [SQL Queries of Moodle & the UCL Wiki](SQL_Queries_of_Moodle)
