# Portico-Moodle V2 - requirements

An area for ELE core to get down requirements from our end as to what a well working SITS filter would do.

**Future improvements**

-   allow academics to run report to find out courses with Portico enrolments - group/filter by Program or Moodle Category
-   Moodle courses identified via 'Course Short name'
-   automatic assignment of tutor to course as well as students
-   Option for students to manually un-enrol, if Portico records have been updated
-   generate an dynamic list of current mappings - currently possible via Db query
-   ability to see, within Moodle users, which portico module code an individual enrollment has come from - probably not possible with current IMS functionality
-   Housekeeping to keep mappings table/s up to date - no old records

**Implemented with SITS V2**

-   ability for academics to switch on/off Portico enrolments per course/category (if fully automated)
-   allow academics to map their own courses (not having ELE map using the SITS filter)
-   transparency in each Moodle course to see if mapping is On or Off
-   one to one, one to many and many to one mappings possible.
-   automatic unenrolment of students
-   possibility to query AD? - are student/module relationships held in Active Directory?
-   ability to map to Programs, not just Portico modules.


