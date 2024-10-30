# CMIS config parameters

The UCL-specific configuration parameters used to control processing (and that need to be set in the /Config/app\_local.php file) are:

-   MoodleRest: This is an array with elements:

    -   wstoken: Moodle Web Services auth token (you can get this by querying the Moodle database directly, or via admin screens in Moodle)
    -   endpoint: The URI of the Moodle REST endpoint for the instance of Moodle you want MIM to interface with
    -   restformat: REST data exchange format. Set this to 'json'
    -   httpClientTimeoutInSeconds: Timeout (in seconds) for MIM REST requests used by the MIM REST client when it interacts with Moodle's REST service.
    -   referenceDataRestBatchSize: Depending on the configuration of the Moodle instance MIM is interacting with (e.g. its web server request timeout, or max request size etc), errors may occur in Moodle when MIM requests too much data in a single REST request. This parameter is used when making REST requests to Moodle for user information to split large requests into a series of smaller ones to avoid failure.

-   insertBatchSize: At various points during the MIM run, data from other systems is needed and therefore imported into the MIM MySQL database (for instance CMIS data, SITS data and Moodle data) using SQL. To minimise the risk of errors during data imports, this parameter sets a maximum limit on the number of records MIM will attempt to import in a single batch.

-   elevatedMemoryLimit: MIM increases the maximum allowed memory PHP consumes when it executes by setting the ini value for 'memory\_limit' to the value of this variable.

-   importMoodleDataViaRest: The previous version of the MIM interface interacts with Moodle via its REST interface alone - whilst this is good practice, the time it takes to fetch data via Moodle's REST API poses efficiency issues for the operation of MIM in a timely manner. This parameter gives operators the opportunity to choose to extract Moodle reference data for users, groups and group membership directly from the Moodle database. The risks introduced by enabling this parameter are minimal (because it is read-only to three tables that are very stable), however the benefit is a decrease by orders of magnitude in the amount of time needed to process CMIS groups. Set this parameter to 'N' to access Moodle reference data directly in the Moodle database ( and also remember to supply a database account/credentials in the config file to enable such access).

-   prefixDigitsPerDataPartition: If you choose to access Moodle reference data via REST alone (by setting importMoodleDataViaRest to 'Y'), use this parameter to partition that retrieval of Moodle reference data into partitions that MIM can manage without timing out. It represents the power of 10 that the data to read will partitioned into. For example setting it to 3 means MIM will try to read the Moodle reference data it needs by splitting it into 1,000 (10^3) parts, likewise setting the value to 2 will cause the data to be read in 100 (10^2) parts.

-   XMLSourceId: The value that appears in the tag in the XML data exported by the MIM SITS filter.

-   checkEnrolmentsBeforeAddingUsersToGroup: When MIM calls the Moodle REST API endpoint to add members to groups, multiple users are sent as group members to be added. Moodle requires group members to be enrolled on the course for the group prior to adding them to be group. If any of the group members to be added in a call is not enrolled, the whole call fails (affecting members that may be enrolled). This parameter gives the opportunity to enforce checks that users are enrolled before requesting they are added to groups to avoid this type of failure. This parameter exists because there is a time-based cost to checking enrolment, and allows operators of the MIM interface to balance these costs and benefits.

-   Datasources: Database details and credentials needed to access the various databases MIM interacts with. This array must contain entries for:

    -   default: The MIM database
    -   moodle: When importMoodleDataViaRest is set to 'N'
    -   cmis
    -   portico

    When running unit tests, further entries will be needed for:

    -   test: MIM unit test database
    -   test\_moodle: Moodle unit test db
    -   test\_cmis: CMIS unit test db
    -   test\_portico: SITS unit test db

-   EmailTransport: Mail server configuration needed to allow MIM send email notification.

-   onlyProcessListedMoodleCourses: When set to Y, only courses with Moodle Id listed in the parameter moodleCoursesToProcess will be processed by the CMIS filter

-   takeBeforeAndAfterSnapshotsOfMoodleGroupData: When set to Y, copies of moodle group tables (mdl\_groups, mdl\_groups\_members, mdl\_groupings\_groups, mdl\_groupings) will be taken before and after CMIS group processing to allow analysis.

-   removeMoodleGroupMembersNotSeenInCMIS: When set to Y, any group members that appear in Moodle but are not in CMIS (for instance if the member was removed in CMIS, or the member was manually added in Moodle) will be removed from the Moodle group.

-   treatMoodleGroupsAsEquivalentWhenNamesMatch: When set to Y, CMIS group members will be merged into existing Moodle groups with the same name

-   allowStudentRecordsWithMissingFields: Some student records from SITS are missing required fields like email and first name. This config param allows operators to permit these incomplete records to go through to Moodle from SITS.


