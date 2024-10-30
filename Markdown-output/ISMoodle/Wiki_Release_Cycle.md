# Wiki Release Cycle

The following are the types of changes expected for Wiki

-   Minor release
-   Infrastructure update (container rebuilds, etc)
-   Major release
-   Zero day critical security updates

**Minor release**

The SRE team should:

Confluence release minor release multiples times through the month.  Before each sprint planning session, check if there is a new minor release available, if so, then stories should be added to the sprint to complete the upgrade.  Minor release normally just contain bug and security fixes.

-   Prepare Wiki UAT image for minor release
-   Deploy to wiki-uat
-   Prepare Wiki PP image for minor release
-   Deploy to wiki-pp
-   Complete wiki-pp smoke testing
-   Schedule outage.  Submit CR and arrange comms
-   Complete production upgrade
-   Complete post upgrade smoke testing
-   Release site

**Infrastructure update (container rebuilds, etc)**

The SRE team should:

-   Ensure that monthly patching is completed successfully and there is no additional downtime to the service

**Major release**

Confluence release a major version release around every 2 months.  Before each sprint planning, check if there is a new minor release available, if so, then stories should be added to the sprint to complete the upgrade.  As well as bug and security fixes, major upgrades also include new functionality and features that should be documented and made available to the end users

-   Prepare Wiki UAT image for minor release
-   Deploy to wiki-uat
-   Prepare Wiki PP image for minor release
-   Deploy to wiki-pp
-   Complete wiki-pp smoke testing
-   Schedule outage.  Submit CR and arrange comms
-   Complete production upgrade
-   Complete post upgrade smoke testing
-   Release site

**Zero day critical security updates**

Upgrade must happen ASAP when notified by Atlassian on critical security advisories.

-   Assess severity and availability of a fix (if a fix is available then skip ahead to preparing image and scheduling a window to deploy this fix)
-   Notify ISG - and Duty Manager if decision taken to take Wiki offline in conjunction with ISG
-   Stop the wiki service (if applicable)
-   Prepare Wiki UAT image for minor release
-   Deploy to wiki-uat
-   Prepare Wiki PP image for minor release
-   Deploy to wiki-pp
-   Complete wiki-pp smoke testing
-   Complete production upgrade
-   Complete post upgrade smoke testing
-   Release site
-   Submit emergency CR

