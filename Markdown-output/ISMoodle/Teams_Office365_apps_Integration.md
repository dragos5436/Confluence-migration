# Teams & Office365 apps Integration

MS Teams UAT & eisd-test.ucl.ac.uk domains will be used for the evaluation and testing of the Teams integration with Moodle. 

<https://311-oidc.preview-moodle.ucl.ac.uk/> is fully setup with AAD UAD and Teams LTI integrations.

How to login to AAD UAT

**Moodle**: When presented with the login screen use your <userid@eisd-test.ucl.ac.uk> e.g. <cceanbo@eisd-test.ucl.ac.uk>and corresponding password (might not be your production password).

MS Teams: Logout of your current session and login with your <userid@eisd-test.ucl.ac.uk> e.g. <cceanbo@eisd-test.ucl.ac.uk> and corresponding password (might not be your production password). 

The LTI integration offered by Microsoft cannot function on it own and relies on AAD setup. More info here - <https://docs.microsoft.com/en-us/microsoft-365/lti/moodle-plugin-configuration?view=o365-worldwide>

-   Use Moodle integration with AAD via OpenIDConnect via auth\_oidc and local\_o365 plugins

To get courses to sync from Moodle to Teams the following additional API permissions need to be added to the app registration in AAD

<https://docs.moodle.org/311/en/Microsoft_365#3.9.8.2C_3.10.5_and_3.11.2_release>

If your Moodle site uses **Application access** connection method, you will need to add and grant **EduRoster.Read.All** (covered by **EduRoster.ReadWrite.All** in [the next release](https://docs.moodle.org/311/en/Microsoft_365#3.10.6_and_3.11.3_release "Microsoft 365")) and **Member.Read.Hidden application permissions**.

-   -   cron failing to create course in Teams - If your Moodle site uses **Application access** connection method, you will need to add and grant **EduRoster.Read.All** (covered by **EduRoster.ReadWrite.All** in [the next release](https://docs.moodle.org/311/en/Microsoft_365#3.10.6_and_3.11.3_release "Microsoft 365")) and **Member.Read.Hidden application permissions**.
    -   added **EduRoster.Read.All** and **Member.Read.Hidden** application permissions but cron is still failing  with 

            "Could not create educationClass group for course #26164. Reason: Error in API call: Required roles claim values are not provided."

-    
    -   added EduRoster.ReadWrite.All but cron is still failing [local\_o365\_task\_coursesync-273792123.log](attachments/205623923/219314090.log)
    -   furtherAPI permission needed as course sync cron is failing [local\_o365\_task\_coursesync-273815557.log](attachments/205623923/219314092.log)

<!-- -->

    Could not create class team from education group. Reason: Error in API call: Missing role permissions on the request. 
    API requires one of 'Team.Create, Teamwork.Migrate.All, Group.ReadWrite.All, Directory.ReadWrite.All'. 
    Roles on the request 'Directory.Read.All, EduRoster.Read.All, Group.Read.All, EduRoster.ReadWrite.All, User.Read.All, Domain.Read.All, Member.Read.Hidden'.

All the above API permissions have now been added.

**Course sync via plugins** - <https://docs.moodle.org/310/en/Microsoft_365#Course_Sync>

Once enabled, the "Sync Moodle courses to Microsoft Teams" (\\local\_o365\\task\\coursesync) scheduled task will try to:

-   Create a group for any course without a connected group.
-   Sync existing enrolled users in the course to Teams according to capability checks.
-   If the tenant has education license, set education specific attribute in the group in order to support Teams Classes LTI integration.
-   Create a Team from the course, providing a suitable Team owner can be found. For tenants with education license, these will be class Teams; for others, these will be standard Teams.
-   If the a custom Moodle Teams app has been uploaded for the organisation following [instructions below](https://docs.moodle.org/310/en/Microsoft_365#Add_Moodle_app_to_Teams "Microsoft 365"), the Moodle Teams app will be installed in the new Team, and a Moodle tab will be created in the general channel, pointing back to the connected Moodle course.

All subsequent enrolment / role assignment changes in Moodle courses will also be synced to connected Teams.

-   Microsoft Teams LTI integration - <https://docs.microsoft.com/en-us/microsoft-365/lti/teams-classes-meetings-with-moodle?view=o365-worldwide>

This is adding **Teams Meetings LTI** or **Teams Classes LTI**

# Moodle/Teams integration production ready by end of TI1:

-   agree Moodle/Teams integration features enabled/disabled 
-   agree API permissions in AAD with O365 team 
-   add required API permissions to moodle311 app registration to make Teams integration operational.
-   document settings needed in o365 and Moodle
-   agree rollout plan
-   create a separate AAD app registration for Moodle instances different from production. Teams integration should not be operational in preview instances.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [local\_o365\_task\_coursesync-273792123.log](attachments/205623923/219314090.log) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [local\_o365\_task\_coursesync-273815557.log](attachments/205623923/219314092.log) (text/plain)

