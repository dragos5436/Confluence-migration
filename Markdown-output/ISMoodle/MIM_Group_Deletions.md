# MIM Group Deletions

### Impact assessment:

323 courses were affected (of 14 000 so 2.3%)

1700 groups were deleted. These had been created by MIM in September/October/November 2020.

So the affected Moodle courses would be Term 1 2020-21 courses.

Key dates:

19/11/2020 Global Deactivation for Term 1

30/11/2020 SITS CI

|→ recovered MIM database from 26/11/2020 both on prod & staging.

MIM database on staging:

-   113 Active Mappings (courses)
-   28 group\_import ADD mappings → 11 courses (562, 563, 2915, 6202, 7810, 12027, 23108, 23187, 23188, 23189, 23803)
-   1 group\_import RMV

So, 312 courses affected where mappings weren't set to sync.

**The email output from that particular run (start 26/02 10am - finish 4:25pm 27/02)**

``` java
mdl-admin02p.ad.ucl.ac.uk: CMIS Groups Import has completed.



---------- Execute runCmisCronJob ----------

Cron job commenced at 10:10:49 26-02-2021

Start: 10:10:49.000000
Memory: 3.49919MiB

Checking Oracle Connection:Oracle Connection check Succeeded

----------------------
Running Groups Import: 10:10:49.000000

----------------------Running Group Members Import: 10:10:49.000000
----------------------Create Groups: 10:11:28.000000Start rest call to Moodle - get groups: 10:12:48.000000
----------------------Start rest call to Moodle - get groupings: 10:12:48.000000
----------------------Start rest call to Moodle - create groups: 10:12:48.000000-- Could not find any new groups that are linked to mapped courses, that need to be add in Moodle -- 
----------------------Create Groupings: 10:12:48.000000Start rest call to Moodle - create groupings: 10:12:48.000000-- No groupings to add in Moodle-- 

----------------------
Assign Group to Grouping: 10:12:48.000000
Start rest call to Moodle - assign groupings: 10:12:48.000000
-- No groupings/groups to assign in Moodle-- 

----------------------
Get enrolled users for a course: 10:12:48.000000
Start rest call to Moodle - get enrolled users to courses: 10:12:48.000000
-- No group members to add/delete in Moodle--
----------------------
Delete Groups: 10:12:48.000000
Start rest call to Moodle - delete groupings and delete groups: 10:13:27.000000
Delete Groupings in Moodle: success
Deleted groupings count :: 1950
Delete Groups in Moodle: success
Deleted groups count :: 2085


End: 16:25:32.000000

---------- Finished runCmisCronJob ----------
```

### Next steps

This suggests that we can proceed with the Term 2 global deactivation because none of the deleted groups could be recovered through running MIM CMIS sync with the current mappings.

We will come up with a plan to re-create deleted groups in bulk. **→ SB**

We need to assess impact where groups are re-created, how does that impact assignments, forums, etc and other activities where split into groups.

Does data just re-appear?

Do we need to do anything about re-matching group/grouping IDs for Moodle to display this? 

**→ DK**

### Root Cause:

MIM was tested in pre-production/staging against the upgraded SITS (SISU2) on Friday 26th February.

The SITS cron job completed successfully. The CMIS job was then ran & completed over the weekend of the 27th & 28th February 2021.

The network isolation for database access ensured that the testing in preprod/staging could not affect prod for the SITS job.

Unfortunately, the web service component of the CMIS sync did not have any enforced isolation from prod. The measures in place were bypassed by copying the code from prod, rather than cloning from the git repository.

As a result the CMIS job ran using the staging moodle\_int\_management database (and it's mappings), the SISU2 SITS data and the GENU CMIS data, but instead of making web service calls to moodle staging was able to make them to Moodle Prod. Resulting in the deletion of many groups/group memberships.

Avoiding this in the future:

The code management approach was designed to avoid this happening, by forcing the 2 config files for WS to be manually created consciously (app/Controller/RestConfig.php & app/Config/config\_settings.php) but no hard coded guard rails allowed for the isolation to be enforced. 

A way forward would be to blackhole any connection attempts from the Pre-Prod Admin servers to Moodle Prod in the host files. → has been requested [04612364](https://ucl.lightning.force.com/apex/BMCServiceDesk__ConsoleRouting?objectName=Incident&record_name=04612364&record_id=a1N3W000001J61A&isdtp=vw&isServiceCloudConsole=true)


