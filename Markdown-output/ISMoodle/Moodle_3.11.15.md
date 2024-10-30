# Moodle 3.11.15

Release date: 15th June 2023

Release Lead: NB

Deadline to add changes to this release: tbc

Deadline to handover release to Catalyst: tbc

Must sign-off staging deployment by: tbc

3.11.15 is due on 12th June 2023.

1) Minor Release of Moodle 3.11.15

Update from 3.11.14

2) Changes that will need to be included in the release

-   add the linkedin learning lti plugin - https://github.com/ucl-isd/moodle-ltisource\_custom\_parameters
-   make sure the fix for block-portico\_enrolments is in
-   make sure to rollback the STACK change 

4) Changes to settings:

Component

Setting name

Before

After

Reason

Linkedin Learning LTI

Custom parameters

lil\_userid=$User.username

To pass UPN back to LiL instead of username (cceanbo)

5) Config changes:

<table>
<thead>
<tr class="header">
<th><p>Setting</p></th>
<th><p>Current</p></th>
<th><div class="content-wrapper">
<p>New</p>
</div></th>
<th><div class="content-wrapper">
<p>Reason</p>
</div></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td> </td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Release Notes:

**Update Moodle to version 3.11.15**

-   fixes [bugs](https://moodledev.io/general/releases/3.11/3.11.15) and security issues

**New Plugin -** Assessment Frequency plugin

-   Miniguide: link to miniguide
-   Blog Post: link to blog post

Zoom plugin credentials for OAuth app applied (JWT reaching end of life in Sept 2023)
