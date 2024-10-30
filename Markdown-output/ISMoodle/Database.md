# Database

## Set-up dev environment

| Server  | mysdb-01-d.adcom.ucl.ac.uk |
|---------|----------------------------|
| Db name | moodle\_int\_management    |
| Db user | mdlintuser\_dev            |
| Db pwd  | keypass                    |

### Tables in moodle\_int\_management

'sits\_assignments'
'sits\_assignments\_dump'
'sits\_departments'
'sits\_departments\_dump'
'sits\_departments\_mapping'
'sits\_faculties'
'sits\_faculties\_dump'
'sits\_faculties\_mapping'
'sits\_memberships'
'sits\_memberships\_dump'
'sits\_module'
'sits\_module\_dump'
'sits\_moduleoccurence'
'sits\_moduleoccurence\_dump'
'sits\_moduleoccurence\_mapping'
'sits\_programmes'
'sits\_programmes\_dump'
'sits\_programmes\_mapping'
'sits\_routes'
'sits\_routes\_dump'
'sits\_routes\_mapping'
'sits\_students'
'sits\_students\_dump'

### Create table structures

``` sql
/**
 *  TABLE : sits_module_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_module_dump` (
  `mod_inst_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_code` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `mod_dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_module_dump_idx` (`mod_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_module
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_module` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mod_inst_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_code` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `mod_dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mod_bdo_id` (`mod_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_moduleoccurence_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_moduleoccurence_dump` (
  `mod_occ_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_inst_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_code` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_psl_code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_mav` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_year_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_moduleoccurence_dump_idx` (`mod_occ_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_moduleoccurence
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_moduleoccurence` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mod_occ_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_inst_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mod_code` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_psl_code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_mav` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_year_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mod_occ_bdo_id` (`mod_occ_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_moduleoccurence_mapping
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_moduleoccurence_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mod_occ_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `reg_status` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'APP',
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vle_courseid` int(10) NOT NULL,
  `mapping_action` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `group_import` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sits_modoccur_mapping_module_enrol_idx` (`mod_occ_bdo_id`,`reg_status`),
  KEY `sits_modoccur_mapping_vle_courseid_idx` (`vle_courseid`),
  KEY `sits_modoccur_mapping_action_idx` (`mapping_action`),
  KEY `sits_modoccur_mapping_reg_idx` (`reg_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_departments_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_departments_dump` (
  `dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_fac_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `sits_departments_dump_idx` (`dpt_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_departments    
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_departments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_fac_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dpt_bdo_id` (`dpt_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_departments_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_departments_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_status` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'APP',
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vle_courseid` int(10) NOT NULL,
  `mapping_action` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sits_deptmapping_dept_year_enrol_idx` (`dpt_bdo_id`,`course_year`,`reg_status`),
  KEY `sits_deptmapping_departments_idx` (`vle_courseid`,`dpt_bdo_id`),
  KEY `sits_deptmapping_vle_courseid_idx` (`vle_courseid`),
  KEY `sits_deptmapping_action_idx` (`mapping_action`),
  KEY `sits_deptmapping_reg_idx` (`reg_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_faculties_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_faculties_dump` (
  `dpt_fac_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_fac_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_faculties_dump_idx` (`dpt_fac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_faculties
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_faculties` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dpt_fac_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_facc_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dpt_fac_code` (`dpt_fac_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 * TABLE : sits_faculties_mapping
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_faculties_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dpt_fac_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vle_courseid` int(10) NOT NULL,
  `mapping_action` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sits_facmapping_fac_year_idx` (`dpt_fac_code`,`course_year`),
  KEY `sits_mapped_faculties_idx1` (`vle_courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_programmes_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_programmes_dump` (
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `prog_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_programmes_dump_idx` (`prog_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_programmes
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_programmes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `prog_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programmes_prg_dpt_unq` (`prog_code`,`dpt_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_programmes_mapping
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_programmes_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vle_courseid` int(10) NOT NULL,
  `mapping_action` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sits_prgmapping_prg_year_idx` (`prog_code`,`course_year`,`ioe_sessions`),
  KEY `sits_mapped_programmes_idx1` (`vle_courseid`,`prog_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_routes_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_routes_dump` (
  `route_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `route_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_routes_import_idx` (`route_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_routes
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_routes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `route_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `routes_rou_prg_dpt_unq` (`route_code`,`prog_code`,`dpt_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_routes_mapping
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_routes_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ioe_sessions` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vle_courseid` int(10) NOT NULL,
  `mapping_action` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sits_roumapping_rou_year_idx` (`route_code`,`course_year`,`ioe_sessions`),
  KEY `sits_mapped_routes_idx1` (`vle_courseid`,`route_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_students_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_students_dump` (
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `vle_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `upi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `personal_tutor` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enrolment_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `course_join_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_students_dump_idx` (`student_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 * TABLE : sits_students
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `vle_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `upi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `student_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_tutor` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enrolment_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `course_join_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_code` (`student_code`),
  KEY `sits_UK_students_username` (`vle_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 * TABLE : sits_assignments_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_assignments_dump` (
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `route_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_fac_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_undergrad` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_assignments_import_idx` (`student_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_assignments
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_assignments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `route_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `prog_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dpt_fac_code` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_undergrad` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `course_year` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assignments_all_unq` (`student_code`,`route_code`,`prog_code`,`dpt_bdo_id`,`dpt_fac_code`,`post_undergrad`,`course_year`),
  KEY `sits_assignments_student_idx` (`student_code`),
  KEY `sits_assignments_route_idx` (`route_code`),
  KEY `sits_assignments_programme_idx` (`prog_code`),
  KEY `sits_assignments_department_idx` (`dpt_bdo_id`),
  KEY `sits_assignments_rou_year_idx` (`route_code`,`course_year`),
  KEY `sits_assignments_prg_year_idx` (`prog_code`,`course_year`),
  KEY `sits_assignments_dept_year_idx` (`dpt_bdo_id`,`course_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_memberships_dump
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_memberships_dump` (
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `reg_status` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `smo_sms` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  KEY `sits_memberships_dump_idx` (`student_code`,`mod_occ_bdo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_memberships
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_memberships` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_occ_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `mod_dpt_bdo_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `reg_status` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `smo_sms` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `memberships_stu_mod_unq` (`student_code`,`mod_occ_bdo_id`,`mod_dpt_bdo_id`),
  KEY `sits_memberships_student_idx` (`student_code`),
  KEY `sits_memberships_module_idx` (`mod_occ_bdo_id`),
  KEY `sits_memberships_department_idx` (`mod_dpt_bdo_id`),
  KEY `sits_memberships_mod_status_sm_idx` (`mod_occ_bdo_id`,`reg_status`,`smo_sms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 * TABLE : sits_system_settings
 * 
**/
CREATE TABLE `moodle_int_management`.`sits_system_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `setting` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 * TABLE : sits_enrolment_statuses
 *
**/
CREATE TABLE `moodle_int_management`.`sits_enrolment_statuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enrolment_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `enrol` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enrolmentstatuses_status_idx` (`enrolment_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_mapping_statuses
 *
**/ 
CREATE TABLE `moodle_int_management`.`sits_mapping_statuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vle_courseid` int(10) NOT NULL,
  `vle_idnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mapping_active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vle_courseid` (`vle_courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_registration_statuses
 *
**/
CREATE TABLE `moodle_int_management`.`sits_registration_statuses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_status` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(1) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `regstatuses_status_idx` (`reg_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


/**
 *  TABLE : sits_start_sessions
 *
**/
CREATE TABLE `moodle_int_management`.`sits_start_sessions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `session_code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `session_suffix` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enrolmentstatuses_status_idx` (`session_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/**
 *  TABLE : sits_reports
 *
**/
CREATE TABLE `moodle_int_management`.`sits_reports` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_occurred` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

```

### Insert Table data

``` sql
```


