# How testable is moolde uat

Tested on 31 May 2017 

 

Instance tested: <https://v315.moodle-uat.ucl.ac.uk>

**- cron**

Doesn't seem to have been set up (not running). Having said that 'ccspmdu' doesn't see all the cron jobs on the box. 

From a DB query, it seems some cron tasks were run in February 2017.

The cron can be run from the web interface; see: <https://v315.moodle-uat.ucl.ac.uk/admin/settings.php?section=sitepolicies>

 

**- Portico Enrolments**

Portico block can be visible when editing is turned on

Syncing enrolments from a portico course to a Moodle course is currently not working:
Notes:
moodle-admin-uat and moodle-admin do not share a common database or filesystem
moodle-admin-uat will be decommissioned

sits filter comes back with an error when trying to launch it from the command line (moodle-admin-uat)
on moodle-admin-dev, currently no shell script to run the sits filter
on moodle-admi-dev no instance of moodle
on moodle-admi-uat no instance of moodle

**- Staff import**

not working
not sure cron job is set up to call the script (no visibility)
files doesn't exist on uat: /nfs/rcs/sysman/cso/upi/webct-data
**- Turnitin2 Assignment**

settings seem to be same as prod
seems to work; have seen a course with submitted assignments: <https://v315.moodle-uat.ucl.ac.uk/mod/turnitintooltwo/view.php?id=2376635>

**- Reading List items (Library Resources, Library Search)**

reading list settings seem to be same as prod
library resources block seems to work.

**- Campus Pack**

settings probably same as prod
seems to work. have added one acitivity: <https://v315.moodle-uat.ucl.ac.uk/course/view.php?id=29315>

**- Blackboard Collaborate**

seetings seem to be same as prod
seems to work

**- MediaCentral (disabled on prod)**

don't see the button on the atto/TinyMCE editor (prod)

**- External tool = lti**

settings seem to be same as prod
work: can view lti activities: <https://v315.moodle-uat.ucl.ac.uk/mod/lti/toolconfigure.php>

**- Flickr**

repository disabled (prod)
block\_tag\_flickr: not sure what this is

**- YouTube**

no google API key (prod)

**- Emails: are they being sent/received**

Nothing sent due to setting in config: $CFG-&gt;noemailever = true;

 

 
