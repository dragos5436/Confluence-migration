# Moodle

**SRE/Ops**

## **[Moodle CI handling](Moodle_CI_handling)**

Moodle run by Catalyst in ISD's AWS cloud

-   **[OPS Activities](OPS_Activities)**
-   [SRE Event Investigations](SRE_Event_Investigations)
-   [Root Cause Analysis](Root_Cause_Analysis)
-   [Moodle Testing Strategy](Moodle_Testing_Strategy)
-   [Shared System Documentation with Catalyst](https://git.catalyst-eu.net/ucl/moodle/-/wikis/home)
-   [AWS Site-to-Site VPN for Moodle](AWS_Site-to-Site_VPN_for_Moodle)
-   [Moodle Integration Manager (MIM) - SITS/CMIS integration](Moodle_Integration_Manager_MIM_-_SITS_CMIS_integration)
-   [AWS Accounts](AWS_Accounts)
-   [Tableau / ETL Access](Tableau_ETL_Access)
-   [Moodle Resilience](Moodle_Resilience)
-   [Cloud Moodle Preview - AWS ECS Documentation](Cloud_Moodle_Preview_-_AWS_ECS_Documentation)

### [Upcoming Deployments](Deployments)

-   [Feature Release - 19/09/24](Feature_Release_-_19_09_24)
-   [Moodle 4.4.x](Moodle_4.4.x)
-   [Moodle 4.3.4](Moodle_4.3.4)

<!-- -->

-   [Moodle 4.3 Preview instance refreshes (post-upgrade)](Moodle_4.3_Preview_instance_refreshes_post-upgrade_)

### **[Processes for Standard Requests](Processes_for_Standard_Requests)**

### SQL

### [SQL Queries of Moodle & the UCL Wiki](SQL_Queries_of_Moodle)

### [Problem Management](Problem_Management)

**Agile / DevOps / New Processes**

-   [Moodle Tracker - tracking](Moodle_Tracker_-_tracking)
-   [Enhancement wish list (Plugins, LTI etc)](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=68846902)

Git

-   [Moodle git Repositories strategy](Moodle_git_Repositories_strategy)
-   [New Moodle - Documented changes to core](New_Moodle_-_Documented_changes_to_core)
-   [Change Deployment plan for Learning Apps](Change_Deployment_plan_for_Learning_Apps)
-   [ISD News](https://www.ucl.ac.uk/isd/)

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
-   [LDAPS](LDAPS)

Other

-   [Review Apps](index)

## UCL Moodle Environments

**[Moodle Environments & Server Architecture](attachments/1015981/219294085.pptx)**

[ISD CP - Server decommissioning process](https://ucl--bmcservicedesk.eu7.visual.force.com/apex/selfservicenew#/support/search/decom)

<table>
<tbody>
<tr class="odd">
<td><br />
</td>
<td>Moodle</td>
<td>EOL / renewal</td>
</tr>
<tr class="even">
<td><strong>Snapshot</strong></td>
<td><p>&quot;Moodle Snapshot&quot; Service URL - <a href="https://moodle-archive.ucl.ac.uk/">https://moodle-snapshot.ucl.ac.uk</a></p>
<p>App Servers: <a href="http://mdl-snpsht-ap01.ad.ucl.ac.uk/">mdl-snpsht-ap01.ad.ucl.ac.uk</a></p>
<p>DB: mydb-liva04.ad.ucl.ac.uk </p></td>
<td><div class="content-wrapper">
<p>CTP-657 - TI2 24-25 Cloud migration of mdl-snapshot infrastructure Backlog</p>
<p>May 2023</p>
</div></td>
</tr>
<tr class="odd">
<td><h4 id="Moodle-Production">Production</h4></td>
<td><p>&quot;Moodle&quot; Service URL - <a href="https://moodle.ucl.ac.uk" class="uri">https://moodle.ucl.ac.uk</a></p>
<p>Admin:</p>
<p>mdl-admin01.ad.ucl.ac.uk (MIM PHP 7.3)</p>
<p>mdl-admin02.ad.ucl.ac.uk (MIM PHP 7.3) - standby</p></td>
<td><div class="content-wrapper">
<p>CTP-656 - Dockerize and Cloud Migration of MIM To Do</p>
<p>May 2023</p>
</div></td>
</tr>
<tr class="even">
<td><h4 id="Moodle-Pre-Prod/Staging">Pre-Prod / Staging </h4></td>
<td><p>Service URL - <a href="https://moodle-staging.ucl.ac.uk" class="uri">https://moodle-staging.ucl.ac.uk</a> </p>
<p>Admin:</p>
<p>mdl-admin01p.ad.ucl.ac.uk (MIM PHP 7.3)</p>
<p>mdl-admin02p.ad.ucl.ac.uk (MIM PHP 7.3)</p></td>
<td><div class="content-wrapper">
<p>CTP-656 - Dockerize and Cloud Migration of MIM To Do</p>
<p>May 2023</p>
</div></td>
</tr>
<tr class="odd">
<td><strong>Preview</strong></td>
<td><p>https://*.preview-moodle.ucl.ac.uk in AWS Cloud managed by UCL VLE Team</p>
<p>List of <a href="Moodle_Preview_AWS_Instances">Moodle Preview AWS Instances</a></p>
<p>Docs: <a href="Cloud_Moodle_Preview_-_AWS_ECS_Documentation">Cloud Moodle Preview - AWS ECS Documentation</a></p></td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td><strong>Integration Development (INT-DEV)</strong></td>
<td><ul>
<li>Docker - <a href="https://github.com/moodlehq/moodle-docker" class="uri">https://github.com/moodlehq/moodle-docker</a> + tunnel to Moodle &amp; MIM databases on Cloud Preview</li>
</ul></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p><strong>Development</strong> (DEV)</p></td>
<td><ul>
<li>Docker - <a href="https://github.com/moodlehq/moodle-docker" class="uri">https://github.com/moodlehq/moodle-docker</a></li>
</ul></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>Docker Infrastructure for other services</p>
<p>(Wiki, MyPortfolio &amp; Opinio)</p></td>
<td><p>Prod - Docker - <a href="http://wiki-app01.ad.ucl.ac.uk">wiki-app01.ad.ucl.ac.uk</a> / DB - <a href="http://mydb-liva04.ad.ucl.ac.uk">mydb-liva04.ad.ucl.ac.uk</a> </p>
<p>Pre-Prod - Docker - <a href="http://wiki-app01p.ad.ucl.ac.uk">wiki-app01p.ad.ucl.ac.uk</a> / DB - <a href="http://mydb-prea02.ad.ucl.ac.uk">mydb-prea02.ad.ucl.ac.uk </a></p>
<p>Test - <a href="http://wiki-app01u.ad.ucl.ac.uk">wiki-app01u.ad.ucl.ac.uk</a> </p></td>
<td><div class="content-wrapper">
<p>CTP-663 - Docker app server upgrade Backlog</p>
<p>App</p>
<p>February 2024 (lease)</p>
<p>summer 2024 (RHEL7)</p>
<p>DB</p>
<p>mydb-prea02 December 2024 (lease)</p>
<p>mydb-liva04</p>
<p>December 2026 (lease)</p>
<p>May 2029 (RHEL8)</p>
</div></td>
</tr>
</tbody>
</table>

Feature Teams

**Moodle 4.UX**

### Moodle 4 Theme (UX)

-   [Minimal theme creation Jira epic](https://ucldata.atlassian.net/browse/CTP-1290)
-   [Moodle4UX: consultation, feedback and iteration Jira epic](https://ucldata.atlassian.net/browse/CTP-1291)
-   [Early user feedback (16/08/2022)](Early_user_feedback_16_08_2022_)
-   [Initial minimalist theme review](https://wiki.ucl.ac.uk/display/ISMoodle/Initial+minimalist+theme+review)
-   [Student sounding board feedback (06/09/2022)](https://wiki.ucl.ac.uk/x/gHYSDQ)
-   [Staff sounding board feedback (15/09/2022)](Staff_sounding_board_feedback_15_09_2022_)

**Moodle Course LifeCycle (CLC)**

### Course LifeCycle

-   [Course lifecycle (& EoY processing)](Course_rollover_course_lifecycle_tools_information_hub) - process analysis & documentation
-   [re-integration planning workshops](re-integration_planning_workshops)
-   [Moodle-SITS Assessment Integration MVP Outline](Moodle-SITS_Assessment_Integration_MVP_Outline)
-   [CLC Jira Board](https://ucldata.atlassian.net/jira/software/c/projects/CTP/boards/366)
-   [CLC Backlog](https://ucldata.atlassian.net/jira/software/c/projects/CTP/boards/366/backlog)
-   [Moodle-SITS Marks Transfer overview and additional documentation](Moodle_SITS_Mark_Transfer_Integration)

**Product Wide Ways of Working(WoW)**

### Ways of Working

-   [Virtual Learning Environment Features](https://wiki.ucl.ac.uk/display/ED/Virtual+Learning+Environment+Features) - TI planning
-   [Team Culture](Team_Culture)
-   [Moodle New Starter](Moodle_New_Starter)
-   [SAFe Agile Framework](https://www.scaledagileframework.com/)
-   ...

Processes & Policies

-   [Plugins review checklist](Plugins_review_checklist)
-   [Moodle Plugin Reviews](Moodle_Plugin_Reviews)
-   [LTI Integration checklist](LTI_Integration_checklist)
-   [LTI Integration Reviews](LTI_Integration_Reviews)
-   [UCL Moodle Customisation policy](UCL_Moodle_Customisation_policy)

Transparency to users

-   [Moodle Termly Increment Roadmap](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Moodle+Termly+Increment+Roadmap)
-   [Release Notes](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/Release+Notes)

Strategic direction

-   [Education Priorities (2022-2027)](https://www.ucl.ac.uk/strategic-plan-2022-27/sites/strategic_plan_2022_27/files/education_priorities_and_programmes.pdf)
-   part of <https://www.ucl.ac.uk/strategic-plan-2022-27>
-   [Education Strategy](https://www.ucl.ac.uk/teaching-learning/education-strategy/) (2016-2021)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Scaling Moodle @UCL 31March2009.html](../1015981/) (text/html)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V3.pptx](attachments/1015981/119344419.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V4.pptx](attachments/1015981/125950255.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V4.pptx](attachments/1015981/125950194.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Architecture for Design Group V5.pptx](attachments/1015981/131386949.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Cloud and future.pptx](attachments/1015981/219294085.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)

