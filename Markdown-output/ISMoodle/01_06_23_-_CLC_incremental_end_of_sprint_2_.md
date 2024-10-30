# 01/06/23 - CLC incremental (end of sprint 2)

Deploy date: Thursday 1st June 2023 1am-2am

Build Lead: AS

Deadline to add changes to this build: Friday 26th May 2023 2pm

Deadline to handover build to Catalyst: Friday 26th May 2023 5pm

Must sign-off staging deployment by: Tuesday 30th May 2023 5pm

1) Changes that will need to be included in the release

-   add ucl-isd/moodle-local\_sitsgradepush to the build

2) Create role for pilot users

Create a new role

Short name: grade-transfer-user

Custom full name: grade-transfer-user

Archetype: None

Context types where this role may be assigned: System

Capabilities:

local/sitsgradepush:mapassessment → Allow

local/sitsgradepush:pushgrade → Allow

3) Configure new settings:

<https://moodle.ucl.ac.uk/admin/settings.php?section=local_sitsgradepush_settings>

Component

Setting name

New Setting config

Reason

local\_sitsgradepush
enabled
No
local\_sitsgradepush
sublogpush
Yes
local\_sitsgradepush
apiclient
Easikit
local\_sitsgradepush
moodle\_ast\_codes
BC02, CN01, EC03, EC04, ED03, ED04, FN01, GD01, GN01, GN02, GN03, HC01, HD01, HD02, HD03, HD04, HD05, LC01, MD01, ND01, RD01, RN01, RN02, RN03, SD01, TC01, ZD01, ZN01
[SITS Assessment Types](SITS_Assessment_Types)
local\_sitsgradepush
moodle\_ast\_codes\_exam\_room
BC02, EC03, EC04, ED03, ED04
[SITS Assessment Types](SITS_Assessment_Types)
local\_sitsgradepush
moodle\_exam\_room\_code
EXAMMDLE
UCL specific way of describing exams taking place in Moodle

<https://moodle.ucl.ac.uk/admin/settings.php?section=sitsapiclienteasikitsettings>

Component

Setting name

New Setting config

sitsapiclient\_easikit
mstokenendpoint
<https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/v2.0/token>
sitsapiclient\_easikit
clientid
cc79a509-a1fa-437d-a9ec-435aec23e891
sitsapiclient\_easikit
clientsecret
in Lastpass as "Easikit Prod Moodle"
sitsapiclient\_easikit
assessmenttargetclientid
97e5fcb3-8baf-4202-97ab-533d7814438d"
<https://github.com/ucl-isd/student-assessment-api-producer/blob/a3907cbfcc221b78e97b744ad0d8b1893b163aef/terraform/default/targets/prod/terraform.tfvars.json#LL14C18-L14C55>
sitsapiclient\_easikit
endpoint\_grade\_push
<https://student.integration.ucl.ac.uk/assessment/v1/moodle>
sitsapiclient\_easikit
endpoint\_submission\_log
<https://student.integration.ucl.ac.uk/assessment/v1/moodle>
sitsapiclient\_easikit
endpoint\_component\_grade
<https://student.integration.ucl.ac.uk/assessment/v1/moodle/assessment-component>
sitsapiclient\_easikit
endpoint\_get\_student
<https://student.integration.ucl.ac.uk/assessment/v1/moodle/assessment-component>
sitsapiclient\_easikit
endpoint\_get\_mark\_schemes
<https://student.integration.ucl.ac.uk/assessment/v1/assessment-component/mark-scheme>

Release Notes:

n/a
