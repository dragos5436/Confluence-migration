# Moodle dev/uat post process

Things to do after creating a dev/uat Moodle instance.

That particularly applies if you copied the database from a prod backup.

## Database queries

**Edit email addresses (if you think it is needed) - TBC**

run the following SQL query - update emailid to <nobody@ucl.ac.uk> for everyone minus adminstrators

## Site Config settings

**Unlink google analytics**

Go to    /admin/settings.php?section=theme\_adaptable\_analytics

Untick "Enable Google Analytics"

**Set site name in Frontpage settings**

`Go to /admin/settings.php?section=frontpagesettings`

`edit full and short site names`

**Set cookie prefix**

`Go to /admin/settings.php?section=sessionhandling`

`set`

cookie prefix - mipmdldev →  For dev

cookie prefix - mipmdluat → For uat

cookie prefix - mipmdlpp → For pp

**Edit MyFeedback settings**

    Go to /admin/settings.php?section=reportmyfeedback

Delete the settings for: **'DB Host', 'DB Name', 'DB Username', 'DB Password**'.

### Turnitin Account

Site administration → Plugins →  Activity modules → Turnitin Assignment 2

Set turnitinaccountid and shared key to right accounts and keys

**Global string replace (host URL)**

Go to /admin/tool/replace/index.php

search for  \*\*url that database was copied from\*\*

replace with \*\*url of new moodle instance\*\*

## Config\_local

    Config_local *should* stay local to the environment - (DEV, UAT PP etc) you shouldnt copy the file between environments. But if you do need to edit it, look out for the following.

##### 1.  noemailever = true.

you can set $CFG-&gt;noemailever = true; in config\_local.php

2 Redis server location

You may also want to set redis server location.

------------------------------------------------------------------------

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_staff\_readonly.txt](attachments/68847817/68847814.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_student\_readonly.txt](attachments/68847817/68847815.txt) (text/plain)

