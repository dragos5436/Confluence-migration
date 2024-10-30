# old landing page

## **[Moodle CI handling](Moodle_CI_handling)**

Moodle run by Catalyst in ISD's AWS cloud

-   [AWS Site-to-Site VPN for Moodle](AWS_Site-to-Site_VPN_for_Moodle)
-   [Moodle Integration Manager (MIM) - SITS/CMIS integration](Moodle_Integration_Manager_MIM_-_SITS_CMIS_integration)
-   [AWS Accounts](AWS_Accounts)
-   [LDAPS](LDAPS)
-   [Tableau / ETL Access](Tableau_ETL_Access)
-   [Moodle Resilience](Moodle_Resilience)
-   [SRE Event Investigations](SRE_Event_Investigations)
-   [Root Cause Analysis](Root_Cause_Analysis)
-   [Moodle Testing Strategy](Moodle_Testing_Strategy)

### [Upcoming Releases](Deployments)

-   [Snapshot](https://wiki.ucl.ac.uk/x/ZZuwBw)
-   [Moodle - AAD rollout plan](Moodle_-_AAD_rollout_plan)
-   [Moodle 3.11.10](Moodle_3.11.10) (September 9th 2022 deadline for inclusion)
-   [Moodle 3.11.11](Moodle_3.11.11) (November 11th 2022 deadline for inclusion)

### **[Processes for Standard Requests](Processes_for_Standard_Requests)**

### SQL

### [SQL Queries of Moodle & the UCL Wiki](SQL_Queries_of_Moodle)

### [Problem Management](Problem_Management)

**Agile / DevOps / New Processes**

JIRA

-   [Virtual Learning Environment Features](https://wiki.ucl.ac.uk/display/ED/Virtual+Learning+Environment+Features) - from TI planning
-   **[New Jira Board (VLE)](attachments/219299455/219299451.pptx)**
-   [Moodle JIRA filter](https://ucldata.atlassian.net/issues?filter=20517)
-   [Kanban Board](https://ucldata.atlassian.net/secure/RapidBoard.jspa?rapidView=94)
-   [Moodle Tracker - tracking](Moodle_Tracker_-_tracking)

Plugins

-   [Plugins review checklist](Plugins_review_checklist)
-   [Moodle Plugin Reviews](Moodle_Plugin_Reviews)
-   [LTI Integration checklist](LTI_Integration_checklist)
-   [LTI Integration Reviews](LTI_Integration_Reviews)
-   [UCL Moodle Customisation policy](UCL_Moodle_Customisation_policy)
-   [Enhancement wish list (Plugins, LTI etc)](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=68846902)
-   [Moodle Termly Increment Roadmap](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Moodle+Termly+Increment+Roadmap)

Git

-   [Moodle git Repositories strategy](Moodle_git_Repositories_strategy)
-   [Site Definition](https://git.automation.ucl.ac.uk/moodle/moodle-1819/blob/CATALYST_39_SUBMODULES/build.sh)
-   [New Moodle - Documented changes to core](New_Moodle_-_Documented_changes_to_core)
-   [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)

End User docs

-   [Release Notes](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Release+Notes)
-   [Moodle Termly Increment Roadmap](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Moodle+Termly+Increment+Roadmap)
-   [ISD News](https://www.ucl.ac.uk/isd/)
-   [Education Strategy](https://www.ucl.ac.uk/teaching-learning/education-strategy/)

Security

-   [AG/RG for Moodle and Learning Apps](AG_RG_for_Moodle_and_Learning_Apps)
-   [MDL-RHEL7 SELinux / ACLs / permissions](MDL-RHEL7_SELinux_ACLs_permissions)

Ops

-   [Redis](Redis)
-   [Puppet](Puppet)
-   [Docker / k8s training](Docker_k8s_training)
-   [ProxySQL](ProxySQL)
-   [TMUX](TMUX)
-   [Ansible](Ansible)

Process Improvement Projects

-   [Course lifecycle (& EoY processing)](Course_rollover_course_lifecycle_tools_information_hub)

Other

-   [Review Apps](index)

<!-- -->

-   [Moodle New Starter](Moodle_New_Starter)

On-Prem stuff

-   [Moodle down? Don't panic - start here](To_update_-_Moodle_Trouble_shooting).
-   [Monitoring](Monitoring)

## Moodle 4

### Moodle 4 pre-work

-   Plugins reviews
-   PHP units

### Moodle 4 Theme (UX)

-   [Minimal theme creation Jira epic](https://ucldata.atlassian.net/browse/CTP-1290)
-   [Moodle4UX: consultation, feedback and iteration Jira epic](https://ucldata.atlassian.net/browse/CTP-1291)
-   [Early user feedback (16/08/2022)](Early_user_feedback_16_08_2022_)
-   [Initial minimalist theme review](https://wiki.ucl.ac.uk/display/ISMoodle/Initial+minimalist+theme+review)

## UCL Moodle Environments

**[Moodle Environments & Server Architecture](attachments/219299455/219299450.pptx)**

[ISD CP - Server decommissioning process](https://ucl--bmcservicedesk.eu7.visual.force.com/apex/selfservicenew#/support/search/decom)

<table>
<tbody>
<tr class="odd">
<td><br />
</td>
<td>Moodle</td>
</tr>
<tr class="even">
<td><strong>Snapshot</strong></td>
<td><p>&quot;Moodle Snapshot&quot; Service URL - <a href="https://moodle-archive.ucl.ac.uk/">https://moodle-snapshot.ucl.ac.uk</a></p>
<p>App Servers: <a href="http://mdl-snpsht-ap01.ad.ucl.ac.uk/">mdl-snpsht-ap01.ad.ucl.ac.uk</a></p>
<p>DB: mydb-liva04.ad.ucl.ac.uk </p></td>
</tr>
<tr class="odd">
<td><h4 id="oldlandingpage-Production">Production</h4></td>
<td><p>&quot;Moodle&quot; Service URL - <a href="https://moodle.ucl.ac.uk" class="uri">https://moodle.ucl.ac.uk</a></p>
<p>Admin:</p>
<p>mdl-admin01.ad.ucl.ac.uk (MIM PHP 7.3)</p>
<p>mdl-admin02.ad.ucl.ac.uk (MIM PHP 7.3) - standby</p></td>
</tr>
<tr class="even">
<td><h4 id="oldlandingpage-Pre-Prod/Staging">Pre-Prod / Staging </h4></td>
<td><p>Service URL - <a href="https://moodle-staging.ucl.ac.uk" class="uri">https://moodle-staging.ucl.ac.uk</a> </p>
<p>Admin:</p>
<p>mdl-admin01p.ad.ucl.ac.uk (MIM PHP 7.3)</p>
<p>mdl-admin02p.ad.ucl.ac.uk (MIM PHP 7.3)</p></td>
</tr>
<tr class="odd">
<td><strong>Preview</strong></td>
<td><p><a href="http://mdl-preview01u.ad.ucl.ac.uk/">mdl-preview01u.ad.ucl.ac.uk</a></p></td>
</tr>
<tr class="even">
<td><strong>Integration Development (INT-DEV)</strong></td>
<td><ul>
<li>Docker - <a href="https://github.com/moodlehq/moodle-docker" class="uri">https://github.com/moodlehq/moodle-docker</a> + ISD VPN link to Moodle &amp; MIM databases on Preview</li>
</ul></td>
</tr>
<tr class="odd">
<td><p><strong>Development</strong> (DEV)</p></td>
<td><ul>
<li>Docker - <a href="https://github.com/moodlehq/moodle-docker" class="uri">https://github.com/moodlehq/moodle-docker</a></li>
</ul></td>
</tr>
<tr class="even">
<td>CI Infrastructure (DevOps managed)</td>
<td><p>Jenkins Agent: </p>
<ul>
<li>mdl-jenkins01.ad.ucl.ac.uk</li>
</ul>
<p>CI runners - moodle-runner-large:</p>
<ul>
<li>mdl-ci-run01.ad.ucl.ac.uk</li>
<li>mdl-ci-run02.ad.ucl.ac.uk </li>
</ul>
<p>CI runners - moodle-runner-small (ex PP Backend - still run maximapool for Preview)</p>
<ul>
<li><a href="http://mdl-backend01p.ad.ucl.ac.uk">mdl-backend01p.ad.ucl.ac.uk</a></li>
<li><a href="http://mdl-backend02p.ad.ucl.ac.uk">mdl-backend02p.ad.ucl.ac.uk</a></li>
</ul>
<p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Docker Infrastructure for other services</p>
<p>(Wiki, MyPortfolio &amp; Opinio)</p></td>
<td><p>Prod - Docker - <a href="http://wiki-app01.ad.ucl.ac.uk">wiki-app01.ad.ucl.ac.uk</a> / DB - <a href="http://mydb-liva04.ad.ucl.ac.uk">mydb-liva04.ad.ucl.ac.uk</a> </p>
<p>Pre-Prod - Docker - <a href="http://wiki-app01p.ad.ucl.ac.uk">wiki-app01p.ad.ucl.ac.uk</a> / DB - <a href="http://mydb-prea02.ad.ucl.ac.uk">mydb-prea02.ad.ucl.ac.uk </a></p>
<p>Test - <a href="http://wiki-app01u.ad.ucl.ac.uk">wiki-app01u.ad.ucl.ac.uk</a> </p></td>
</tr>
</tbody>
</table>

**Old stuff**

## Moodle Deployment

-   [Creating a dev instance of moodle](Creating_a_dev_instance_of_moodle)
-   [Moodle dev/uat/PP post process](Moodle_dev_uat_PP_post_process)
-   [Upgrade steps](Upgrade_steps_example_) ([Alternative GIT and CLI method](Moodle_update_upgrade_-_alternative))

### Moodle Archive

-   [Moodle archive preparation guidelines - OLD](Moodle_archive_preparation_guidelines_-_OLD)
-   [Archive actions and year-end processes](Archive_and_year-end_process_-_actions_required)
-   [And the official moodle docs on migration](http://docs.moodle.org/20/en/Moodle_migration)

------------------------------------------------------------------------

## [Testing](Testing)

-   [Upgrade test template](Moodle_X.X.X_Testing_-_Pre_Post_upgrade_-_TEMPLATE)
-   [List of current testing scripts](https://wiki.ucl.ac.uk/display/ISMoodle/Tests)
-   [Acceptance testing for Moodle using behat](Acceptance_testing_for_Moodle_using_behat)

## [Operational](Operational)

-   [Unenrol student coming from Portico enrolment](Unenrol_student_coming_from_Portico_enrolment)
-   [General Moodle Issues and Fixes](General_Moodle_Issues_and_Fixes)
-   [Plugins update page keeps appearing when logging in as admin](Plugins_update_page_always_appearing_when_logging_in_as_admin) (even though no plugins have been updated)
-   [Moodle VM's Retention/Backups/Recovery](Moodle_VM_s_Retention_Backups_Recovery)

------------------------------------------------------------------------

## [Integrations/Plugins](Integrations_and_in-house_plugins)

-   [CMIS group import](CMIS_-_Moodle_Integration)
-   [WebPA](https://wiki.ucl.ac.uk/display/ISMoodle/WebPA)
-   [MathJax Filter - How To Use](MathJax_Filter_-_How_To_Use)
-   [MyFeedback](Moodle_MyFeedback)
-   [SITS filter](SITS_filter)
-   [OLM](OLM)
-   [CourseBank](CourseBank)
-   [Automated deletion of courses inactive for 365 days or more](Automated_deletion_of_courses_inactive_for_365_days_or_more)
-   [Moodle Plugin Reviews](Moodle_Plugin_Reviews)

------------------------------------------------------------------------

## [Configuration](Configuration_logs_and_HLD_s_etc)

-   [Learning & Teaching Applications Servers and Databases Details](../ISMoodle/Learning_Teaching_Applications_Servers_and_Databases_Details)
-   [Moodle environments](https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+environments)
-   [plugins](https://wiki.ucl.ac.uk/display/ISMoodle/plugins)
-   [SSL certificate](https://wiki.ucl.ac.uk/display/ISMoodle/SSL+certificate)

------------------------------------------------------------------------

## Quick Links

**Release Schedule**

-   [RDE Learning release schedule](https://wiki.ucl.ac.uk/display/ISAppsDev/RDE+Learning+release+schedule)

**VLE Meetings**

-   [RDE Applications Service Meetings](https://wiki.ucl.ac.uk/display/ISAppsDev/RDE+Applications+Service+Meetings)
-   [Daily Stand up running Agendas and Notes](https://wiki.ucl.ac.uk/display/ECARC/Daily+Stand+up+running+Agendas+and+Notes)

------------------------------------------------------------------------

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Cloud and future.pptx](attachments/219299455/219299450.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V5.pptx](attachments/219299455/219299451.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V4.pptx](attachments/219299455/219299452.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V3.pptx](attachments/219299455/219299453.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Scaling Moodle @UCL 31March2009.html](../219299455/) (text/html)

