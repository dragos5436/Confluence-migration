# Moodle Login Issues after account merge

Steps to resolve:

1.  Go to '**Manage User Connections**' in the 'Microsoft 365 Integration' plugin settings (Advanced) and disconnect the live account that is supposed to stay active: 

1.  In some cases where the account merge process was not carried out correctly, the suspended account will need to be disconnected as well.
2.  Go to '**User Matching**' within the same plugin, upload a csv file containing the Moodle username, UPN (username@[ucl.ac.uk](http://ucl.ac.uk)) and 1 on the same row and click 'Add Data File to Match Queue'. Wait for the match process to finish.
3.  If the matching process finishes successfully, ask the user to try logging in again. If there are errors, further investigation is needed to figure out what the issue is. If the error is 'Error: Moodle user is already connected to Microsoft 365.' it means the account was not disconnected from EntraID (former AAD) before attempting the user matching.

Resources for further investigation:

-   UCL Find UPI: <https://identityapps.ucl.ac.uk/findUpi/upiFindInput> - Check which account is active and which one is suspended. Permission required.
-   EntraID Portal: <https://entra.microsoft.com/#view/Microsoft_AAD_IAM/TenantOverview.ReactView> - Go to Applications &gt; Enterprise applications &gt; Search for '**UCL-Moodle 311**' &gt; Select it &gt; Go to 'Sign-in logs' under the 'Activity' menu. Check whether the AAD connection for this username is successful. If yes, issue is on the Moodle side. Permission required.
-   User profile on Moodle: Check logs to see last successful login of live and suspended accounts. For the suspended account, if needed, go to 'Choose an authentication method' and change it from 'OpenID Connect' to 'Manual'.

Extra instructions from Digi-Ed:

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2024-8-13\_13-1-47.png](attachments/333395019/333395018.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2024-8-16\_11-36-26.png](attachments/333395019/333396373.png) (image/png)

