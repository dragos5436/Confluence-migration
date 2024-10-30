# Zoom Plugin Configuration

Open Moodle and navigate to Site Administration→ Plugins→Activity Module→Zoom Meeting and configure as per below settings.

## Connection settings:

**Zoom API key:** The key resides in Zoom. Login to <https://marketplace.zoom.us/> then find Manage→ Created apps→ JWT. Open JWT Data and this setting is under App credentials.

**Zoom API secret:** As above the secret resides in Zoom. Login to <https://marketplace.zoom.us/> then find Manage→ Created apps→ JWT. Open JWT Data and this setting is under App credentials.

**Zoom home page URL:** Set to **<https://ucl.zoom.us/>**.This is the vanity url page from Zoom.

**Use proxy:** Empty

## License settings

**Number of licenses:** 0

**Redefine licenses:** No

**Recycle license upon join:** Yes

## Global settings

**First able to join:** Set to 15 min

**Display lead time:**  No

**Display passcode:** No

**Mask participant data:** No

## Supplementary features settings

The following features are pretty well described in Moodle.  Current settings as follows:

Webinar: Show webinar option only if the user has a license to host webinars (not default)

**Encryption type:  **Show encryption type chooser only if the user can use end-to-end encryption (Default)

**Scheduling privilege: **Enable scheduling privilege option (Default)

Alternative Hosts: Show alternative hosts option as plain input field (Default)

Meeting capacity warning: Enable meeting capacity warning (Default)

All Meetings: Enable all meetings link (Default) 

This is the following link in Moodle (highlighted in yellow)

**Download iCal: **Enable download iCal link (Default) 

## Default Zoom Settings

These settings define the defaults for all new Zoom meetings and webinars and are configured as follow:

**Recurring**: Default: No

**Require meeting passcode: **Default: Yes, Locked

**Encryption: **Default: Enhanced encryption

E2EE (end to end encryption) is not enabled as it does not work with important Zoom features. It is not enabled on the Zoom side as well. More information can be found here <https://support.zoom.us/hc/en-us/articles/360048660871>

From Zoom webpage

Enabling this setting also disables the following features:

-   Join before host
-   Cloud recording
-   Live streaming
-   Live transcription
-   Breakout Rooms
-   Polling
-   Meeting reactions\*
-   1:1 private chats\*
    \*Note: As of version 5.5.0 for desktop, mobile, and Zoom Rooms, these features are supported in E2EE meetings. 

Users will not be able to join by telephone, SIP/H.323 devices, on-premise configurations, the Zoom web client, third-party clients leveraging the Zoom SDK, or Lync/Skype clients, as these endpoints cannot be encrypted end to end. 

**Enable waiting room: **Yes

**Join before host: **No

**Require authentication to join: **Yes

**Host video:** No

**Participants video:** No

**Audio options:** Computer audio and Telephone

**Mute participants upon entry:** Yes

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-4-21\_16-29-30.png](attachments/146080807/165455643.png) (image/png)

