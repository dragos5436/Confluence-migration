# MyPortfolio Release Cycle

There are 4 types of changes expected for MyPortfolio, we have so far focused our discussions on the first 3:

-   Mahara Minor Release
-   Infrastructure update (container rebuilds, etc)
-   Mahara Major Release
-   New Mahara plugin

Now that MyPortfolio has been re-implemented in Docker & pipelines we are able to finally support this service to the same standard as Moodle has been for a number of years with regular minor releases and appropriate patching & maintenance of the infrastructure. This page lays out the agreed standards for MyPortfolio. It is important to keep in mind with the following that we should only be doing small changes regularly, not batching many big changes - so **only one of these should be happening per deployment.**

I\] Mahara Minor Release

The SRE team should:

-   prepare minor release Docker image
-   deploy it on **pre-prod**
-   complete smoke testing 
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) 
-   schedule outage with CR, ISD News, etc as per [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)
-   complete the upgrade in prod
-   complete smoke testing 
-   release site
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) in prod.

These are minor security / bug fix releases which SRE should fully own and deploy as soon as available. 

II\] Infrastructure update

The SRE team should:

-   prepare updated Docker image 
-   deploy it on **pre-prod**
-   complete smoke testing 
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) 
-   schedule outage with CR, ISD News, etc as per [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)
-   complete the upgrade in prod
-   complete smoke testing 
-   release site
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) in prod 

The SRE team must hold itself accountable to ensure these goes smoothly, within the defined outage window.

This includes monthly container patching - a more streamlined / automated process should be designed by SRE team for that.

III\] Mahara Major Release

The SRE team should:

-   prepare major release Docker image **once the major version has it's first minor update made available** e.g. 22.04.1 - not 22.04.0 
-   ensure mahara plugins are updated & fixed for the major version
-   deploy it on **uat** with a copy of prod database & data
-   complete smoke testing 
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) 
-   add a story to the "VLE Services Operational" Epic to review the new version

Worth noting:

-   we are comfortable with upgrading major versions twice a year
-   needs LT testing time with the new features so this must go to **uat** (wiki-app01u) to ensure pre-prod remains clear for any minor releases, patching & infrastructure updates which may need to be applied.
-   **SRE prepares the new version but VLE Services decides wether & when to go live with it**

Once a greenlight is given for the new version, it can then progress as usual:

-   deploy it on **pre-prod**
-   complete smoke testing 
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) 
-   schedule outage with CR, ISD News, etc as per [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)
-   complete the upgrade in prod
-   complete smoke testing 
-   release site
-   complete [manual testing script](MyPortfolio_manual_testing_script_for_minor_upgrade) in prod.

IV\] New Mahara plugin

Moodle [Plugins review checklist](Plugins_review_checklist) can probably be used for this. 

Request flow of new functionality is limited so can deal with this as & when on a case by case.


