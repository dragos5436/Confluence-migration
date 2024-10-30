# WebServices - things to consider

Status: DRAFT

Assumptions:

-   Each WS integration will use it's own web service user account (& token) with permissions restricted to the strictly necessary
-   Integration is fully tested in a non-prod environment with no real user data before being approved.
-   Data Protection needs to be reviewed - assumed here it is covered in the plugin/LTI review but if a WS integration does not rely on either, then those steps must be added to this process

``` java
[] Establish the list of permissions required for the integration to work
[] Try to reduce that list to the strict minimum
[] Only pulls in relevant user data when it needs it
[] Load
[] Web Service Role setup & documentation
```

**1) Establish the list of permissions required for the integration to work**

**2) Try to reduce that list to the strict minimum**

Test the integration without permissions which seem to be overreaching

This is a really important activity.

May need to provide push back on excessive data usage.

**3) Only pulls in relevant user data when it needs it**

For example, it doesn't sync all the users out of Moodle but just the ones for a particular course which will use that functionality

**4) Load **

Amount of web services calls and timeframe where these occur

**5) Web Service Role setup & documentation**

Ensure it can only be assigned at system level & that "Allow role assignments", "Allow role overrides", "Allow role switches" & "Allow role to view" are all disabled for this role.

If you haven't detailed every single permission required under 2) then make sure to use a [Moodle Role Documentation Template](https://wiki.ucl.ac.uk/display/ECARC/Moodle+Role+Documentation+Template) to document the role thoroughly.

Attach a copy of the role xml file.


