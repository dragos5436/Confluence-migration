# LTA ad-hoc queries

## All sort of queries 

There is a comment before each query about what it does.

Some queries have 2 versions; **NOT SURE IF ALL WORKS!!**

``` sql
-- config changes
SELECT DATE_FORMAT( FROM_UNIXTIME( g.timemodified ) , '%Y-%m-%d' ) AS DATE, concat(u.firstname, ' ', u.lastname) AS USER, g.name AS setting, CASE WHEN g.plugin IS NULL THEN "core" ELSE g.plugin END AS plugin, g.VALUE AS new_value, g.oldvalue AS original_value FROM mdl_config_log AS g JOIN mdl_user AS u ON g.userid = u.id ORDER BY DATE DESC

--running cron jobs
SELECT classname
  ,DATE_FORMAT(FROM_UNIXTIME(lastruntime), '%H:%i [%d]') AS 'last'
  ,DATE_FORMAT(now(), '%H:%i') AS 'now'
  ,DATE_FORMAT(FROM_UNIXTIME(nextruntime), '%H:%i [%d]') AS 'next'
  ,DATE_FORMAT(FROM_UNIXTIME(UNIX_TIMESTAMP()-nextruntime), '%i') AS 'next in min'
FROM mdl_task_scheduled
WHERE now() > FROM_UNIXTIME(nextruntime)
 
-- success logins 09/01/2017
SELECT FROM_UNIXTIME(timecreated) AS lsl_timecreated, 
id , eventname , component , action , target , crud , courseid , anonymous , other , origin , ip , realuserid 
FROM mdl_logstore_standard_log 
WHERE action = 'loggedin' 
AND timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00') 
ORDER BY timecreate
 
 
-- TIME slot - success logins 09/01/2017
SELECT FROM_UNIXTIME(timecreated) AS 'time slot' , count(id) as 'success logins' 
FROM mdl_logstore_standard_log 
WHERE action = 'loggedin' 
AND timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00') 
GROUP BY timecreated DIV (10*60)


 
-- failed login 09/01/2017
SELECT FROM_UNIXTIME(timecreated) AS lsl_timecreated , id , eventname , component , action , target , crud , courseid , anonymous , other , origin , ip , realuserid FROM mdl_logstore_standard_log WHERE action = 'failed' AND target = 'user_login' AND timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00') ORDER BY timecreated


 
-- TIME slot - failed logins 09/01/2017
SELECT FROM_UNIXTIME(timecreated) AS 'time slot' , count(id) as 'failed logins' 
FROM mdl_logstore_standard_log 
WHERE target = 'user_login' 
AND timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00') 
GROUP BY timecreated DIV (10*60)


-- logins by time interval/slot - both success and fails 
SELECT from_unixtime(timecreated) time_interval, 
COUNT(id) as Cnt
FROM mdl_logstore_standard_log
where action = 'loggedin' or target = 'user_login'
and timecreated BETWEEN UNIX_TIMESTAMP('2017/01/13 00:00:00') AND UNIX_TIMESTAMP('2017/01/13 23:59:00')
GROUP BY timecreated DIV (10*60)


-- turn it in 2 assignment modified on a given day
SELECT from_unixtime(asb.submission_modified) AS 'time modified', u.firstname AS 'First', u.lastname AS 'Last', c.fullname AS 'Course', a.name AS 'Assignment' FROM `mdl_turnitintooltwo_submissions` AS asb JOIN mdl_turnitintooltwo AS a ON a.id = asb.turnitintooltwoid JOIN mdl_user AS u ON u.id = asb.userid JOIN mdl_course AS c ON c.id = a.course
    WHERE asb.submission_modified > unix_timestamp('2017/01/09 00:00:00') AND asb.submission_modified < unix_timestamp('2017/01/09 23:59:00')
    ORDER BY c.fullname, a.name, u.lastname
 
-- turn it in submissions 09/01/2017
SELECT from_unixtime(timecreated) as 'time created', eventname, component 
FROM `mdl_logstore_standard_log`
WHERE component = 'mod_turnitintooltwo' 
and eventname = '\\mod_turnitintooltwo\\event\\add_submission'
and timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00')


-- turn it in submissions 09/01/2017 - divided by intervals of 10 mins
SELECT from_unixtime(timecreated) as 'time created', count(id) as 'tii2 submissions' 
FROM `mdl_logstore_standard_log`
WHERE component = 'mod_turnitintooltwo' 
and eventname = '\\mod_turnitintooltwo\\event\\add_submission'
and timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00')
GROUP BY timecreated DIV (10*60)



--NORMAL ASSIGNMENTS created on a given day (excluding turn it in 2).
SELECT from_unixtime(asb.timecreated) AS 'time created', u.firstname AS 'First', u.lastname AS 'Last', c.fullname AS 'Course', a.name AS 'Assignment' FROM `mdl_assign_submission` AS asb JOIN mdl_assign AS a ON a.id = asb.assignment JOIN mdl_user AS u ON u.id = asb.userid JOIN mdl_course AS c ON c.id = a.course WHERE asb.timecreated > unix_timestamp('2017-01-10 00:00:00') AND asb.timecreated < unix_timestamp('2017-01-10 23:59:00') ORDER BY c.fullname, a.name, u.lastname


--assessable submissions - not turn it in
SELECT  from_unixtime(timecreated) as 'time created', eventname, component
FROM`mdl_logstore_standard_log`
WHERE action = 'uploaded'
and timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00')



-- number of files created on a given day
SELECT  from_unixtime(timecreated) as 'time created', filepath, component, filename
FROM `mdl_files` 
WHERE timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00')
order by timecreated


-- downloads 09/01/2017
SELECT FROM_UNIXTIME(timecreated,'%Y %M %D %h:%i:%s') AS TIME ,ip,userid,eventname,action  
FROM `mdl_logstore_standard_log` 
WHERE `action` LIKE "%download%" 
AND timecreated BETWEEN UNIX_TIMESTAMP('2017/01/09 00:00:00') AND UNIX_TIMESTAMP('2017/01/09 23:59:00') 
ORDER BY timecreated DESC





```

 

 
