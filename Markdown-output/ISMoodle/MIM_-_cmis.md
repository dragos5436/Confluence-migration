# MIM - cmis

### New features

This new version of the MIM interface contains a primitive Domain Specific Language (DSL) implementation that allows interaction with some of the data used by the interface and some new features which apply to live and test envioroments on MIM.

### All DSL commands available on cli:

-   Show module-group relationships data **./bin/cake module\_bdoid\_list -g BARC0174**

-   Show course map list **./bin/cake course\_map\_list**

-   Show module list **./bin/cake module\_list -m MATH0002**

-   Show student-group relationship **./bin/cake student\_bdoid\_list -s 12984**

-   Show student-module-dept-group relationship data **./bin/cake student\_list -s 129850**

### Testing features:

-   **Take before and after Snapshots of Moodle group data:** When set to Y, copies of moodle group tables (mdl\_groups, mdl\_groups\_members, mdl\_groupings\_groups, mdl\_groupings) will be taken before and after CMIS group processing to allow analysis.
-   **Only process listed Moodle courses:** When set to Y, only courses with Moodle Id listed in the parameter moodleCoursesToProcess will be processed by the CMIS filter

### Live Features:

-   **Check enrolments before adding users to a group:** When MIM calls the Moodle REST API endpoint to add members to groups, multiple users are sent as group members to be added. Moodle requires group members to be enrolled on the course for the group prior to adding them to be group. If any of the group members to be added in a call is not enrolled, the whole call fails (affecting members that may be enrolled). This parameter gives the opportunity to enforce checks that users are enrolled before requesting they are added to groups to avoid this type of failure. This parameter exists because there is a time-based cost to checking enrolment, and allows operators of the MIM interface to balance these costs and benefits.
-   **Remove Moodle group members not seen in CMIS:** When this feature is active (set to Y), any group members that appear in Moodle but are not in CMIS (for instance if the member was removed in CMIS, or the member was manually added in Moodle) will be removed from the Moodle group. The default setting in not active (set to N). 
-   **Treat Moodle Groups As Equivalent When Names Match:** When set to Y, CMIS group members will be merged into existing Moodle groups with the same name
-   **Allow Student Records With Missing Fields:** Some student records from SITS are missing required fields like email and first name. This config param allows operators to permit these incomplete records to go through to Moodle from SITS.

For a full list of CMIS features and changes to the code please click [here](https://wiki.ucl.ac.uk/display/ISMoodle/CMIS+config+parameters).

**Moodle and CMIS interaction**

When using the group import function in the Portico enrollment block **it's important to understand how Moodle and CMIS interact**.

-   Group synchronisation currently only synchronises module sub groups, such as tutorials, seminars and labs attached to a particular module. Class groups, which are groups not belonging to a particular module that are set at the programme level, are not synchronised currently.
-   For groups in Moodle to be synchronised with CMIS groups, they must have been created using the 'Allow Group Import' check box option for given mapped modules . Groups created in Moodle using other methods will not synchronise with CMIS group information.
-   If a group (not created by CMIS import) already exists in Moodle with the same name as a group in CMIS, the import process will detect this and log it as an error but continue the rest of the group import process.
-   When groups sync is turned off for a module (either by un-checking the 'Allow Group Import' check box or by removing a module mapping entirely) the associated groups are not deleted. The only way to preserve groups is to de-activate the mapping altogether.
-   If a group name changes in CMIS it will not change in Moodle but the underlying group mapping will be the same, CMIS Names must be changed manually in Moodle.
-   Identically named groups are merged when the 'treatMoodleGroupsAsEquivalentWhenNamesMatch' CMIS setting is set to 'Y', students will be merged in to the group. If the setting is set to 'N' merging will not occur and both identically name groups will remain.
-   The CMIS group import process does not enroll students on courses. The only students who will be added to groups in Moodle are those who are already in the course, which is primarily govern by that module's set up in Portico.
-   If a group is deleted in Moodle, it will not be recreated by the CMIS import if the group was manually created.
-   If a student changes groups, this happens by deleting them from one group and recreating them in another. As such, any data that is lost as a result of removing a student from a group will be lost in this process.


