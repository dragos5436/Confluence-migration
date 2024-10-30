# Moodle 3.11.8

Release date: Thursday 14th July 2022 1am-2am

Release Lead: Alistair Spark

Deadline to add changes to this release: Friday 8th July 2022 8pm

Deadline to handover release to Catalyst: Monday 11th July 2022 8pm

Must sign-off staging deployment by: Tuesday 12th July 2022 5pm

1) Minor Release of Moodle 3.11.8

Update from 3.11.7

2) Changes that will need to be included in the release

-   Disable Kuracloud block ([Site administration&gt;Plugins&gt;Blocks&gt;Manage blocks](https://moodle.ucl.ac.uk/admin/blocks.php)).

4) Changes to settings:

Component

Setting name

Before

After

Reason

Labster UK LTI in <https://moodle.ucl.ac.uk/mod/lti/typessettings.php?action=update&id=1402&sesskey=bWhKjk7REI&returnto=toolconfigure>
Tool name
Labster UK
Labster UK (licensed use only)
Managing licensing risk (see LTI review)
Lt LTI
Tool name
Lt
Lt (licensed use only)
Managing licensing risk (see LTI review)
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
margin-bottom: -8px;
}
/\* End of CSS for Header to meet UCL branding guidelines \*/

/\* Fix color for search icon\*/
\#adaptable-page-header-wrapper .navbarsearchsocial .icon {
 color: white;
}

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

Fixing a scrolling issue for rubrics heavy on text that overflowed outside the screen Fix taken from <https://tracker.moodle.org/browse/MDL-71967>

5) Config changes:
Language pack changes

| Setting                                   | Current              | New                                        |
|-------------------------------------------|----------------------|--------------------------------------------|
| mod\_turnitintooltwo / resubmittoturnitin | Resubmit to Turnitin | Submitted. Click to reprocess by Turnitin. |
| plagiarism\_turnitin/ resubmittoturnitin  | Resubmit to Turnitin | Submitted. Click to reprocess by Turnitin. |

Release Notes:

**Update Moodle to version 3.11.8**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.11.8_release_notes) and security issues

**New LTI Activity - Labster LTI1.3**

-   Miniguide: <https://wiki.ucl.ac.uk/x/toKlD> (M70)
-   LTI review: [LTI Integration Reviews\#LabsterLTI1.3](LTI-Integration-Reviews_144507131.html#LTIIntegrationReviews-LabsterLTI1.3)

**New LTI Activity - Lt (kuracloud) LTI1.3**

-   Miniguide: <https://wiki.ucl.ac.uk/x/Xh2mCQ> (M64)
-   LTI review: [LTI Integration Reviews\#Lt(kuraCloud)LTI1.3](LTI-Integration-Reviews_144507131.html#LTIIntegrationReviews-Lt(kuraCloud)LTI1.3)

**Course Rollover - improvements**

-   Improved form validation of rollover requests 
-   Improved auto-suggest especially where multiple courses for the same module are required for the different module deliveries
-   Additional documentation for rolling over older courses - [M30b - Duplicating a Moodle course from previous academic years (2021/22 and before)](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=212174844)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/202345056/202345053.png) (image/png)

