# 01/06/22 - CLC incremental release

Release date: Wednesday 1st June 2022 1am-2am

Release Lead: Alistair Spark

Deadline to add changes to this release: Friday 27th May 2022 11am

Deadline to handover release to Catalyst: Friday 27th May 2022 4pm

Must sign-off staging deployment by: Monday 30th May 2022 5pm

<https://wrms.catalyst.net.nz/wr.php?request_id=382805>

1) CLC plugin suite updates

-   Deploy latest local\_course\_rollover improvements before go-live - verify before doing final build
-   Deploy latest local\_clc\_admin improvements before go-live - verify before doing final build
-   Turnitin mod clc pre-requisites must be applied - <https://git.automation.ucl.ac.uk/moodle/moodle-mod_turnitintooltwo/-/tree/CTP-1005> - see outcome of testing in [CTP-1086](https://ucldata.atlassian.net/browse/CTP-1086)
-   Include significant work on Portico Enrolments block - merged already.

2) Other changes included in the release

-   Add <https://github.com/catalyst/moodle-tool_excimer>

→ PHP excimer extension must be installed

-   in Cat Docker → <https://wrms.catalyst.net.nz/wr.php?request_id=382330>
-   on preview → <https://ucl.lightning.force.com/apex/BMCServiceDesk__ConsoleRouting?objectName=Incident&record_name=05310179&record_id=a1N070000011RrL&isdtp=vw&isServiceCloudConsole=true>

mod\_attendance, qformat\_wordtable, qtype\_varnumeric, qtype\_varnumericset & gtype\_varnumunit back to tracking upstreams

PHPUnit/behat improvements to core since 3.11.7 - no bug fixes

3) Changes to settings:

Component

Setting name

Reason

[local\_courserollover](https://moodle.ucl.ac.uk/admin/settings.php?section=local_courserollover)
'enabled' =&gt; 0', - it is important to disable this plugin until categories are  generated

'enable\_roleid\_1' =&gt; '0',

'enable\_roleid\_2' =&gt; '0',

'enable\_roleid\_3' =&gt; '0',

'enable\_roleid\_4' =&gt; '0',

'enable\_roleid\_5' =&gt; '0',

'enable\_roleid\_6' =&gt; '0',

'enable\_roleid\_7' =&gt; '0',

'enable\_roleid\_8' =&gt; '0',

'enable\_roleid\_14' =&gt; '0',

'enable\_roleid\_23' =&gt; '0',

'enable\_roleid\_27' =&gt; '0',

'enable\_roleid\_29' =&gt; '0',

'enable\_roleid\_37' =&gt; '0',

'enable\_roleid\_41' =&gt; '0',

'enable\_roleid\_42' =&gt; '0',

'enable\_moduleid\_2' =&gt; '0',

'enable\_moduleid\_27' =&gt; '0',

'enable\_moduleid\_31' =&gt; '0'; 

'enable\_moduleid\_41' =&gt; '0',

'course\_category' =&gt; '598', -  this is the "Temporary 22/23 Courses" category

'current\_academic\_year\_start' =&gt; '2021-09-01',

'current\_academic\_year\_end' =&gt; '2022-06-30',

'academic\_year\_start' =&gt; '2022-09-01',

'academic\_year\_end' =&gt; '2023-06-30'

Roles to exclude from course rollover.

Activities to exclude from course rollover (Collaborate, Zoom & legacy Assignment 2.2)

[local\_ucl\_clc\_admin](https://moodle.ucl.ac.uk/admin/settings.php?section=local_ucl_clc_admin)
'stutalkUsername' =&gt; 'STUTALK\_MDL',

'stutalkPassword' =&gt; '', - SET TO RELEVANT PASSWORD

'elevatedMemoryLimit' =&gt; '2048M',

'stutalkFacultiesEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_FAC',

'stutalkDepartmentsEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_DPT',

'stutalkWeeksEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_AYW',

'stutalkModOccurrenceEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_MAV/AYR\_CODE/',

'stutalkModuleDataEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_MAV/MDL\_CLC\_MOD',

'stutalkProgrammesEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_CLC\_PRG',

'stutalkRoutesEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_CLC\_ROUTE',

'stutalkValidCourseOptionsEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_CLC\_VALIDCRS',

'stutalkCoursesEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_GET\_CLC\_COURSE',

'interCollegiateModulesEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_MODS\_ICOLL',

'modulesByFacultyCodeEndpoint' =&gt; 'https://stutalk.ucl.ac.uk/urd/sits.urd/run/SIW\_RWS/MDL\_CLC\_MODS\_BY\_FACC/MOD\_FACC/'

[block\_portico\_enrolments](https://moodle.ucl.ac.uk/admin/settings.php?section=blocksettingportico_enrolments)
'academicyear' =&gt; '2021',

'courserolloveracademicyear' =&gt; '2022',

[Course Custom Fields](https://moodle.ucl.ac.uk/course/customfield.php)
Edit "Course Alignment Type"

Remove these 2 lines:
Miscellaneous/Supplementary resource
Timeless

**4) Configuration Steps**

Create category with 'Category Name' of "2021" at <https://moodle.ucl.ac.uk/course/editcategory.php?parent=0>

Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=local_ucl_clc_admin> and set 'categoryRolesCopySource' to 'Use  mdl\_clc\_cat\_mappings\_across\_yrs DB mappings table'

Go to <https://moodle.ucl.ac.uk/local/ucl_clc_admin> , select '2021' category and and then click on "Import SITS data" with "Copy Category permissions during import" selected in the dropdown

Create category with 'Category Name' of "2022" at <https://moodle.ucl.ac.uk/course/editcategory.php?parent=0>

Wait for 2021 Category to be created.  Can see ad-hoc task running here - <https://moodle.ucl.ac.uk/admin/tool/task/runningtasks.php>

Can review creation logs at <https://moodle.ucl.ac.uk/admin/tasklogs.php?filter=local_ucl_clc_admin%5Ctask%5Cimportsitsdata_task&result=-1>

Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=local_ucl_clc_admin> and set 'categoryRolesCopySource' to 'Use built-in naming convention'

Once completed successfully, go to <https://moodle.ucl.ac.uk/local/ucl_clc_admin> , select '2022' category and and then click on "Import SITS data" with "Copy Category permissions during import" selected in the dropdown

Wait for 2022 Category to be created.  Can see ad-hoc task running here - <https://moodle.ucl.ac.uk/admin/tool/task/runningtasks.php>

Can review creation logs at <https://moodle.ucl.ac.uk/admin/tasklogs.php?filter=local_ucl_clc_admin%5Ctask%5Cimportsitsdata_task&result=-1>

Once all good, local\_courserollover enabled setting can be set to Yes. 

5) Permissions

| Permission                    | Role                                     | Desired state              |
|-------------------------------|------------------------------------------|----------------------------|
| local/courserollover:rollover | -   Exams Office                         
                                            
  -   Student Connected Learning Assistant  
                                            
  -   stock-manager                         
                                            
  -   stock-teacher                         | Not set (instead of Allow) |

**Release Notes:**

**New: - Course Rollover**

-   Miniguide: M30a - Duplicating your Moodle course with the CLC rollover tool
-   Blog Post: https://blogs.ucl.ac.uk/digital-education/2022/05/11/goodbye-to-moodle-snapshots/

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/205621849/205621846.png) (image/png)

