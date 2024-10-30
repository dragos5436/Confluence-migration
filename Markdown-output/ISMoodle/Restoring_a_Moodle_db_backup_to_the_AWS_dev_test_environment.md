# Restoring a Moodle db backup to the AWS dev/test environment

1) ssh to mdl-preview or mdl-admin0{1,2}p

``` java
ssh cceaasp@mdl-preview01u.ad.ucl.ac.uk
```

2) Go to a directory with space available 

``` java
cd /data/moodle/dbrestore/
```

3) Retrieve database backup from the Prod nightly db dumps. (see "Moodle db backups S3 RO creds" in Lastpass for aws configure step)

``` java
aws configure
aws s3 ls ucl-prod-db-backups/daily/
aws s3 cp ucl-prod-db-backups/daily/uclmoodleprod-202202280400.sql.gz .
aws s3 cp ucl-prod-db-backups/daily/moodle_int_management-202202280400.sql.gz .
```

4) Create database schema (e.g. via Workbench or mysql cli)

``` java
CREATE SCHEMA `moodle_17_06_21` DEFAULT CHARACTER SET utf8mb4 ;
```

5) Start the Moodle database restore & rename the database from uclmoodleprod to desired name (Aligned with Prod→Staging process - <https://git.catalyst-eu.net/ucl/moodle/-/wikis/Restoring-Staging-DB-from-Production> )

``` java
time zcat uclmoodleprod-202106170400.sql.gz | sed 's/uclmoodleprod/moodle_17_06_21/g' | mysql -u awsmysqladmin -h mdl-aws-db01-mim.cluster-cweddcllqbin.eu-west-2.rds.amazonaws.com -p moodle_17_06_21
```

N.B. awsmysqladmin credentials are in lastpass

``` java
#local restore e.g. to preview
tmux new -s dbrestore
time zcat uclmoodleprod-202202090400.sql.gz | sed 's/uclmoodleprod/moodle_311_clc_220209/g' | mysql -u mdl39previewusr -h localhost -p moodle_311_clc_220209
```

6) Recreate the mdl\_logstore\_standard\_log table 

This table is not included in the database dump so will need to be recreated for Moodle to be happy

``` java
CREATE TABLE `mdl_logstore_standard_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `objecttable` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectid` bigint(10) DEFAULT NULL,
  `crud` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `edulevel` tinyint(1) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL,
  `contextinstanceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `relateduserid` bigint(10) DEFAULT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `other` longtext COLLATE utf8mb4_unicode_ci,
  `timecreated` bigint(10) NOT NULL,
  `origin` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realuserid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_logsstanlog_tim_ix` (`timecreated`),
  KEY `mdl_logsstanlog_couanotim_ix` (`courseid`,`anonymous`,`timecreated`),
  KEY `mdl_logsstanlog_useconconcr_ix` (`userid`,`contextlevel`,`contextinstanceid`,`crud`,`edulevel`,`timecreated`),
  KEY `mdl_logsstanlog_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=26431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Standard log table'
```

7) Create MIM application user & grant permissions

``` java
CREATE USER 'moodle_int_management'@'%' identified by '';
CREATE SCHEMA `moodle_int_management` DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES on `moodle_int_management`.* to `moodle_int_management`@'%';
GRANT SELECT on `moodle_17_06_21`.`mdl_course` to `moodle_int_management`@'%';
GRANT SELECT on `moodle_17_06_21`.`mdl_course_categories` to `moodle_int_management`@'%';
GRANT SELECT on `moodle_17_06_21`.`mdl_user` to `moodle_int_management`@'%';
GRANT SELECT on `moodle_17_06_21`.`mdl_user_info_data` to `moodle_int_management`@'%';
GRANT SELECT on `moodle_17_06_21`.`mdl_user_info_field` to `moodle_int_management`@'%';
```

See this page for cross-db permissions required [Moodle Integration Manager (MIM) - SITS/CMIS integration\#Cross-DatabaseAccess](137139012.html#MoodleIntegrationManager(MIM)SITS/CMISintegration-Cross-DatabaseAccess): 

8) Restore MIM database

``` java
time zcat moodle_int_management-202106170400.sql.gz | sed 's/uclmoodleprod/moodle_17_06_21/g' | mysql -u moodle_int_management -h mdl-aws-db01-mim.cluster-cweddcllqbin.eu-west-2.rds.amazonaws.com -p moodle_int_management
```

``` java
#7 & 8 for preview
#We have target database with our mysqlusername due to sed replacing the user defining the views.
CREATE SCHEMA `mysqlcceaasp` DEFAULT CHARACTER SET utf8 ;
time zcat moodle_int_management-202202090400.sql.gz | sed 's/uclmoodleprod/moodle_311_clc_220228/g' | sed 's/moodle_int_management/mysqlcceaasp/g' | mysql -u mysqlcceaasp -h 127.0.0.1 -p mysqlcceaasp
```

See <https://git.catalyst-eu.net/ucl/moodle/-/wikis/Restoring-MIM-DB-Production>

TBC


