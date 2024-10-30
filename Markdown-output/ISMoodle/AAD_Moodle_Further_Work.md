# AAD/Moodle Further Work

# Issues Identified after AAD Roll-out in Moodle

-   merged users in AD/AAD - what is the best approach in Moodle.
    -   Discussion with Identity team whether Moodle support to be added to the merge process 

        Findings and solution: DESA already part of the merging process if user answers with "Yes" to the merge Moodle content question. No further action is needed at this stage.

    -   merge the two accounts in Moodle - works intermittently and if the merge is to the deleted account in AAD it might not resolve the issues as the user account is matched to the wrong UPN in AAD. 

        Findings and solution:

        The merge is always to the active account. Not sure why we saw the opposite in some examples but might be due to manual intervention before the case was passed to VLE.

        Sometimes the user want to merge to the newest account and sometimes to the oldest (there are examples where a user has 3 accounts). In Moodle the older account normally has more content but this depends on factors such as if this is a student or staff, how long the user had two accounts before the merge took place, etc.

        Having duplicate accounts might affect students if they use the same student number as the integration between Moodle and SITS uses the student number for enrolment.

        Merge accounts plugin does not work efficiently in Moodle prod. Simple merge where there is almost no content in the merged account can easily take 3-4 hours. Merge on accounts with more content can take 7-8 hours or not complete at all. This might be due to enormous log table but also due to table locking. If both accounts have been matched and fully connected to AAD before merge is attempted the merged account need to disconnected from AAD otherwise due to table locking Moodle prod site is under severe load and can crash.

    -   TBC use microsoft block to match the sync the accounts manually. To be explored

        Not going to improve anything as it requires user to action the matching. This is already done automatically via the AAD sync job. There is also csv upload option available to admins.

    -   TBC increase the frequency of the Azure sync job from once a day at 4am to every hours or even more frequent.

        It can be done as the sync is incremental and not having performance impact to Moodle. However, it is not going to have any impact due to the fact on-prem AD sync which creates the users accounts only runs once. When we are able to create user accounts via AAD sync in the desired SAMaccount user format, the job can be configured to run more frequently.

-   Existing duplicated accounts in Moodle e.g. one manual and one AD created - same as above
-   UCL Partner institutions not able to login unless using private/incognito browser to clear their existing sessions. Example partners [www.annafreud.org](http://www.annafreud.org), NHS
    -   discuss with Identity ways of improving user experience e.g. changing setting in the app registration, provide feeback to Microsoft and seek improvement, 

        Force account picker by applying the following change in Moodle:

        | Setting                   | Current                                                                                                                                                                                                   | New                                                                                                              |
        |---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
        | auth\_oidc | authendpoint | [https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize](https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account) | <https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account> |

-   Read only access for Moodle support DESA to AAD Moodle app registration sign-in logs

    New role has been created in AAD. 
    Application - [Moodle 311 - Microsoft Azure](https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fportal.azure.com%2F%3Ffeature.msaljs%3Dfalse%23view%2FMicrosoft_AAD_IAM%2FManagedAppMenuBlade%2F~%2FOverview%2FobjectId%2F7e1c6fe3-1ea8-4e16-a0e3-ba4fb6411064%2FappId%2F1a7eb314-9b75-48d4-9874-401c13124fbf%2FpreferredSingleSignOnMode~%2Fnull&data=05%7C01%7Cn.bozhkov%40ucl.ac.uk%7C7eea9e9f3db048028e9b08dac877bfbd%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C638042713896730473%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=OrHPCAisHSNNYVGmusciCg4yULHvVgPTaMNp8xtEFxE%3D&reserved=0)

    Group management - [=UCL-Moodle - Microsoft Azure](https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fportal.azure.com%2F%3Ffeature.msaljs%3Dfalse%23view%2FMicrosoft_AAD_IAM%2FGroupDetailsMenuBlade%2F~%2FMembers%2FgroupId%2F26347d8a-3ae0-4113-848f-63334a001b50&data=05%7C01%7Cn.bozhkov%40ucl.ac.uk%7C7eea9e9f3db048028e9b08dac877bfbd%7C1faf88fea9984c5b93c9210a11d9a5c2%7C0%7C0%7C638042713896730473%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=7IVM86XTZfJRVeiknxJ6gUGJMjEP%2Bbi8XuTiZik8Tcs%3D&reserved=0) 

    Users added: 

    Zaman Wong <ccaazwo@ucl.ac.uk>

    Pauline Harding <cceapha@ucl.ac.uk>

    Tom Walters <zcrawal@ucl.ac.uk>

    Rod Digges <ccaardi@ucl.ac.uk>

    Kolil Ullah <cceaull@ucl.ac.uk>

    Jill Reese <ucsajre@ucl.ac.uk>

# AAD Rollout to staging, preview & snapshot

-   Refresh staging from Production and get AAD authentication operational (Catalyst to refresh & SRE Ops to configure AAD). New AAD API secret to be created for staging environment
-   Refresh preview environments and make AAD authentication operational by default (SRE Ops)
-   Configure AAD in snapshots

# Moodle/Teams integration production ready by end of TI1:

-   agree API permissions in AAD with O365 team 
-   add required API permissions to moodle311 app registration to make Teams integration operational.
-   document settings needed in o365 and Moodle
-   agree rollout plan
-   create a separate AAD app registration for Moodle instances different from production. Teams integration should not be operational in preview instances.

# Improvement/Development work

-   Investigate user creation according to SAMAccount user format and not UPN e.g. cceanbo and not <cceanbo@ucl.ac.uk> . Raised with the plugin dev <https://github.com/microsoft/o365-moodle/issues/2157>
    -   create an optional setting similar to "Match preexisting Moodle users with same-named accounts in Azure AD" to create accounts by stripping the domain from the UPN e.g. <cceanbo@ucl.ac.uk> is stripped from the "@ucl.ac.uk" part and accounts are created 
    -   use an attribute exposed in the AAD claim and use it to create the new user accounts
-   Implement user creation according to SAMAccount user format and not UPN e.g. cceanbo and not [cceanbo@ucl.ac.u](mailto:cceanbo@ucl.ac.uk)k
-   autologin feature <https://github.com/microsoft/o365-moodle/issues/2156>
-   Make use of ad-hoc tasks for the chunking of the sync process https://github.com/microsoft/o365-moodle/issues/2155

**Check**

Provide admin consent from within Moodle local\_o365 plugin - <https://github.com/microsoft/o365-moodle/issues/2066#issuecomment-1195945510>

## Accounts to merge (correct account is working for login to Moodle )TBC:

-   ucsabb1→ ucsabsp 
-   ucjuxxg → zcjtguo  Exception thrown when merging: 'Can not find attendance activity with id 10401" https://moodle.ucl.ac.uk/admin/tool/mergeusers/log.php?id=85&sesskey=g4bSmtFrGl **DONE in 311.preview after local/ucl plugin added and run to cleanse the data (Deleted 55 orphaned grade items) . Merge successful.  **
-   ucqhmc7 → ucqhjmc ok in 311-release
-   ucbqtcd → ucbqtdy ok in 311-release
-   uceeoja → zcapoja ok in 311-release
-   ucbqt11 → ucbqt12 ok in 311-release
-   ucnvtl6 → ucnvtl1 -Exception thrown when merging: 'Can not find turnitintooltwo activity with id 3995".  https://moodle.ucl.ac.uk/admin/tool/mergeusers/log.php?id=84&sesskey=N1Us8BfkEp DONE in 311.preview after local/ucl plugin added and run to cleanse the data (Deleted 55 orphaned grade items) . Merge successful.  
-   ucfutcc → ucfbdut ok in 311-release Disconnect both from AAD, then update username back to ucfbdut 
-   tjmsril → tjmsgg2  ok in 311-release  Disconnect both from AAD, then update username back to tjmsgg2
-   rmharlr → rmhigid ok in 311-release No content in rmharlr. rmharlr suspended and student number removed. To merge when possible.
-   ucaqman → zccanxx Some content in ucaqman. ucaqman suspened and student number removed. To merge when possible.
-   ucesll9 → zcesina No content in ucesll9. ucesll9 suspened and student number removed. To merge when possible.
-   regmhhl → regmjhh No content in regmhhl. regmhhl suspened and student number removed. To merge when possible.
-   uctpmib → uclqmi0 Content in both accounts, less in uctpmib. uctpmib suspended and student number removed. To merge when possible.
-   ucraarl → zcralit Some content in both accounts. ucraarl suspended and student number removed. To merge when possible.
-   RMHAOOG → sejjgun Exception thrown when merging: 'Can not find attendance activity with id 10401". https://moodle.ucl.ac.uk/admin/tool/mergeusers/log.php?id=79&sesskey=ThhIhdQ8mp RMHAOOG has significant amount of content as old student account. sejjgun has less content but still some. Student number removed from RMHAOOG and suspended. Attempt merge from sejjgun → RMHAOOG and update username? TBC DONE in 311.preview after local/ucl plugin added and run to cleanse the data (Deleted 55 orphaned grade items) . Merge successful. 
-   stnziaj → uctzyji Content in both accounts. stnziaj has less content but still some. Student number removed from stnziaj and suspende. Attempt merge when possible.  Exception thrown when merging: 'Can not find attendance activity with id 10401". https://moodle.ucl.ac.uk/admin/tool/mergeusers/log.php?id=75&sesskey=g4bSmtFrGl DONE in 311.preview after local/ucl plugin added and run to cleanse the data (Deleted 55 orphaned grade items) . Merge successful.  
-   ucjugg8 → zcbtrec Content in both accounts. ucjugg8 has less content but still some. Student number removed from ucjugg8 and suspende. Attempt merge when possible.
-   UCTPIAB → ZCAHQIA Content in both accounts. UCTPIAB has less content but still some. Student number removed from UCTPIAB and suspende. Attempt merge when possible.
-   uctprpw→ zctyrwo Merge attempted twice but not record in the logs. Content in both accounts. Removed student number and suspended account. Disconnected from oidc. Attempted merge in 311-release - all done within seconds. Attempt merge in prod 10/11 evening. 
-   qtnzszo → qtnvszo almost no content in qtnzszo. Merge not urgent. To be done when possible.
-   uczrsmf (only sign-in logs)→ yjmssmf (large amount of content/activity) → tjmssmf (active account)  

Other merges issues:

-   Exception thrown when merging: 'Error writing to database".Lock wait timeout exceeded; try restarting transaction https://moodle.ucl.ac.uk/admin/tool/mergeusers/log.php?id=67&sesskey=g4bSmtFrGl 


