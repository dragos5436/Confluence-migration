# 10/08/22 - CLC incremental release

Release date: Wednesday 10th August 2022 1am-2am

Release Lead: AS

Deadline to add changes to this release: Thursday 4th August 2022 1pm

Deadline to handover release to Catalyst: Thursday 4th August 2022 5pm

Must sign-off staging deployment by: Friday 5th August 2022 5pm

1) CLC plugin updates

-   local\_courserollover
-   mod\_turnitintooltwo
-   local\_ucl\_clc\_admin
-   report\_courserollover

2) Changes that will need to be included in the release

-   Add tool\_dataflows

3) Plugins to be fully uninstalled:

-   block\_kuracloud
-   logstore\_caliper

4) Changes to settings:

Component

Setting name

Before

After

Reason

local\_courserollover
exclude\_lti\_tools
-
api2-uk.labster.com LTI-1 (178)

gateway.cengage.co.uk LTI-1 (1)

LTI 1.1 tools replaced

by LTI 1.3 version

local\_courserollover
reset\_roles\_overrides
Yes

ticked

No - unticked
rollover failed to include user override for specific activities which is needed
local\_courserollover
reset\_roles\_local
Yes

ticked

No - unticked
rollover failed to include user override for specific activities which is needed
local\_courserollover
reset\_gradebook\_items
Yes

ticked

No - unticked
rollover failed to include custom scales for forum rating and staff would have to re-create these manually.

5) Config changes:

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

**Course Rollover - improvements**

-   retired LTI tools can now be filtered out during rollover
-   Role assignments override are now kept in rollover
-   Custom grade ratings are now kept in rollover
-   SITS Module cache now refreshing weekly
-   empty course ID now allowed
-   automated test coverage
-   auto-suggest now considers queued rollover requests to avoid naming clashes
-   improved clash avoidance of backup files

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/216696052/216696044.png) (image/png)

