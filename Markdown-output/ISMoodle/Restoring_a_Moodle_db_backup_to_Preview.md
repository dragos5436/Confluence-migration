# Restoring a Moodle db backup to Preview

1) ssh to mdl-preview or mdl-admin0{1,2}p

``` java
ssh cceaasp@mdl-preview01u.ad.ucl.ac.uk
```

2) Go to a directory with space available 

``` java
cd /data/moodle/dbrestore/
```

3) Retrieve database backup from the Prod nightly db dumps. (see "Moodle db backups S3 RO creds" in Lastpass for aws configure step) - <https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html>

``` java
aws configure --profile dbbackups
aws s3 ls ucl-prod-db-backups/daily/ --profile dbbackups
aws s3 cp s3://ucl-prod-db-backups/daily/uclmoodleprod-202202280400.sql.gz . --profile dbbackups
aws s3 cp s3://ucl-prod-db-backups/daily/moodle_int_management-202202280400.sql.gz . --profile dbbackups
```

4) Create database schema (e.g. via Workbench or mysql cli)

``` java
CREATE SCHEMA `moodle_311_clc_220228` DEFAULT CHARACTER SET utf8mb4 ;
CREATE USER 'moodle_usr_220228'@'%' identified by 'xyz';
GRANT ALL PRIVILEGES on `moodle_311_clc_220228`.* to `moodle_usr_220228`@'%';
```

5) Start the Moodle database restore & rename the database from uclmoodleprod to desired name (Aligned with Prod→Staging process - <https://git.catalyst-eu.net/ucl/moodle/-/wikis/Restoring-Staging-DB-from-Production> )

``` java
tmux new -s dbrestore
time zcat uclmoodleprod-202202280400.sql.gz | sed 's/uclmoodleprod/moodle_311_clc_220228/g' | mysql -u mdl39previewusr -h localhost -p moodle_311_clc_220228
```

If you get error "Can't connect to local MySQL server through socket '/var/lib/mysql/mysql.sock' " try replacing localhost with 127.0.0.1

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
CREATE USER 'moodle_int_management_220228'@'%' identified by 'xyz';
CREATE SCHEMA `moodle_int_management_220228` DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES on `moodle_int_management_220228`.* to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_course_categories` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_user` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_user_info_data` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_user_info_field` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_course` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_groups` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_groups_members` to `moodle_int_management_220228`@'%';
GRANT SELECT on `moodle_311_clc_220228`.`mdl_groupings` to `moodle_int_management_220228`@'%';
```

See this page for cross-db permissions required [Moodle Integration Manager (MIM) - SITS/CMIS integration\#Cross-DatabaseAccess](137139012.html#MoodleIntegrationManager(MIM)SITS/CMISintegration-Cross-DatabaseAccess): 

8) Restore MIM database

``` java
CREATE SCHEMA `moodle_int_management_220228` DEFAULT CHARACTER SET utf8 ;
time zcat moodle_int_management-202202090400.sql.gz | sed 's/uclmoodleprod/moodle_311_clc_220228/g' | sed 's/moodle_int_management/moodle_int_management_220228/g' | mysql -u moodle_int_management_220228 -h 127.0.0.1 -p moodle_int_management_220228
```

See <https://git.catalyst-eu.net/ucl/moodle/-/wikis/Restoring-MIM-DB-Production>

9) Grant access to the MIM Views and tables for moodleuser 

``` java
GRANT SELECT on `moodle_int_management_220511`.`sits_moduleoccurence` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_v_mappings` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_v_sitsdata` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_moduleoccurence_mapping` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_mapping_statuses` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_faculties_mapping` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_programmes_mapping` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_routes_mapping` to `moodle_demo_usr_220511`@'%';
GRANT SELECT, INSERT, UPDATE, DELETE on `moodle_int_management_220511`.`sits_departments_mapping` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_v_personaltutorrole` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_programmes` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_routes` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_departments` to `moodle_demo_usr_220511`@'%';
GRANT SELECT on `moodle_int_management_220511`.`sits_faculties` to `moodle_demo_usr_220511`@'%';
```


