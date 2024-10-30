# Incremental Release 20/12/22

Release date: 20 Dec 2022 ?

Release Lead: AS

Deadline to add changes to this release: 16 Dec 2022 

Deadline to handover release to Catalyst: 16 Dec 2022 

Must sign-off staging deployment by: 19 Dec 2022 

Release ticket - <https://wrms.catalyst.net.nz/wr.php?request_id=397867>

1) Changes that will need to be included in the release

-   <https://wrms.catalyst.net.nz/wr.php?request_id=393593> - Add indexes on logstore\_standard
-   <https://wrms.catalyst.net.nz/wr.php?request_id=396208> - Add local\_ucl to cleanup activity data preventing merging accounts
-   block\_lifecycle updates
-   objectfs upgrade
-   Adaptable accessibility shading fix
-   clc\_admin sync can be limited to 22-23 category tree

3) Changes to language pack:

Component

Setting name

Before

After

Reason

core\_admin
managecontextlock
Freeze this context
Make Course Read Only
CTP-1686 - Alter Drop Down menu text for Freeze this context Done
core\_admin
managecontextunlock
Unfreeze this context
Make Course Editable
CTP-1686 - Alter Drop Down menu text for Freeze this context Done
core\_admin
confirmcontextlock
{$a-&gt;contextname} is currently unfrozen. Freezing it will make it read-only and prevent users from making changes. Are you sure you wish to continue?
{$a-&gt;contextname} is currently editable. Making the course read-only will prevent staff and students from making any changes. Are you sure you wish to continue?
CTP-1687 - Alter text in pop up windows displayed from selecting Freeze Context and Unfreeze Context dropdown menus Done
core\_admin
confirmcontextunlock
{$a-&gt;contextname} is currently frozen. Unfreezing it will allow users to make changes. Are you sure you wish to continue?
{$a-&gt;contextname} is currently read-only. Making the course editable will allow staff and students to make changes. Are you sure you wish to continue?
CTP-1687 - Alter text in pop up windows displayed from selecting Freeze Context and Unfreeze Context dropdown menus Done
core\_admin
managecontextlocklocked
{$a-&gt;contextname} and any lower contexts are now frozen.
{$a-&gt;contextname} is now read-only.
CTP-1687 - Alter text in pop up windows displayed from selecting Freeze Context and Unfreeze Context dropdown menus Done
core\_admin
managecontextlockunlocked
{$a-&gt;contextname} and any lower contexts are now unfrozen.
{$a-&gt;contextname} is now editable.
CTP-1687 - Alter text in pop up windows displayed from selecting Freeze Context and Unfreeze Context dropdown menus Done

4) Changes to settings:

Component

Setting name

Before

After

Reason

local\_ucl\_clc\_admin
categoryNamesToAutoSync
600
22-23 category tree only.

will stop syncing 21-22

theme\_adaptable
dimmedtextcolour
\#6a737b
\#666D73

CTP-1530 - Resolve a contrast issue in Moodle to help accessibility Done

theme\_adaptable
fontheadercolor
\#288DA4
\#227689

CTP-1530 - Resolve a contrast issue in Moodle to help accessibility Done

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

/\* CSS for Mark as Done button \*/
.btn.disabled, .btn:disabled {
    opacity: 0.40;
    color: grey !important;
    background-color: white !important;
}
/\* End CSS for Mark as Done button \*/ 

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

/\* CSS for hidden section opacity \*/
.course-content ul.ctopics li.section.hidden .content .summary {
    opacity: 1;
}
/\* End CSS for hidden section opacity \*/ 

CTP-1530 - Resolve a contrast issue in Moodle to help accessibility Done

Release Notes:

**tbc**
