# Moodle 3.9.10

Release date: Thursday 16th September 1am-2am

Release Lead: AS

Deadline to add changes to this release: Friday 10th September 8pm

Deadline to handover release to Catalyst: Monday 13th September 8pm

Must sign-off staging deployment by: Tuesday 14th September 5pm

1) Minor Release of Moodle 3.9.10

Update from 3.9.7+

3.9.8 release was skipped and 3.9.9 was a hotfix for a regression introduced by 3.9.8 so this latest release is now 3.9.10

2) ...

3) Changes to the language pack:

Component

Stringname

Before

After

Reason

|                      |                               |                                      |                                                              |
|----------------------|-------------------------------|--------------------------------------|--------------------------------------------------------------|
| Component            | String                        | Standard text                        | Local customisation                                          |
| mod\_turnitintooltwo | modulename                    | Turnitin Assignment 2                | Assignment (Turnitin)                                        |
| mod\_turnitintooltwo | modulenameplural              | Turnitin Assignments                 | Assignments (Turnitin)                                       |
| mod\_turnitintooltwo | norepository                  | No Repository                        | No Repository - (not stored in Turnitin, for drafts/testing) |
| mod\_turnitintooltwo | pluginadministration          | Turnitin Assignment 2 Administration | Turnitin Assignment Administration                           |
| mod\_turnitintooltwo | pluginname                    | Turnitin Assignment 2                | Assignment (Turnitin)                                        |
| mod\_turnitintooltwo | turnitintooltwoadministration | Turnitin Assignment 2 Administration | Turnitin Assignment Administration                           |

3) Fix discrepancies between Catalyst build and UCL Build

-   SITS year
-   Quiz issue with uploading Word docs
-   date manager
-   wordtable syntax
-   Issues with theme (css) theme\_adaptable | customcss - fixed in Snapshot 20/21 

``` java
/* Segun Babalola, 2021-08-10. Correction to display of Quiz review section */
div.felement {
margin-left: 2px!important;
}



/* CSS for footer */

/* CSS for footnote */
#page-footer .footnoteucl > li {
display:inline;
}

/* CSS to adjust the font-size of footer */
#page-footer,
#page-footer p {
font-size: small;
}
/* End CSS for footer */



/* CSS for Header to meet UCL branding guidelines */
#main-navbar {
border-top: solid #ecefe7 1px;
}
#logo {
margin-bottom: -8px;
}
/* End of CSS for Header to meet UCL branding guidelines */
```

Release Notes:

**Update Moodle to version 3.9.10**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.9.10_release_notes) and security issues

**New Plugin - Moodle Boards** 

-   Miniguide: M66 - Board

Turnitin plugin Update 

-   Blog Post: https://blogs.ucl.ac.uk/digital-education/2021/09/10/updated-turnitin-plugin-in-moodle/

**New Plugin - Date manager**

-   Miniguide: M67 - Date manager

-   Blog Post: https://blogs.ucl.ac.uk/digital-education/2021/08/12/new-date-manager-report-in-moodle/

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/170395790/170395789.png) (image/png)

