# Moodle 2.6 theme

To choose and customise a pre-existing Moodle theme
No more vertical navigation - need something to replace it.

#### Considerations

See UCL branding guidelines for footer code, 'blurb' code for news hotspots, UCL logo image   -   [www.ucl.ac.uk/indigo](http://www.ucl.ac.uk/indigo)

#### Colours

OPTION 3 – Warm Grey and Light Blue
Top nav bar and UCL logo (leaving portico icon white): 8C8279
Hover state for top nav bar: 7b7269
Text colour for Top nav bar: ffffff
Text colour for Top nav bar hover: ffffff

Hyperlinked text: 3b6d80
Background for sidebar headers (Navigation, Administration, etc): 619eb6
Text colour for sidebar headers: FFFFFF

#### Images

**Site home**
5 or six images that change on page load.   Current size is 1022 x 300.   Move to 600 x 300 with image covering more of the available space.

**News hot-spots**
Max dimensions of 300 x 200

#### Documents

[Extend    ](attachments/40076626/40992846.doc)-   an example of what UCL Moodles sister site will look like

**Mock-ups for new UCL Moodle**

[Frontpage](attachments/40076626/40993347.pdf)

[My Home](attachments/40076626/40992992.pdf)

[Course Page](attachments/40076626/40992994.pdf)

[Theme Specifications](attachments/40076626/40993395.xlsx)

theme spec also references these three PDF's just to show where the changes are on the page.

[course page](attachments/40076626/40993315.pdf) - for general changes throughpout moodle

[home page logged out](attachments/40076626/40993316.pdf)- what the first point of entry looks like

[My Home](attachments/40076626/40993314.pdf)

#### Ian's Notes and Queries

-   Which browser versions do we need to support?

On student desktop is IE9 and FF20

-   Is there a specific student and/or staff desktop image we can test on?

Lets try the citrix client - <https://storefront.desktop.ucl.ac.uk/Citrix/StoreWeb/>
Otherwise we can find a physical macine in ISd
Plus Martin to supply BrowserStack account login details for OS/browser combination testing

-   Possible issues with Compatibility Mode?

Martin to look into 2.6 release notes

-   Which rendering engine in IE (related to 3. above)?
-   Lean theme? Accessibility? Testing abroad?

##### [DB changes for new instance](DB_Settings_for_new_2.6_instance)

#### Dropdown contents

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Staff Help<br />
</p></th>
<th><p>Student Help<br />
</p></th>
<th><p>Services<br />
</p></th>
<th><p>My Courses (logged in)<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Login Problems?<br />
</p></td>
<td><p>Login Problems?<br />
</p></td>
<td><p>Moodle Archive<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>UCL Moodle Help - remove<br />
</p></td>
<td><p>Moodle Quick Start Guide<br />
</p></td>
<td><p>Portico<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Moodle Support Documentation<br />
Rename Moodle Help<br />
</p></td>
<td><p>FAQ's<br />
</p></td>
<td><p>Common Timetable<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Book Moodle Training<br />
</p></td>
<td><p>Contact Moodle Support<br />
</p></td>
<td><p>Library<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Request a Moodle Course<br />
</p></td>
<td><p>Plagiarism and Academic Writing<br />
</p></td>
<td><p>MyAccount<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Request Portico Enrolments<br />
</p></td>
<td><p>Turnitin Guide for Students - remove<br />
</p></td>
<td><p>Live@UCl Email<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Moodle Exam Notification<br />
</p></td>
<td><p>Learning with technology - remove<br />
</p></td>
<td><p>More Student Links<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Contact Moodle Support<br />
</p></td>
<td><p> </p></td>
<td><p>MyPortfolio<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>UCL Moodle User Group<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>GSWM ??<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>

Snags for UCL Theme as of 06/05/14

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Browser/OS</p></th>
<th><p>Issue<br />
</p></th>
<th><p>Comments<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>iPad/Safari?<br />
</p></td>
<td><p>Login box is positioned on left - should be rght<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Hyperlink text needs to be #457386<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Dropdown menu colours do not contrast well when compressed - eg link text over the grey background.<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="even">
<td><p>All<br />
</p></td>
<td><p>Remove ALL CAPS from course name in banner<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Remove theme settings pages that we dont need, or actually conflict with theme specifications<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Images dont display properly for th emarketing spot when uploaded via the settings page<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>The enrol page has a fixed width and other styling differences - seems to pick its style from somewhere else<br />
<a href="https://v262.moodle-uat.ucl.ac.uk/enrol/index.php?id=23325" class="uri">https://v262.moodle-uat.ucl.ac.uk/enrol/index.php?id=23325</a></p></td>
<td><p>Issue due to course being set to use a legacy UCL theme.<br />
Options to allow users to specify their own themes have been disabled at site level.</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Can we put &quot;Powered by: Moodle 2.6&quot; bottom right of the footer.<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>The login as a guest link just re-displays the login page. On live it takes you past the T&amp;C page and logs you in as guest.<br />
<br />
In a similar note   the login page    <a href="https://v262.moodle-uat.ucl.ac.uk/login/index.php" class="uri">https://v262.moodle-uat.ucl.ac.uk/login/index.php</a>     needs to be styled a bit more like the home page - login box on right and dropshadow added.</p></td>
<td><p>Completed 12/05/14</p></td>
</tr>
<tr class="even">
<td><p>All<br />
</p></td>
<td><p>Remove ALL CAPS  for the crumbtrail<br />
</p></td>
<td><p>Completed 08/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Add - 'cookies'  and 'policy and guidelines' links under the 'powered by' link - see live Moodle for link info<br />
</p></td>
<td><p>Completed 13/05/14<br />
Cookie link is already part of 'standard' UCL footer.<br />
A 'Moodle usage policy' setting has been added to allow admins to upload a policy file.</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>The 'alert' type notifications arent working properly.  If I close mine, it re-appears if the site home is loaded again. Other people are reporting that they are getting a blank box with no text.<br />
I can get examples if you need.<br />
</p></td>
<td><p>Update 13/05/14<br />
The reason for alerts not showing correctly is they are language specific: if the user's browser<br />
is configured to a language other than 'en' then the message won't display.</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Can the 'back to top' link be made a bit more obvious. Slightly larger and a fully white arrow?<br />
</p></td>
<td><p>Completed 13/05/14.<br />
Note that the arrow is (currently) an HTML entity meaning there are just a few types of 'up arrow' to choose from.</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Can you reduce the width of the block columns on each side. At present they look to be roughly 25%  can this go down to about 20% - we can talk on this one<br />
</p></td>
<td><p>Drop this if it is a lot of work<br />
Am parking this for now as we are slightly at the mercy of the Bootstrap fluid grid system. See <a href="http://getbootstrap.com/2.3.2/scaffolding.html#fluidGridSystem" class="uri">http://getbootstrap.com/2.3.2/scaffolding.html#fluidGridSystem</a>.</p></td>
</tr>
<tr class="odd">
<td><p>All<br />
</p></td>
<td><p>Can you make the block background shade even paler -    F8FAFB</p></td>
<td><p>Completed 13/05/14</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>The 'hidden item'  shading needs changing.   Height needs to increase so it goes over the top of the text.   Also maybe give it a border and decrease the strength of the shade?  Can talk on this one too.<br />
</p></td>
<td><p>Completed 13/05/14<br />
Change back to shaded box, make shade a little lighter and give it a border.<br />
</p></td>
</tr>
<tr class="odd">
<td><p>FF<br />
</p></td>
<td><p>when you hover over entries in the calendar block you get a nasty flicker effect - I have seen this in moodle versions going back to 2.0     seems just to be a FF thing?<br />
</p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>All<br />
</p></td>
<td><p>On My Home, is it possible to move the search box to the area that contains the crumbtrail and 'customise this page' link. Also restyle to same dimensions as breadcrumb ,Possible to reduce size of search button?<br />
</p></td>
<td><p>Completed 14/05/14<br />
Only if not a lot of work<br />
</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Block style<br />
Background back to F0F5F7<br />
No border -   remove        border: 1px solid #619EB6;     and     border: 1px solid #E3E3E3;<br />
No padding       remove     padding: 8px;      and   padding: 8px 0;</p></td>
<td><p>Completed 14/05/14</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>course elements - can you remove the left hand indent</p></td>
<td><p>Completed 14/05/14</p></td>
</tr>
</tbody>
</table>

##### Snags for UCL Theme as of 15/05/14

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Browser/OS</p></th>
<th><p>Issue<br />
</p></th>
<th><p>Comments<br />
</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>All<br />
</p></td>
<td><p>In Single topic format blocks arent visible  e.g.<br />
[https://v262.moodle-uat.ucl.ac.uk/mod/forum/view.php?id=1570502<br />
] Is this a DB or config setting that deliberately hid them in Live?<br />
</p></td>
<td><p>This is caused by the 'Profile switches' local plugin and the way it adds items to the navigation tree.<br />
Have emailed Martin and Niv to ask how they want to proceed.</p></td>
</tr>
<tr class="even">
<td><p>All<br />
</p></td>
<td><p>Remove small  border top on da-slider<br />
.da-slider {<br />
    border-top: 2px solid #FFFFFF;<br />
</p></td>
<td><p>Completed 16/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All<br />
</p></td>
<td><p>When logged in as trail04 Site home link in navigation - even though it has redirect=0 in the link - still takes you to the 'my home' page<br />
</p></td>
<td><p>Completed 20/05/14</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Restyle course/index.php    as per clean theme<br />
</p></td>
<td><p>Completed 20/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Remove 'frontpage slideshow' settings page from theme settings - I dont think it does anything<br />
</p></td>
<td><p>Completed 20/05/14</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Rename the News slider to 'Service News'  with a line break between the words<br />
</p></td>
<td><p>Completed 20/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>The width on the grid of the calendar block escapes the width of the block when squashed down.<br />
</p></td>
<td><p>Not high priority. Just logging for now.<br />
</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Increase left and right padding on the Orange 'service news' box<br />
</p></td>
<td><p>Completed 29/05/14</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>In the marketing spot titles - change text colour to black and font-weight bold.<br />
</p></td>
<td><p>Completed 29/05/14<br />
</p></td>
</tr>
<tr class="even">
<td><p>All<br />
</p></td>
<td><p>Increase H2 in course content from 1.6 to 1.8 em<br />
</p></td>
<td><p>Completed 03/06/14<br />
</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Code optimisation</p></td>
<td><p>Completed 09/06/14 using PageSpeed recommendations as basis for changes. Note that not all changes could be implemented.</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Prepare remaining front page images<br />
</p></td>
<td><p>Done?</p></td>
</tr>
<tr class="odd">
<td><p>All<br />
</p></td>
<td><p>Review all remaining theme settings pages</p></td>
<td><p>move frontpage content area above marketing spots - completed 06/06/14</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Need to add in &quot;moodle docs for this page link&quot;</p></td>
<td><p>Completed 11/06/14<br />
Its there in 'clean' . Probably to go in footer - but styled to look like it is sitting just above the dark background of the footer.</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>Is there any way to make the grey border on the body diappear when the screen reduces under a certain size?  I can explain.</p></td>
<td><p>Completed 11/06/14<br />
low priority</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>Login box appearance on login/index.php - needs to look the same as the site home</p></td>
<td><p>Completed 16/06/14<br />
Remove redirect We cant use a redirect from login/index.php  to site home index because it breaks the onward URL when logged in.<br />
Restyle login/index.php to look more like site index. with additional wording “You are not logged in to Moodle”</p></td>
</tr>
<tr class="odd">
<td><p>All</p></td>
<td><p>If you go to a course, and view the grader report, and turn editing on, the cells on the right (in the main part of the table) are longer than the cells on the left</p></td>
<td><p>Completed 16/06/14.</p></td>
</tr>
<tr class="even">
<td><p>All</p></td>
<td><p>There is a random horizontal rule in the settings block - it sits at the top of the 'reports' entry</p></td>
<td><p>Completed 18/06/14.</p></td>
</tr>
<tr class="odd">
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>IE 9<br />
</p></td>
<td><p>In the text editor, the hyperlinking doesn't work<br />
</p></td>
<td><p>Possibly other versions of IE<br />
</p></td>
</tr>
<tr class="odd">
<td><p>All?<br />
</p></td>
<td><p>the scrolling has gone from     mod/quiz/report.php    -     quiz qusetion info in the table now pushes the page over 100%, with no horizontal scrollbar<br />
</p></td>
<td><p>Completed 27/06/14 - 'floating' scrollbar implemented.<br />
<br />
Go to Getting started with Lecturecast, choose one of the quizzes, go to 'Attempts XXX' and look at following pge<br />
</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p>.<br />
</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [UCLeXtend - Art Direction - clean version.doc](attachments/40076626/40992846.doc) (application/msword)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 my home.pdf](attachments/40076626/40992992.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 Course page.pdf](attachments/40076626/40992994.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 My home - changes.pdf](attachments/40076626/40993314.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 Course page changes.pdf](attachments/40076626/40993315.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 Home page - logged out - changes.pdf](attachments/40076626/40993316.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2.6 Home page - logged out.pdf](attachments/40076626/40993347.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993398.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993419.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993440.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993441.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993442.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993493.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993494.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993495.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993502.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993512.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993513.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/41844830.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/41844847.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/41844891.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/41844892.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme specification.xlsx](attachments/40076626/40993395.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

