# Moodle 3.11.10

Release date: Thursday 15th September 2022 1am-2am

Release Lead: Nikola Bozhkov

Deadline to add changes to this release: Friday 9th September 2022 8pm

Deadline to handover release to Catalyst: Monday 12th September 2022 8pm

Must sign-off staging deployment by: Tuesday 13th September 2022 5pm

1) Minor Release of Moodle 3.11.10

Update from 3.11.9

2) Changes that will need to be included in the release

Full Uninstall:

-   local\_hub ?

3) Changes to language pack:

Component

Setting name

Before

After

Reason

local\_courserollover
editcurrentmappings
(Edit current mappings)
(Edit current alignments)
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
searchmappings
Search for other mappings:
Search for other alignments:
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
suggestedmappings
Suggested mappings
Suggested delivery alignments
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
~~local\_courserollover~~
~~editcurrentmappings~~
~~(Edit current mappings)~~
~~(Edit current alignments)~~
~~CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done~~
local\_courserollover
error:nomappings
No mappings found. Rollover cannot continue
No alignments found. Rollover cannot continue
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
heading:currentmappings
Current mappings
Current alignments
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
heading:suggestedmappings
Suggested mappings
Suggested delivery alignments
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mapping:fail
Error: Unable to map {$a-&gt;mapping} to {$a-&gt;course}
Error: Unable to align {$a-&gt;mapping} to {$a-&gt;course}
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mapping:success
Mapped {$a-&gt;mapping} to {$a-&gt;course}
Aligned {$a-&gt;mapping} to {$a-&gt;course}
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings
Mappings
Alignments with Portico deliveries
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:current:info
The current course is mapped to the following modules:
The current course is aligned to the following Portico deliveries:
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:info

These mappings will be created for the rolled over course but will not be activated. They can be activated afterwards, through the portico block on the new course. (No enrolments will feed through until you choose to enable this).
These alignments will be used to automatically create enrolment Mappings for the rolled over course. However, those enrolment mappings will not be activated. Enrolment Mappings can be activated after rollover has completed, through the Portico block on the new course (No enrolments will occur until mappings are manually activated). 
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:new:info
Is the rolled-over course delivering the content for these mappings? (If Miscellaneous/Supplementary, is this the audience for your course?)
Is the rolled-over course delivering the content for these alignments? (If Miscellaneous/Supplementary, is this the audience for your course?)
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:new:info:icon
If you are happy with the suggested mapping/s, please click on 'Next'. If you would like to change the suggested mapping/s, please remove them by clicking on the 'bin' icon and then search for the relevant module by entering the code into the 'Search' box...
If you are happy with the suggested alignment/s, please click on 'Next'. If you would like to change the suggested alignment/s, please remove them by clicking on the 'bin' icon and then search for the relevant module by entering the code into the 'Search' box...
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:none
No mappings found
No alignments found
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
mappings:select

Select different mappings
Select different alignments
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
newmappings
New mappings
New alignments
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
nocurrentmappings
No mappings found, please search for and select a delivery (module/programme/route) to align to, in order to proceed with the rollover
No alignments found, please search for and select a delivery (module/programme/route) to align to, in order to proceed with the rollover
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
local\_courserollover
nomappings
No portico mappings found
No Portico delivery alignments found
CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done
~~local\_courserollover~~
~~searchmappings~~
~~Search for other mappings:~~
~~Search for other alignments:~~
~~CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done~~
~~local\_courserollover~~
~~suggestedmappings~~
~~Suggested mappings~~
~~Suggested delivery alignments~~
~~CTP-1443 - Alter Text of CLC Rollover Tool to clarify Mapping/Course Alignment Done~~

4) Changes to settings:

Component

Setting name

Before

After

Reason

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

6) Bug fixes

CTP-1434 - Moodle (prod) issues with text editor losing text Done

CTP-1459 - Hide Blocks not expanding main content section Done

7) Theme Changes - <https://moodle.ucl.ac.uk/admin/settings.php?section=themesettingadaptable#theme_adaptable_generic>

Component

Setting name

Before

After

Reason

theme\_adaptable 
customcss
/\* CSS for footer \*/
 
/\* CSS for footnote \*/
\#page-footer .footnoteucl &gt; li {
display:inline;
}
 
/\* CSS to adjust the font-size of footer \*/
\#page-footer,
\#page-footer p {
font-size: small;
}
/\* End CSS for footer \*/ 

/\* CSS for Header to meet UCL branding guidelines \*/
\#main-navbar {
border-top: solid \#ecefe7 1px;
}
\#logo {
margin-bottom: -25px;
}
/\* End of CSS for Header to meet UCL branding guidelines \*/

/\* Fix color for search icon\*/
\#adaptable-page-header-wrapper .navbarsearchsocial .icon {
    color: white;
}

/\* Fix for left blue line on course\*/
.section li .ad-activity-wrapper 
{
   box-shadow: none;
}
/\* End of Fix for left blue line on course\*/

/\*Hotfix for MDL-71967\*/
\#page-mod-assign-grader .embedded-main \#fitem\_id\_advancedgrading {

    overflow: scroll;

} 
/\*End of Hotfix for MDL-71967\*/

/\* CSS for footer \*/
 
/\* CSS for footnote \*/
\#page-footer .footnoteucl &gt; li {
display:inline;
}
 
/\* CSS to adjust the font-size of footer \*/
\#page-footer,
\#page-footer p {
font-size: small;
}
/\* End CSS for footer \*/ 

/\* CSS for Header to meet UCL branding guidelines \*/
\#main-navbar {
border-top: solid \#ecefe7 1px;
}
\#logo {
margin-bottom: -25px;
}
/\* End of CSS for Header to meet UCL branding guidelines \*/

/\* Fix color for search icon\*/
\#adaptable-page-header-wrapper .navbarsearchsocial .icon {
    color: white;
}

/\* Fix for left blue line on course\*/
.section li .ad-activity-wrapper 
{
   box-shadow: none;
}
/\* End of Fix for left blue line on course\*/

/\*Hotfix for MDL-71967\*/
\#page-mod-assign-grader .embedded-main \#fitem\_id\_advancedgrading {

    overflow: scroll;

} 
/\*End of Hotfix for MDL-71967\*/

/\* CSS for Mark as Done button \*/
.btn.disabled, .btn:disabled {
    opacity: 0.40;
    color: grey !important;
    background-color: white !important;
}
/\* End CSS for Mark as Done button \*/ 

CTP-1440 - \[ Mark as done \] button very difficult to see. Done

Release Notes:

**Update Moodle to version 3.11.10**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.11.10_release_notes) and security issues

**Update to CLC**

-   alignment to 2022 delivery is now default when rolling over from 2020 and previous years. CTP-1226 - Suggested delivery date needs to be in future academic year Done

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/202345059/202345058.png) (image/png)

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Duplicate entries identified - strikethrough applied. </p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by cceanbo at Sep 08, 2022 15:23
</div></td>
</tr>
</tbody>
</table>


