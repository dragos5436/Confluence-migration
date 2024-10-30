# Useful Moodle SQL

Just a wee warning (as in small, not... well... you know)...

Some of this information is taken from my scrappy notes, gathered at various institutions over the course of a couple of years, and as such may need some tidying-up.

Cheers. Tim J Gagen

**Block instances** Expand source

``` sql
SELECT
    bi.id
  , bi.blockname
  , bi.parentcontextid
  , bi.showinsubcontexts
  , bi.pagetypepattern
  , bi.subpagepattern
  , bi.defaultregion
  , bi.defaultweight
  , bi.configdata
  , CONCAT('http://moodle.city.ac.uk/course/view.php?id=', ctx.instanceid, '&sesskey=[~sesskey~]&bui_editid=', bi.id) AS bi_settings_url
  , ctx.contextlevel
  , ctx.instanceid
  , ctx.path
  , ctx.depth
FROM mdl_block_instances bi
    LEFT JOIN mdl_context ctx
        ON bi.parentcontextid = ctx.id
WHERE 1 = 1
AND bi.blockname = 'cularchived_modules'
LIMIT 1000;
 
 
SELECT
    bi.id AS block_instance_id
  , bi.blockname
  , bi.parentcontextid
  , bi.showinsubcontexts
  , bi.pagetypepattern
  , bi.subpagepattern
  , bi.defaultregion
  , bi.defaultweight
  , bp.id AS blockpositionid
  , bp.pagetype AS bp_pagetype
  , COALESCE(bp.visible, 1) AS bp_visible
  , COALESCE(bp.region, bi.defaultregion) AS bp_region
  , COALESCE(bp.weight, bi.defaultweight) AS bp_weight
  , ctx.id AS ctx_context_id
  , ctx.contextlevel AS ctx_contextlevel
  , ctx.instanceid AS ctx_instanceid
  , FROM_BASE64(bi.configdata) AS bi_configdata
FROM mdl_block_instances bi
    LEFT JOIN mdl_block_positions bp
        ON bp.blockinstanceid = bi.id
    LEFT JOIN mdl_context ctx
        ON bp.contextid = ctx.id
WHERE 1 = 1
AND bi.blockname LIKE '%course_visibility%'
LIMIT 100;
 
 
SELECT
    ctx.*
FROM mdl_context ctx
    INNER JOIN mdl_user u
        ON (ctx.contextlevel = 30 AND ctx.instanceid = u.id)
WHERE 1 = 1
AND u.username = 'sbbj723'
LIMIT 1000;
 
 
SELECT
    *
  , u.firstname
  , bi.id AS block_instance_id
  , bi.blockname
FROM mdl_context ctx
    INNER JOIN mdl_block_instances bi
        ON (bi.parentcontextid = ctx.id AND ctx.contextlevel = 30) -- USER
    INNER JOIN mdl_user u
        ON ctx.instanceid = u.id
WHERE 1 = 1
AND u.email = 'Tim.Gagen.1@city.ac.uk'
-- AND ctx.instanceid IN (5, 7, 131)
-- AND bi.blockname LIKE '%bath%'
ORDER BY ctx.instanceid, bi.blockname
WHERE 1 = 1
LIMIT 1000;
 
 
-- ## CUL course listing (User context)
SELECT
    ctx.id AS context_id
  , bi.id AS block_instance_id
  , bp.id AS blockpositionid
  , bi.blockname
  , bi.parentcontextid
  , bi.showinsubcontexts
  , bi.pagetypepattern
  , bi.subpagepattern
  , bi.defaultregion
  , bi.defaultweight
  , COALESCE(bp.visible, 1) AS visible
  , COALESCE(bp.region, bi.defaultregion) AS region
  , COALESCE(bp.weight, bi.defaultweight) AS weight
  , bi.configdata
  , CONCAT(u.firstname, ' ', u.lastname) AS user_fullname
FROM mdl_context ctx
    INNER JOIN mdl_block_instances bi
        ON ctx.instanceid = bi.id AND ctx.contextlevel = 30 -- User context
    INNER JOIN mdl_context ctxp
        ON bi.parentcontextid = ctxp.id
    INNER JOIN mdl_user u
        ON ctxp.instanceid = u.id
    LEFT JOIN mdl_block_positions bp
        ON bp.blockinstanceid = bi.id
WHERE 1 = 1
AND bi.blockname = 'culcourse_listing'
LIMIT 1000;
```

**Cache flags** Expand source

``` sql
SELECT
    id
  , flagtype
  , name
  , FROM_UNIXTIME(timemodified) AS cf_timemodified
  , value
  , FROM_UNIXTIME(expiry) AS cf_expiry
FROM mdl_cache_flags
ORDER BY id DESC LIMIT 100;
```

**Config log** Expand source

``` sql
SELECT
    cl.id
  , cl.userid
  , FROM_UNIXTIME(cl.timemodified) AS cl_timemodified
  , cl.plugin
  , cl.name
  , cl.value
  , cl.oldvalue
  , CONCAT(u.firstname, ' ', u.lastname) AS u_name
FROM mdl_config_log cl
    INNER JOIN mdl_user u
        ON cl.userid = u.id
WHERE 1 = 1
AND name LIKE '%grade_report_showcalculations%'
ORDER BY cl.timemodified DESC LIMIT 1000;

SELECT FROM_UNIXTIME(MIN(timemodified)) FROM mdl_config_log;
```

**Courses** Expand source

``` sql
SELECT COUNT(*) FROM mdl_course;
-- ## Course
SELECT
    `id`
      , `category`
      , `sortorder`
      , `fullname`
      , `shortname`
      , `idnumber`
      , `summary`
      , `summaryformat`
      , `format`
      , `showgrades`
      , `newsitems`
      , `startdate`
      , `marker`
      , `maxbytes`
      , `legacyfiles`
      , `showreports`
      , `visible`
      , `visibleold`
      , `groupmode`
      , `groupmodeforce`
      , `defaultgroupingid`
      , `lang`
      , `theme`
      , FROM_UNIXTIME(`timecreated`) AS timecreated
      , FROM_UNIXTIME(`timemodified`) AS timemodified
      , `requested`
      , `enablecompletion`
      , `completionnotify`
      , `cacherev`
      , `calendartype`
FROM mdl_course
WHERE 1 = 1
LIMIT 100;

-- ## Course and cactegory
SELECT c.id
FROM mdl_course c
    INNER JOIN mdl_course_categories cc
        ON c.category = cc.id
WHERE 1 = 1
AND (cc.path = '/747' OR cc.path LIKE '/747/%')
LIMIT 10000;
```

**Course modules** Expand source

``` sql
SELECT
    c.shortname
  , cs.`name` AS section
  , m.`name` AS module
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url
FROM mdl_course_modules cm
    INNER JOIN mdl_modules m
        ON cm.module = m.id
    INNER JOIN mdl_course c
        ON cm.course = c.id
    INNER JOIN mdl_course_sections cs
        ON cm.section = cs.id
WHERE 1 = 1
#AND m.`name` = 'resource'
AND c.id = :courseid
ORDER BY c.id, cs.id
LIMIT 10;
 
 
-- mdl_assign.intro
SELECT
    c.shortname
  , m.`name` AS module
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url_live
  , SUBSTRING(a.intro, LOCATE('http://moodle.city.ac.uk/', a.intro)) AS url_orig
  , SUBSTRING(REPLACE(a.intro, 'http://moodle.city.ac.uk/', 'http://moodle.city.ac.uk/auth/mnet/jump.php?hostid=3&wantsurl=/'), LOCATE('http://moodle.city.ac.uk/', a.intro)) url_archive
FROM mdl_course_modules cm
    INNER JOIN mdl_modules m
        ON cm.module = m.id
    INNER JOIN mdl_course c
        ON cm.course = c.id
    INNER JOIN mdl_assign a
        ON (cm.`instance` = a.id AND c.id = a.course)
WHERE m.`name` = 'assign'
    AND a.intro LIKE '%http://moodle.city.ac.uk/%'
#AND a.timemodified <= 1372746600 -- '2013/07/02 07:30'
ORDER BY c.id;
 
 
-- mdl_book.intro
SELECT
    c.shortname
  , m.`name` AS module
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url_live
  , SUBSTRING(b.intro, LOCATE('http://moodle.city.ac.uk/', b.intro)) AS url_orig
  , SUBSTRING(REPLACE(b.intro, 'http://moodle.city.ac.uk/', 'http://moodle.city.ac.uk/auth/mnet/jump.php?hostid=3&wantsurl=/'), LOCATE('http://moodle.city.ac.uk/', b.intro)) url_archive
FROM mdl_course_modules cm
    INNER JOIN mdl_modules m
        ON cm.module = m.id
    INNER JOIN mdl_course c
        ON cm.course = c.id
    INNER JOIN mdl_book b
        ON (cm.`instance` = b.id AND c.id = b.course)
WHERE m.`name` = 'book'
    AND b.intro LIKE '%http://moodle.city.ac.uk/%'
#AND b.timemodified <= 1372746600 -- '2013/07/02 07:30'
ORDER BY c.id;
 
 
-- mdl_book_chapters.content
SELECT
    c.shortname
  , m.`name` AS module
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url_live
  , SUBSTRING(bc.content, LOCATE('http://moodle.city.ac.uk/', bc.content)) AS url_orig
  , SUBSTRING(REPLACE(bc.content, 'http://moodle.city.ac.uk/', 'http://moodle.city.ac.uk/auth/mnet/jump.php?hostid=3&wantsurl=/'), LOCATE('http://moodle.city.ac.uk/', bc.content)) url_archive
FROM mdl_course_modules cm
    INNER JOIN mdl_modules m
        ON cm.module = m.id
    INNER JOIN mdl_course c
        ON cm.course = c.id
    INNER JOIN mdl_book b
        ON (cm.`instance` = b.id AND c.id = b.course)
    INNER JOIN mdl_book_chapters bc
        ON bc.bookid = b.id
WHERE m.`name` = 'book'
    AND bc.content LIKE '%http://moodle.city.ac.uk/%'
#AND b.timemodified <= 1372746600 -- '2013/07/02 07:30'
ORDER BY c.id, b.id, bc.id;
 
 
-- mdl_resource.intro
SELECT
    c.shortname
  , m.`name` AS module
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url_live
  , SUBSTRING(intro, LOCATE('http://moodle.city.ac.uk/', intro)) AS url_orig
  , SUBSTRING(REPLACE(intro, 'http://moodle.city.ac.uk/', 'http://moodle.city.ac.uk/auth/mnet/jump.php?hostid=3&wantsurl=/'), LOCATE('http://moodle.city.ac.uk/', intro)) url_new
FROM mdl_course_modules cm
    INNER JOIN mdl_modules m
        ON cm.module = m.id
    INNER JOIN mdl_course c
        ON cm.course = c.id
    INNER JOIN mdl_resource r
        ON (cm.`instance` = r.id AND c.id = r.course)
WHERE m.`name` = 'resource'
    AND r.intro LIKE '%http://moodle.city.ac.uk/%'
#AND r.timemodified <= 1372746600 -- '2013/07/02 07:30'
ORDER BY c.id;
```

**Course sections** Expand source

``` sql
SELECT
    c.id AS c_id
  , c.shortname AS c_shortname
  , cs.id AS cs_id
  , cs.section AS cs_section
  , cs.`name` AS cs_name
  , cs.sequence AS cs_sequence
  , cs.visible AS cs_visible
  , cm.id AS cm_id
  , cm.module AS cm_module
  , cm.`instance` AS cm_instance
  , m.`name` AS m_name
  , m.`version` AS m_version
  , m.visible AS m_visible
  , CONCAT('http://moodle.city.ac.uk/mod/', m.`name`, '/view.php?id=', cm.id) AS cm_url
FROM mdl_course_sections cs
    INNER JOIN mdl_course c
        ON cs.course = c.id
    LEFT JOIN mdl_course_modules cm
        ON cm.section = cs.id
    LEFT JOIN mdl_modules m
        ON cm.module = m.id
WHERE 1 = 1
AND c.id = :courseid
ORDER BY cs.section
LIMIT 100;
 
 
SELECT
    *
FROM mdl_course_modules cm
    LEFT JOIN mdl_modules m
        ON cm.module = m.id
WHERE 1 = 1
AND cm.course = :courseid
LIMIT 100;
```

**Enrolments and role assignments** Expand source

``` sql
SELECT
    u.id AS u_id
  , u.username AS u_username
  , u.email AS u_email
  , u.firstname AS u_firstname
  , u.lastname AS u_lastname
  , u.deleted AS u_deleted
  , ue.id AS ue_id
  , ue.`status` AS ue_status
  , ue.enrolid AS ue_enrolid
  , ue.userid AS ue_userid
  , CASE WHEN COALESCE(ue.timestart, 0) = 0 THEN '' ELSE FROM_UNIXTIME(ue.timestart) END AS ue_timestart
  , CASE WHEN COALESCE(ue.timeend, 0) = 0 THEN '' ELSE FROM_UNIXTIME(ue.timeend) END AS ue_timeend
  , ue.modifierid AS ue_modifierid
  , umod.username AS umod_username
  , FROM_UNIXTIME(ue.timecreated) AS ue_timecreated
  , FROM_UNIXTIME(ue.timemodified) AS ue_timemodified
  , e.enrol AS e_enrol
  , c.id AS c_id
  , c.shortname AS c_shortname
  , c.fullname AS c_fullname
  , ctx.id AS ctx_id
  , ctx.contextlevel AS ctx_contextlevel
  , ctx.instanceid AS ctx_instanceid
  , ctx.path AS ctx_path
  , ctx.depth AS ctx_depth
  , r.shortname AS r_shortname
FROM mdl_user u
    INNER JOIN mdl_user_enrolments ue
        ON ue.userid = u.id
    LEFT JOIN mdl_user umod
        ON ue.modifierid = umod.id
    INNER JOIN mdl_enrol e
        ON e.id = ue.enrolid
    INNER JOIN mdl_role_assignments ra
        ON ra.userid = u.id
    INNER JOIN mdl_context ctx
        ON (ctx.id = ra.contextid AND ctx.contextlevel = 50)
    INNER JOIN mdl_course c
        ON (c.id = ctx.instanceid AND e.courseid = c.id)
    INNER JOIN mdl_role r
        ON (r.id = ra.roleid AND r.shortname = 'student')
WHERE 1 = 1
#AND u.id = :userid
#AND u.username = :username
AND c.id = 9859
AND e.`status` = 0
AND e.enrol = 'imsenterprise'
AND u.suspended = 0
AND u.deleted = 0
AND (ue.timeend = 0 OR ue.timeend > NOW())
AND ue.`status` = 0
ORDER BY u.username
LIMIT 2000;
 
 
SELECT
    ra.id AS ra_id
  , ra.roleid AS ra_roleid
  , ra.contextid AS ra_contextid
  , ra.userid AS ra_userid
  , FROM_UNIXTIME(ra.timemodified) AS ra_timemodified
  , ra.modifierid AS ra_modifierid
  , ra.component AS ra_component
  , ra.itemid AS ra_itemid
  , ra.sortorder AS ra_sortorder
  , ctx.*
FROM mdl_role_assignments ra
    INNER JOIN mdl_context ctx
        ON (ra.contextid = ctx.id AND ctx.contextlevel = 50)
WHERE 1 = 1
AND userid = :userid
AND ctx.instanceid = :courseid
ORDER BY id DESC
LIMIT 1000;
 
 
-- # IMS enrolment log records.
SELECT
    lsl.id
  , lsl.eventname
  , lsl.component
  , lsl.action
  , lsl.target
  , lsl.objecttable
  , lsl.objectid
  , lsl.crud
  , lsl.edulevel
  , lsl.contextid
  , lsl.contextlevel
  , lsl.contextinstanceid
  , lsl.userid
  , lsl.courseid
  , lsl.relateduserid
  , lsl.anonymous
  , lsl.other
  , FROM_UNIXTIME(lsl.timecreated) AS lsl_timecreated
  , lsl.origin
  , lsl.ip
  , lsl.realuserid
FROM mdl_logstore_standard_log lsl
WHERE lsl.timecreated BETWEEN UNIX_TIMESTAMP('2016-01-06 00:00') AND UNIX_TIMESTAMP()
AND lsl.eventname LIKE '\\core\\event\\user_enrolment_%' ESCAPE '|'
AND lsl.other LIKE '%imsenterprise%'
LIMIT 1000; 
```

**File/resource data** Expand source

``` sql
SELECT
    (SUM(f.filesize) / (1024 * 1024 * 1024)) AS filesize_GiB
/*
    f.id
    #, f.contenthash
    #, f.pathnamehash
    #, f.contextid
  , f.component
  , f.filearea
  , f.itemid
  , f.filepath
  , f.filename
  , f.userid
  , f.filesize
  , ((f.filesize) / (1024 * 1024 * 1024)) AS filesize_GiB
  , f.mimetype
    #, f.status
    #, f.source
    #, f.author
    #, f.license
  , FROM_UNIXTIME(f.timecreated) AS str_timecreated
  , FROM_UNIXTIME(f.timemodified) AS str_timemodified
  , f.sortorder
  , f.referencefileid
  , u.email
*/
FROM mdl_files f
    LEFT JOIN mdl_user u
        ON f.userid = u.`id`
WHERE 1 = 1
#AND userid = 38519
#AND f.component = 'user'
#AND f.filearea = 'backup'
ORDER BY f.filesize DESC
LIMIT 100;
 
 
-- Total file size by component/filearea.
SELECT
    `component`
  , `filearea`
  , (SUM(filesize) / (1024 * 1024 * 1024)) AS filesize_GiB
FROM mdl_files
GROUP BY `component`
       , `filearea`
ORDER BY SUM(`filesize`) DESC, `component`, `filearea`
LIMIT 1000;
```

**Grade items** Expand source

``` sql
SELECT -- *,
    gi.courseid
  , gi.itemname
  , gi.categoryid
  , c.shortname
  , gc.fullname
  , FROM_UNIXTIME(gi.timemodified) AS timemodified
  , FROM_UNIXTIME(gi.timecreated) AS timecreated
FROM mdl_grade_items gi
    LEFT JOIN mdl_grade_categories gc
        ON gi.categoryid = gc.id
    LEFT JOIN mdl_course c
        ON gi.courseid = c.id
WHERE 1 = 1
AND gi.courseid IN (2521);
 
 
SELECT
    gg.userid AS gi_userid
  , gg.rawgrade AS gi_rawgrade
  , gi.courseid AS gi_courseid
  , gi.itemname AS gi_itemname
  , gi.itemtype AS gi_itemtype
  , gi.itemmodule AS gi_itemmodule
  , gi.iteminstance AS gi_iteminstance
FROM mdl_grade_grades gg
    INNER JOIN mdl_grade_items gi
        ON gg.itemid = gi.`id`
WHERE 1 = 1
-- AND gi.courseid = 446
AND gi.courseid = 4556
-- AND gi.iteminstance = 147
LIMIT 1000;
 
 
-- Grade items for which there is no associated mod assign/turnitintool item.
SELECT -- DISTINCT c.id, c.shortname
    c.id AS c_id
  , c.shortname
  , A.cm_id
  , A.gi_itemname
  , A.gi_id
  , A.gi_itemtype
  , A.gi_itemmodule
  , A.gi_needsupdate
  , FROM_UNIXTIME(A.gi_timecreated) AS gi_timecreated
  , FROM_UNIXTIME(A.gi_timemodified) AS gi_timemodified
  , CONCAT(mh.wwwroot, '/course/view.php?id=', c.id, '#section-', A.cs_section) AS course_section_url
  , CONCAT(mh.wwwroot, '/grade/report/grader/index.php?id=', c.id) AS grader_report_url
FROM mdl_course c
    INNER JOIN (SELECT
            m.`name`
          , cm.id AS cm_id
          , cm.course
          , cm.`instance` AS cm_instance
          , cm.visible AS cm_visible
          , cs.section AS cs_section
          , cs.visible AS cs_visible
          , gi.id AS gi_id
          , gi.iteminstance AS gi_iteminstance
          , gi.itemname AS gi_itemname
          , gi.itemtype AS gi_itemtype
          , gi.itemmodule AS gi_itemmodule
          , gi.needsupdate AS gi_needsupdate
          , gi.timecreated AS gi_timecreated
          , gi.timemodified AS gi_timemodified
        FROM mdl_modules m
            INNER JOIN mdl_course_modules cm
                ON cm.module = m.id
            INNER JOIN mdl_course_sections cs
                ON cm.section = cs.id
            INNER JOIN mdl_grade_items gi
                ON (cm.`instance` = gi.iteminstance)
            LEFT JOIN mdl_assign a
                ON gi.iteminstance = a.id
        WHERE m.`name` = 'assign'
        AND gi.itemtype = 'mod'
        AND gi.itemmodule = 'assign'
        AND a.id IS NULL
        UNION
        SELECT
            m.`name`
          , cm.id AS cm_id
          , cm.course
          , cm.`instance` AS cm_instance
          , cm.visible AS cm_visible
          , cs.section AS cs_section
          , cs.visible AS cs_visible
          , gi.id AS gi_id
          , gi.iteminstance AS gi_iteminstance
          , gi.itemname AS gi_itemname
          , gi.itemtype AS gi_itemtype
          , gi.itemmodule AS gi_itemmodule
          , gi.needsupdate AS gi_needsupdate
          , gi.timecreated AS gi_timecreated
          , gi.timemodified AS gi_timemodified
        FROM mdl_modules m
            INNER JOIN mdl_course_modules cm
                ON cm.module = m.id
            INNER JOIN mdl_course_sections cs
                ON cm.section = cs.id
            INNER JOIN mdl_grade_items gi
                ON (cm.`instance` = gi.iteminstance)
            LEFT JOIN mdl_turnitintool tt
                ON gi.iteminstance = tt.id
        WHERE m.`name` = 'turnitintool'
        AND gi.itemtype = 'mod'
        AND gi.itemmodule = 'turnitintool'
        AND tt.id IS NULL
    ) A
        ON c.id = A.course
    LEFT JOIN mdl_grade_grades g
        ON g.itemid = A.gi_id
    LEFT JOIN mdl_mnet_host mh
        ON (mh.id = 1 AND ip_address IN ('127.0.0.1', '::1'))
WHERE 1 = 1
AND g.id IS NULL
#AND ABS(A.gi_timecreated - A.gi_timemodified) <= 2
#AND A.gi_itemmodule = 'turnitintool'
#AND A.gi_itemmodule = 'assign'
ORDER BY c.id, A.gi_timecreated;
```

**Language customization** Expand source

``` sql
SELECT
    c.lang
  , c.stringid AS c_stringid
  , c.original AS c_original
  , c.`master` AS c_master
  , c.`local` AS c_local
  , FROM_UNIXTIME(c.timemodified) AS c_timemodified
  , FROM_UNIXTIME(c.timecustomized) AS c_timecustomized
  , c.outdated AS c_outdated
  , c.modified c_modified
  , cc.`name` AS cc_name
FROM mdl_tool_customlang c
    INNER JOIN mdl_tool_customlang_components cc
        ON c.componentid = cc.`id`
WHERE 1 = 1
AND lang = 'en'
AND `master` LIKE '%course%'
AND `local` LIKE '%Module%'
LIMIT 100;
```

**Questions** Expand source

``` sql
SELECT
    q.id AS q_id
  , q.category AS q_category
  , q.parent AS q_parent
  , q.`name` AS q_name
  , q.questiontext AS q_questiontext
  , q.questiontextformat AS q_questiontextformat
  , q.generalfeedback AS q_generalfeedback
  , q.generalfeedbackformat AS q_generalfeedbackformat
  , q.defaultmark AS q_defaultmark
  , q.penalty AS q_penalty
  , q.qtype AS q_qtype
  , q.`length` AS q_length
  , q.stamp AS q_stamp
  , q.`version` AS q_version
  , q.hidden AS q_hidden
  , q.timecreated AS q_timecreated
  , q.timemodified AS q_timemodified
  , q.createdby AS q_createdby
  , q.modifiedby AS q_modifiedby
  , qc.id AS qc_id
  #, qc.question AS qc_question
  , qc.answer AS qc_answer
  , qc.tolerance AS qc_tolerance
  , qc.tolerancetype AS qc_tolerancetype
  , qc.correctanswerlength AS qc_correctanswerlength
  , qc.correctanswerformat AS qc_correctanswerformat
  , qco.id AS qco_id
  #, qco.question AS qco_question
  , qco.synchronize AS qco_synchronize
  , qco.single AS qco_single
  , qco.shuffleanswers AS qco_shuffleanswers
  , qco.correctfeedback AS qco_correctfeedback
  , qco.correctfeedbackformat AS qco_correctfeedbackformat
  , qco.partiallycorrectfeedback AS qco_partiallycorrectfeedback
  , qco.partiallycorrectfeedbackformat AS qco_partiallycorrectfeedbackformat
  , qco.incorrectfeedback AS qco_incorrectfeedback
  , qco.incorrectfeedbackformat AS qco_incorrectfeedbackformat
  , qco.answernumbering AS qco_answernumbering
  , qco.shownumcorrect AS qco_shownumcorrect
FROM mdl_question_calculated qc
    INNER JOIN mdl_question q
        ON qc.question = q.id
    INNER JOIN mdl_question_calculated_options qco
        ON qco.question = qc.question
WHERE 1 = 1
AND q.`name` LIKE 'TJG%'
LIMIT 1000;
 
 
SELECT
  --  qd.id AS qd_id
    qd.question AS qd_question
  #, qd.datasetdefinition AS qd_datasetdefinition
  , qdd.id AS qdd_id
  , qdd.category AS qdd_category
  , qdd.`name` AS qdd_name
  , qdd.`type` AS qdd_type
  , qdd.`options` AS qdd_options
  , qdd.itemcount AS qdd_itemcount
  , qdi.id AS qdi_id
  , qdi.definition AS qdi_definition
  , qdi.itemnumber AS qdi_itemnumber
  , qdi.`value` AS qdi_value
FROM mdl_question_datasets qd
    INNER JOIN mdl_question_dataset_definitions qdd
        ON qd.datasetdefinition = qdd.id
    LEFT JOIN mdl_question_dataset_items qdi
        ON qdi.definition = qdd.id
WHERE 1 = 1
AND qd.question = :questionid
ORDER BY qdd.id, qdi.id
LIMIT 1000;
 
 
SELECT *
    FROM mdl_question_answers qa
WHERE 1 = 1
AND qa.question = :questionid
ORDER BY id DESC
LIMIT 1000;
```

**Roles** Expand source

``` sql
-- ## User roles
SELECT
    r.name AS r_name
  , r.shortname AS r_shortname
  , r.archetype AS r_archetype
  , CONCAT_WS(' ', u.firstname, u.lastname) AS u_fullname
  , u.email AS u_email
  , ctx.contextlevel AS ctx_contextlevel
  , ctx.instanceid AS ctx_instanceid
  , ctx.path AS ctx_path
FROM mdl_role_assignments ra
    INNER JOIN mdl_role r
        ON ra.roleid = r.id
    INNER JOIN mdl_user u
        ON ra.userid = u.id
    INNER JOIN mdl_context ctx
        ON ra.contextid = ctx.id
WHERE 1 = 1
#AND r.shortname = 'teacher'
#AND r.archetype = 'manager'
LIMIT 100;
 
 
-- ## Role capabilities
SELECT
    r.`name`
,   r.shortname
,   r.archetype
,   rc.capability
,   rc.permission
FROM mdl_role r
INNER JOIN mdl_role_capabilities rc
ON r.id = rc.roleid
WHERE 1=1
    AND r.`shortname` = 'student'
    AND (capability LIKE '%private%' OR capability LIKE '%view%')
ORDER BY r.id, rc.capability;
 
 
SELECT
    DISTINCT CONCAT('http://moodle.city.ac.uk/course/view.php?id=', ctx.instanceid)
FROM mdl_role_assignments ra
    INNER JOIN mdl_role r
        ON ra.roleid = r.id
    INNER JOIN mdl_context ctx
        ON ra.contextid = ctx.id AND ctx.contextlevel = 50
    INNER JOIN mdl_role_capabilities rc
        ON rc.roleid = r.id
WHERE 1 = 1
#AND ctx.instanceid = :courseid
AND ra.userid = (SELECT id FROM mdl_user WHERE username = 'sbbf700')
AND rc.capability LIKE 'mod/ouwiki%';
```

**Turnitin v1** Expand source

``` sql
 -- Maybe one day!
```

**Turnitin v2** Expand source

``` sql
-- ## Tii submissions:-
SELECT
    tt.id AS tt_id
  , tt.course AS tt_course
#  , tt.type AS tt_type
  , tt.name AS tt_name
#  , tt.grade AS tt_grade
#  , tt.numparts AS tt_numparts
#  , tt.defaultdtstart AS tt_defaultdtstart
#  , tt.defaultdtdue AS tt_defaultdtdue
#  , tt.defaultdtpost AS tt_defaultdtpost
  , tt.anon AS tt_anon
#  , tt.portfolio AS tt_portfolio
#  , tt.allowlate AS tt_allowlate
#  , tt.reportgenspeed AS tt_reportgenspeed
#  , tt.submitpapersto AS tt_submitpapersto
#  , tt.spapercheck AS tt_spapercheck
#  , tt.internetcheck AS tt_internetcheck
#  , tt.journalcheck AS tt_journalcheck
#  , tt.maxfilesize AS tt_maxfilesize
#  , tt.intro AS tt_intro
#  , tt.introformat AS tt_introformat
  , FROM_UNIXTIME(tt.timecreated) AS tt_timecreated
  , FROM_UNIXTIME(tt.timemodified) AS tt_timemodified
#  , tt.studentreports AS tt_studentreports
#  , tt.dateformat AS tt_dateformat
#  , tt.usegrademark AS tt_usegrademark
#  , tt.gradedisplay AS tt_gradedisplay
#  , tt.autoupdates AS tt_autoupdates
#  , tt.commentedittime AS tt_commentedittime
#  , tt.commentmaxsize AS tt_commentmaxsize
#  , tt.autosubmission AS tt_autosubmission
#  , tt.shownonsubmission AS tt_shownonsubmission
#  , tt.excludebiblio AS tt_excludebiblio
#  , tt.excludequoted AS tt_excludequoted
#  , tt.excludevalue AS tt_excludevalue
#  , tt.excludetype AS tt_excludetype
#  , tt.perpage AS tt_perpage
#  , tt.erater AS tt_erater
#  , tt.erater_handbook AS tt_erater_handbook
#  , tt.erater_dictionary AS tt_erater_dictionary
#  , tt.erater_spelling AS tt_erater_spelling
#  , tt.erater_grammar AS tt_erater_grammar
#  , tt.erater_usage AS tt_erater_usage
#  , tt.erater_mechanics AS tt_erater_mechanics
#  , tt.erater_style AS tt_erater_style
#  , tt.transmatch AS tt_transmatch
#  , tt.rubric AS tt_rubric
#  , tt.allownonor AS tt_allownonor
  , tc.id AS tc_id
#  , tc.courseid AS tc_courseid
#  , tc.ownerid AS tc_ownerid
#  , tc.turnitin_ctl AS tc_turnitin_ctl
#  , tc.turnitin_cid AS tc_turnitin_cid
#  , tc.course_type AS tc_course_type
  , ts.id AS ts_id
#  , ts.userid AS ts_userid
#  , ts.turnitintooltwoid AS ts_turnitintooltwoid
  , ts.submission_part AS ts_submission_part
  , ts.submission_title AS ts_submission_title
  , ts.submission_type AS ts_submission_type
  , ts.submission_filename AS ts_submission_filename
  , ts.submission_objectid AS ts_submission_objectid
  , ts.submission_score AS ts_submission_score
  , ts.submission_grade AS ts_submission_grade
#  , ts.submission_gmimaged AS ts_submission_gmimaged
  , ts.submission_status AS ts_submission_status
  , ts.submission_queued AS ts_submission_queued
  , ts.submission_attempts AS ts_submission_attempts
#  , ts.submission_modified AS ts_submission_modified
#  , ts.submission_parent AS ts_submission_parent
#  , ts.submission_nmuserid AS ts_submission_nmuserid
#  , ts.submission_nmfirstname AS ts_submission_nmfirstname
#  , ts.submission_nmlastname AS ts_submission_nmlastname
#  , ts.submission_unanon AS ts_submission_unanon
#  , ts.submission_unanonreason AS ts_submission_unanonreason
#  , ts.submission_transmatch AS ts_submission_transmatch
#  , ts.submission_acceptnothing AS ts_submission_acceptnothing
#  , ts.submission_orcapable AS ts_submission_orcapable
  , tu.id AS tu_id
  , tu.userid AS tu_userid
  , tu.turnitin_uid AS tu_turnitin_uid
  , tu.turnitin_utp AS tu_turnitin_utp
  , tu.instructor_defaults AS tu_instructor_defaults
  , tu.instructor_rubrics AS tu_instructor_rubrics
  , u.id AS u_id
  , u.username AS u_username
  , u.firstname AS u_firstname
  , u.lastname AS u_lastname
  , u.email AS u_email
FROM mdl_turnitintooltwo tt
    JOIN mdl_turnitintooltwo_courses AS tc
        ON tt.course = tc.courseid
    JOIN mdl_turnitintooltwo_submissions ts
        ON ts.turnitintooltwoid = tt.id
    LEFT JOIN mdl_turnitintooltwo_users tu
        ON ts.userid = tu.userid
    JOIN mdl_user u
        ON tu.userid = u.id
WHERE 1 = 1
AND tt.course = :course_id
AND u.username = 'cceatga'
# AND ts.submission_title LIKE '%/%'
ORDER BY u.username
LIMIT 1000;
```

**Upgrade log** Expand source

``` sql
SELECT
    id
  , type
  , plugin
  , version
  , targetversion
  , info
  , details
  , backtrace
  , userid
  , FROM_UNIXTIME(timemodified) AS ul_timemodified
FROM mdl_upgrade_log
WHERE FROM_UNIXTIME(timemodified) BETWEEN DATE(NOW()) AND NOW()
ORDER BY id DESC;
```

**User activity** Expand source

``` sql
SELECT DISTINCT
    u.id
  , u.username
  , u.firstname
  , u.lastname
  , COUNT(*)
FROM mdl_logstore_standard_log lsl
    INNER JOIN mdl_user u
        ON lsl.userid = u.id
WHERE 1 = 1
AND lsl.timecreated BETWEEN UNIX_TIMESTAMP(DATE(NOW())) AND UNIX_TIMESTAMP(NOW())
GROUP BY lsl.userid
ORDER BY u.username
LIMIT 1000;
 
 
SELECT DISTINCT
    u.username AS u_username
  , u.firstname AS u_firstname
  , u.lastname AS u_lastname 
  , lsl.id AS lsl_id
  , lsl.eventname AS lsl_eventname
  , lsl.component AS lsl_component
  , lsl.action AS lsl_action
  , lsl.target AS lsl_target
  , lsl.objecttable AS lsl_objecttable
  , lsl.objectid AS lsl_objectid
  , lsl.crud AS lsl_crud
  , lsl.edulevel AS lsl_edulevel
  , lsl.contextid AS lsl_contextid
  , lsl.contextlevel AS lsl_contextlevel
  , lsl.contextinstanceid AS lsl_contextinstanceid
  , lsl.userid AS lsl_userid
  , lsl.courseid AS lsl_courseid
  , c.shortname AS c_shortname
  , lsl.relateduserid AS lsl_relateduserid
  , lsl.anonymous AS lsl_anonymous
  , lsl.other AS lsl_other
  , FROM_UNIXTIME(lsl.timecreated) AS lsl_timecreated
  , lsl.origin AS lsl_origin
  , lsl.ip AS lsl_ip
  , lsl.realuserid AS lsl_realuserid
FROM mdl_logstore_standard_log lsl
    INNER JOIN mdl_user u
        ON lsl.userid = u.id
    LEFT JOIN mdl_course c
        ON lsl.courseid = c.id
WHERE 1 = 1
#AND lsl.userid = :userid
AND u.username = 'cceatga'
AND lsl.timecreated BETWEEN UNIX_TIMESTAMP(DATE(NOW())) AND UNIX_TIMESTAMP(NOW())
LIMIT 1000;
```

**User backup files** Expand source

``` sql
SELECT
    f.userid
  , u.email
  , (SUM(f.filesize) / (1024 * 1024 * 1024)) AS user_backup_GiB
FROM mdl_files f
    INNER JOIN mdl_user u
        ON f.userid = u.`id`
WHERE 1 = 1
#AND userid = 314623
AND f.component = 'user'
AND f.filearea = 'backup'
GROUP BY f.userid
ORDER BY SUM(f.filesize) DESC
LIMIT 100;
```

**User profile fields** Expand source

``` sql
-- ## User profile fields.
SELECT
    uic.id AS uic_id
  , uic.name AS uic_name
  , uic.sortorder AS uic_sortorder
  , uif.id AS uif_id
  , uif.shortname AS uif_shortname
  , uif.name AS uif_name
  , uif.datatype AS uif_datatype
  , uif.description AS uif_description
  , uif.descriptionformat AS uif_descriptionformat
  , uif.categoryid AS uif_categoryid
  , uif.sortorder AS uif_sortorder
  , uif.required AS uif_required
  , uif.locked AS uif_locked
  , uif.visible AS uif_visible
  , uif.forceunique AS uif_forceunique
  , uif.signup AS uif_signup
  , uif.defaultdata AS uif_defaultdata
  , uif.defaultdataformat AS uif_defaultdataformat
  , uif.param1 AS uif_param1
  , uif.param2 AS uif_param2
  , uif.param3 AS uif_param3
  , uif.param4 AS uif_param4
  , uif.param5 AS uif_param5
FROM mdl_user_info_field uif
    INNER JOIN mdl_user_info_category AS uic
        ON uif.categoryid = uic.id
WHERE 1 = 1
ORDER BY uic.sortorder, uif.sortorder
LIMIT 1000;
 
 
-- ## User profile field data.
SELECT
    #uic.id AS uic_id
    uic.name AS uic_name
    #, uic.sortorder AS uic_sortorder
    #, uif.id AS uif_id
  , uif.shortname AS uif_shortname
    #, uif.name AS uif_name
  , uif.datatype AS uif_datatype
    # , uif.description AS uif_description
    # , uif.descriptionformat AS uif_descriptionformat
    # , uif.categoryid AS uif_categoryid
    # , uif.sortorder AS uif_sortorder
  , uif.required AS uif_required
  , uif.locked AS uif_locked
  , uif.visible AS uif_visible
  , uif.forceunique AS uif_forceunique
    # , uif.signup AS uif_signup
  , uif.defaultdata AS uif_defaultdata
    # , uif.defaultdataformat AS uif_defaultdataformat
    # , uif.param1 AS uif_param1
    # , uif.param2 AS uif_param2
    # , uif.param3 AS uif_param3
    # , uif.param4 AS uif_param4
    # , uif.param5 AS uif_param5
    # , uid.id AS uic_id
    #, uid.userid AS uid_userid
    #, uid.fieldid AS uid_fieldid
  , uid.data AS uid_data
    #, uid.dataformat AS uid_dataformat
  , u.username AS u_username
  , u.firstname AS u_firstname
  , u.lastname AS u_lastname
FROM mdl_user_info_field uif
    INNER JOIN mdl_user_info_data uid
        ON uid.fieldid = uif.id
    INNER JOIN mdl_user u
        ON uid.userid = u.id
    INNER JOIN mdl_user_info_category AS uic
        ON uif.categoryid = uic.id
WHERE 1 = 1
AND uif.shortname IN ('upi')
ORDER BY u.username, uic.sortorder, uif.sortorder
LIMIT 1000;
```
