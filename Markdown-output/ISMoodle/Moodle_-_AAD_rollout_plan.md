# Moodle - AAD rollout plan

Change Lead: Nikola Bozhkov

No code change involved.

UCL CR 00013340 & Catalyst WR \#390142

**Part 1 Setup AAD **(Run in background with no user impact or changes to user experience). Setup outside busy Moodle hours before 12 Sep 2022 

-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=authsettingoidc>/ & configure [moodle-auth\_oidc](https://github.com/Microsoft/moodle-auth_oidc) as per below table but do not enable.

    <table>
    <thead>
    <tr class="header">
    <th><p>setting</p></th>
    <th><p>value</p></th>
    <th><p>description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td>opname</td>
    <td>UCL Login</td>
    <td>this is the name of the button users will see to login to Moodle via AAD</td>
    </tr>
    <tr class="even">
    <td>clientid</td>
    <td>from AAD</td>
    <td>configured in AAD (App registration = Moodle 311)</td>
    </tr>
    <tr class="odd">
    <td>clientsecret</td>
    <td>from AAD</td>
    <td>configured in AAD</td>
    </tr>
    <tr class="even">
    <td>authendpoint</td>
    <td><p>from AAD</p></td>
    <td>AAD Prod with UCL branding</td>
    </tr>
    <tr class="odd">
    <td>tokenendpoint</td>
    <td>from AAD</td>
    <td>AAD Prod with UCL branding</td>
    </tr>
    <tr class="even">
    <td>oidcresource</td>
    <td><a href="https://graph.microsoft.com" class="uri">https://graph.microsoft.com</a></td>
    <td>default</td>
    </tr>
    <tr class="odd">
    <td>loginflow</td>
    <td>Authorization Code Flow</td>
    <td><br />
    </td>
    </tr>
    <tr class="even">
    <td>logouturi</td>
    <td><a href="https://login.microsoftonline.com/common/oauth2/logout" class="uri">https://login.microsoftonline.com/common/oauth2/logout</a></td>
    <td>default</td>
    </tr>
    <tr class="odd">
    <td>icon</td>
    <td>key</td>
    <td><br />
    </td>
    </tr>
    <tr class="even">
    <td>field_map_firstname</td>
    <td>Given Name</td>
    <td><br />
    </td>
    </tr>
    <tr class="odd">
    <td>field_updatelocal_firstname</td>
    <td>On every login and every user sync task run</td>
    <td><br />
    </td>
    </tr>
    <tr class="even">
    <td>field_lock_firstname</td>
    <td>Unlocked if empty</td>
    <td>To match LDAP settings</td>
    </tr>
    <tr class="odd">
    <td>field_map_lastname</td>
    <td>Surname</td>
    <td><br />
    </td>
    </tr>
    <tr class="even">
    <td>field_updatelocal_lastname</td>
    <td>On every login and every user sync task run</td>
    <td><br />
    </td>
    </tr>
    <tr class="odd">
    <td>field_lock_lastname</td>
    <td>Unlocked if empty</td>
    <td>To match LDAP settings</td>
    </tr>
    <tr class="even">
    <td>field_map_email</td>
    <td>Email</td>
    <td><br />
    </td>
    </tr>
    <tr class="odd">
    <td>field_updatelocal_email</td>
    <td>On every login and every user sync task run</td>
    <td><br />
    </td>
    </tr>
    <tr class="even">
    <td>field_lock_email</td>
    <td>Unlocked if empty</td>
    <td>To match LDAP settings</td>
    </tr>
    </tbody>
    </table>

-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=local_o365> & configure [moodle-local\_o365](https://github.com/Microsoft/moodle-local_o365) as per table below:

    <table>
    <thead>
    <tr class="header">
    <th><p>tab</p></th>
    <th><p>setting</p></th>
    <th><p>value</p></th>
    <th><p>description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td>setup</td>
    <td>clientid</td>
    <td>from AAD</td>
    <td>taken from oidc plugin settings if they are configured first</td>
    </tr>
    <tr class="even">
    <td>setup</td>
    <td>clientsecret</td>
    <td>from AAD</td>
    <td>taken from oidc plugin settings if they are configured first</td>
    </tr>
    <tr class="odd">
    <td>setup</td>
    <td><p>aadtenant</p></td>
    <td><p>live<a href="http://aad.ucl.ac.uk">.ucl.ac.uk</a> </p></td>
    <td>for AAD Prod</td>
    </tr>
    <tr class="even">
    <td>setup</td>
    <td>enableapponlyaccess</td>
    <td>Yes</td>
    <td><br />
    </td>
    </tr>
    <tr class="odd">
    <td>Sync Settings</td>
    <td>aadsync</td>
    <td><ul>
    <li>Match preexisting Moodle users with same-named accounts in Azure AD</li>
    <li>Perform a full sync each run </li>
    </ul></td>
    <td>Enable</td>
    </tr>
    <tr class="even">
    <td>advanced</td>
    <td>switchauthminupnsplit0</td>
    <td>6</td>
    <td>Sets the minimum length for usernames which will be switched e.g. admin will not be switched</td>
    </tr>
    </tbody>
    </table>

-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=manageauths> & set authpreventaccountcreation to Yes ( to prevent account creation from AAD)
-   Go to <https://moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php> and schedule a run for the \\local\_o365\\task\\usersync 
-   Confirm \\local\_o365\\task\\usersync completed matching successfully and set scheduled run once daily at 4am (after the ldap user sync)
-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=local_o365> & update [moodle-local\_o365](https://github.com/Microsoft/moodle-local_o365) as per below:

    | tab           | setting | value                             | description |
    |---------------|---------|-----------------------------------|-------------|
    | Sync Settings | aadsync | -   Perform a full sync each run  | Disable     |

-   Go to <https://moodle.ucl.ac.uk/admin/tool/customlang/index.php> & update language strings as per table below:

    | Component        | String                  | Standard Text                 | Local customisation           |
    |------------------|-------------------------|-------------------------------|-------------------------------|
    | theme\_adaptable | logintextbuttonwhenoidc | Guest/Manual Login            | Guest Login                   |
    | core\_auth       | potentialidps           | Log in using your account on: | Log in using your UCL account |

-   Go to https://moodle.ucl.ac.uk/admin/settings.php?section=themesettingadaptable & update Adaptable theme as per below table: (Part 1)

    <table>
    <thead>
    <tr class="header">
    <th><p>tab</p></th>
    <th><p>setting</p></th>
    <th><p>old value</p></th>
    <th><p>new value</p></th>
    <th><p>description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td>buttons</td>
    <td>buttonlogincolor</td>
    <td><br />
    </td>
    <td>#51666c</td>
    <td>TBC</td>
    </tr>
    <tr class="even">
    <td>buttons</td>
    <td>buttonloginhovercolor</td>
    <td><br />
    </td>
    <td>#009688</td>
    <td>TBC</td>
    </tr>
    <tr class="odd">
    <td>buttons</td>
    <td>buttonlogintextcolor</td>
    <td>#FFFFFF</td>
    <td>#FFFFFF</td>
    <td>TBC</td>
    </tr>
    <tr class="even">
    <td>buttons</td>
    <td>buttonloginpadding</td>
    <td>1px</td>
    <td>1px</td>
    <td><br />
    </td>
    </tr>
    </tbody>
    </table>

**Part 2**  **Enable AAD plugin and switch users from LDAP to OIDC login type** ( no down time required) on 12 Sep 2022 7-8am

-   Run SQL update to switch users from LDAP to OIDC (Executed by Catalyst). Expected time to complete

UPDATE uclmoodleprod.mdl\_user SET auth='oidc' WHERE id in (SELECT moodleid FROM uclmoodleprod.mdl\_local\_o365\_objects) AND auth='ldap';

-   Enable OIDC login type from [https://moodle.ucl.ac.uk/admin/settings.php?section=manageauths](https://311-aad.preview-moodle.ucl.ac.uk/admin/settings.php?section=manageauths) (Executed by Catalyst)
-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=themesettingadaptable> & update adaptable theme as per below table (Part 2). This enables the login button ( Executed by Catalyst)

    | tab    | setting      | old value | new value |
    |--------|--------------|-----------|-----------|
    | header | displaylogin | loginbox  | Button    |

-   Test new login method & confirm working successfully
-   Go to <https://moodle.ucl.ac.uk/admin/settings.php?section=local_o365> & configure [moodle-local\_o365](https://github.com/Microsoft/moodle-local_o365) & update settings

    | tab           | setting | value                                                                     | description                              |
    |---------------|---------|---------------------------------------------------------------------------|------------------------------------------|
    | Sync Settings | aadsync | -   Match preexisting Moodle users with same-named accounts in Azure AD   
       -   Switch matched users to Microsoft 365 (OpenID Connect) authentication  
       -   Perform a full sync each run (not enabled yet 15 Sep 2022 )            | Enable                                   
                                                  
        Only 1 full sync run and then switch off  |

-   Done

1) Changes to settings:

Component

Setting name

Before

After

Reason

2) Config changes:

<table>
<thead>
<tr class="header">
<th>Setting</th>
<th>Current</th>
<th><div class="content-wrapper">
<p>New</p>
</div></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Release Notes:

**New Plugin - Name**

-   Miniguide: link to miniguide
-   Blog Post: link to blog post

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/219299426/219299425.png) (image/png)

