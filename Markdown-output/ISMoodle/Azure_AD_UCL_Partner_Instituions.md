# Azure AD & UCL Partner Instituions

# Issue

UCL Partner institutions not able to login unless using private/incognito browser to clear their existing sessions. Example partners [www.annafreud.org](http://www.annafreud.org), NHS

# Solution

## Option 1 - Implemented

**Force account picker** by applying the following change in Moodle:

| Setting                   | Current                                                                                                                                                                                                   | New                                                                                                              |
|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| auth\_oidc | authendpoint | [https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize](https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account) | <https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account> |

Option 2 

**B2B Collaboration**
<https://learn.microsoft.com/en-us/azure/active-directory/external-identities/what-is-b2b>
To be explored by Identity team but needs more time/effort. Test user from partner institution needed to help & check user experience.

Option 3

**Federation**
This allows access to UCL application with external user credentials e.g. valid NHS credentials. Not a viable option as it needs to have a matching user account in Moodle
