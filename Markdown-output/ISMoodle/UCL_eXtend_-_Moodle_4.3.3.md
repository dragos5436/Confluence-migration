# UCL eXtend - Moodle 4.3.3

Release date: tbc

Release Lead: AS

1) Major upgrade from Moodle 4.1.x to Moodle 4.3.3+ common codebase

build from [DLE Sprint 2.4 release](DLE_Sprint_2.4_release)

2) Changes that will need to be included in the release

``` java
UPDATE `43_extend_060324`.`mdl_config_plugins` SET `value` = '2022011700' WHERE (`id` = '3586');
```

Due to <https://github.com/catalyst/moodle-tool_mfa/issues/457>

4) Changes to settings:

Component

Setting name

Default

Change to

Reason

assignfeedback\_helixfeedback

default

Yes

No

local\_analytics

gtag

Yes

No

local\_courserollover

enabled

Yes

No

theme\_ucl

ssoenableredirecttoaad

Yes

No

local\_sitsgradepush

enabled

Yes

No

theme\_ucl

footer

&lt;div class="col-lg-4"&gt;
    &lt;h3&gt;Navigation&lt;/h3&gt;
    &lt;ol class="list-unstyled"&gt;
        &lt;li&gt;&lt;a href="/my/"&gt;Home&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="/login/signup.php"&gt;Register&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="<https://www.ucl.ac.uk/short-courses/ucl-short-courses>" target="\_blank"&gt;Short course catalogue&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="<https://extendstore.ucl.ac.uk/manage?action=home>" target="\_blank"&gt;Manage Licences&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="<https://forms.office.com/Pages/ResponsePage.aspx?id=_oivH5ipW0yTySEKEdmlwlm0pZSdIF1GnjErort9oTBUMEFFV1JRRk9JTTNKTk5LQ1RVSUFWQVpXRCQlQCN0PWcu>" target="\_blank"&gt;Events Notification Form&lt;/a&gt;&lt;/li&gt;
    &lt;/ol&gt;
&lt;/div&gt;
&lt;div class="col-lg-4"&gt;
    &lt;h3&gt;Information&lt;/h3&gt;
    &lt;ol class="list-unstyled"&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=90"&gt;About UCL Extend&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=17"&gt;Your information&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=87650" target="\_blank"&gt;Accessibility Statement&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=128074" target="\_blank"&gt;Retention Policy&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=16" target="\_blank"&gt;Help&lt;/a&gt;&lt;/li&gt;
    &lt;/ol&gt;
&lt;/div&gt;
&lt;div class="col-lg-4"&gt;
    &lt;h3&gt;Additional&lt;/h3&gt;
    &lt;ol class="list-unstyled"&gt;
        &lt;li&gt;&lt;a href="/mod/page/view.php?id=19"&gt;Terms of Website Use&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="https://www.ucl.ac.uk/disclaimer"&gt;Disclaimer&gt;
        &lt;li&gt;&lt;a href="https://www.ucl.ac.uk/foi"&gt;Freedom of Information&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="<https://www.ucl.ac.uk/legal-services/privacy>" target="\_blank"&gt;Privacy and cookies&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="<https://www.ucl.ac.uk/procurement/suppliers/slavery-stmt>" target="\_blank"&gt;Slavery statement&lt;/a&gt;&lt;/li&gt;
    &lt;/ol&gt;
&lt;/div&gt;

Appearance

additionalhtmlfooter

&lt;style id="extend-core-css"&gt;
/\* Keep three course cards per row consistently in all resolutions \*/
@media (min-width: 992px) {
    .block\_myoverview.block .dashboard-card-deck:not(.fixed-width-cards) .dashboard-card {
        width: calc(33.3% - 1rem)!important;
    }
}

/\*\* Show card/list selector in Dashboard \*/
.block\_myoverview.block .dropdown:has(\#displaydropdown) {
    display: inherit;
}

\#displaydropdown {
    border-color: transparent !important;
    background-color: transparent !important;
    font-weight: 400;
    color: \#0055f0;
    text-decoration: none;
}

\#displaydropdown:hover,
\#displaydropdown:focus {
    color: \#0043bd !important;
}
/\*\* End \*/

/\*\* Recently accessed items resizing to fill sidebar space \*/
\#page-my-index \#block-region-side-pre .block\_recentlyaccesseditems .card-deck.dashboard-card-deck.one-row a.card {
    margin-left: 0;
}

/\*\* Adds down/up chevron to Bootstrap accordions \*/
.ddaccordion \[data-toggle="collapse"\] .fa::before {
    content: "\\f077";
}

.ddaccordion \[data-toggle="collapse"\].collapsed .fa::before {
    content: "\\f078";
}
/\*\* End \*/

/\*\* One topic format tabs representation  \*/
body.format-onetopic .nav-tabs.format\_onetopic-tabs .nav-link {
    background-color: \#eeeeeeff;
    color: \#000;
}

body.format-onetopic .nav-tabs.format\_onetopic-tabs .nav-link.active,
body.format-onetopic .nav-tabs.format\_onetopic-tabs .nav-item.show .nav-link {
    background-color: \#003d4c;
    color: \#fff;
    font-weight: bold;
}

body.format-onetopic .nav-tabs.format\_onetopic-tabs .nav-item.tab\_level\_0,
body.format-onetopic .nav-tabs.format\_onetopic-tabs .nav-item.tab\_level\_1 {
    padding-right: 2px;
    margin-top: 2px;
    margin-bottom: 1px;
}

body.format-onetopic ul.nav-tabs.format\_onetopic-tabs li.dimmed a {
    color: \#545454;
    opacity: 1;
    background-color: \#fbfbfb;
}

body.format-onetopic ul.nav-tabs.format\_onetopic-tabs li.dimmed a:before {
    content: "\\1F512";
    font-style: normal;
    font-size: 0.75em;
}
/\*\* End \*/

/\* Remove grey background from activity completion within activities \*/
.path-mod .activity-header:not(:empty) {
    background-color: transparent;
}

/\* ECF specific nav pills background colour \*/
\#ecfglobalnav a.nav-link.active {
    background-color: \#003d4c;
    font-weight: bold;
}

/\*\* Move secondary nav to top for course pages \*/
body.path-course-view \#topofscroll {
    display: flex;
    flex-direction: column;
}

body.path-course-view .secondary-navigation {
    order: -1;
    margin-bottom: -18px;
    padding-bottom: 0;
}
/\*\* End \*/

/\* Hide UCL Moodle hero element  \*/
\#ucl-hero {
    display: none;
}

/\* Hide ECF Modules 1-5, 6-9 modules \*/

body.path-my .dashboard-card\[data-course-id="1302"\],
body.path-my .dashboard-card\[data-course-id="1307"\],
body.path-my li.course-listitem\[data-course-id="1302"\],
body.path-my li.course-listitem\[data-course-id="1307"\],
body.path-my div.course-summaryitem\[data-course-id="1302"\],
body.path-my div.course-summaryitem\[data-course-id="1307"\] {
    display: none;
}

/\* Hide percentage bar under ECF Programme Home dashboard card \*/
.dashboard-card\[data-course-id='1024'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1297'\] div.dashboard-card-meta&gt;div.course-card-actions+div {
    visibility: hidden;
}

/\* Hide course progress in page header for ECF Courses \*/

body.course-1024 \#page-header-course-progress,
body.course-1297 \#page-header-course-progress,
body.course-1302 \#page-header-course-progress,
body.course-1307 \#page-header-course-progress {
    display: none;
}

/\* Hide grades from ECF courses \*/

body.course-1297 .secondary-navigation li.nav-item\[data-key='grades'\],
body.course-1302 .secondary-navigation li.nav-item\[data-key='grades'\],
body.course-1307 .secondary-navigation li.nav-item\[data-key='grades'\] {
    display: none;
}

/\* Hide participants from ECF courses \*/

body.course-1297 .secondary-navigation li.nav-item\[data-key='participants'\],
body.course-1302 .secondary-navigation li.nav-item\[data-key='participants'\],
body.course-1307 .secondary-navigation li.nav-item\[data-key='participants'\],
body.course-1024 .secondary-navigation li.nav-item\[data-key='participants'\] {
    display: none;
}

/\* Hide secondary navigation from main pages from ECF courses (only shows "Course" for learners) \*/
body.path-course.path-course-view.course-1297 .secondary-navigation,
body.path-course.path-course-view.course-1302 .secondary-navigation,
body.path-course.path-course-view.course-1307 .secondary-navigation {
    display: none;
}

/\* Show secondary navigation when editing \*/
body.editing.path-course.path-course-view.course-1297 .secondary-navigation,
body.editing.path-course.path-course-view.course-1302 .secondary-navigation,
body.editing.path-course.path-course-view.course-1307 .secondary-navigation,
body.editing.course-1297 .secondary-navigation li.nav-item\[data-key='grades'\],
body.editing.course-1302 .secondary-navigation li.nav-item\[data-key='grades'\],
body.editing.course-1307 .secondary-navigation li.nav-item\[data-key='grades'\],
body.editing.course-1297 .secondary-navigation li.nav-item\[data-key='participants'\],
body.editing.course-1302 .secondary-navigation li.nav-item\[data-key='participants'\],
body.editing.course-1307 .secondary-navigation li.nav-item\[data-key='participants'\],
body.editing.course-1024 .secondary-navigation li.nav-item\[data-key='participants'\] {
    display: initial;
}

/\* Hide percentage bar under NPQ Programme Home dashboard card \*/
.dashboard-card\[data-course-id='998'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='999'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1000'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1001'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1002'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1003'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1240'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1241'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1242'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1243'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1244'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1245'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1358'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1359'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1360'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1361'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1362'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1363'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1364'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1365'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1463'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1468'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1469'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1470'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1471'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1472'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1473'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1474'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1475'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1502'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1604'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1603'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1606'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1602'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1601'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1600'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1599'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1598'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1630'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1654'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1657'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1660'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1670'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1671'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1693'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1694'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1695'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1692'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1691'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1690'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1689'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1671'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1696'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1597'\] div.dashboard-card-meta&gt;div.course-card-actions+div,
.dashboard-card\[data-course-id='1730'\] div.dashboard-card-meta&gt;div.course-card-actions+div {
    visibility: hidden;
}

/\* Hide course progress in page header for NPQ Courses \*/

body.course-998 \#page-header-course-progress,
body.course-999 \#page-header-course-progress,
body.course-1000 \#page-header-course-progress,
body.course-1001 \#page-header-course-progress,
body.course-1002 \#page-header-course-progress,
body.course-1003 \#page-header-course-progress,
body.course-1240 \#page-header-course-progress,
body.course-1241 \#page-header-course-progress,
body.course-1242 \#page-header-course-progress,
body.course-1243 \#page-header-course-progress,
body.course-1244 \#page-header-course-progress,
body.course-1245 \#page-header-course-progress,
body.course-1358 \#page-header-course-progress,
body.course-1359 \#page-header-course-progress,
body.course-1360 \#page-header-course-progress,
body.course-1361 \#page-header-course-progress,
body.course-1362 \#page-header-course-progress,
body.course-1363 \#page-header-course-progress,
body.course-1364 \#page-header-course-progress,
body.course-1365 \#page-header-course-progress,
body.course-1463 \#page-header-course-progress,
body.course-1468 \#page-header-course-progress,
body.course-1469 \#page-header-course-progress,
body.course-1470 \#page-header-course-progress,
body.course-1471 \#page-header-course-progress,
body.course-1472 \#page-header-course-progress,
body.course-1473 \#page-header-course-progress,
body.course-1474 \#page-header-course-progress,
body.course-1475 \#page-header-course-progress,
body.course-1502 \#page-header-course-progress,
body.course-1604 \#page-header-course-progress,
body.course-1603 \#page-header-course-progress,
body.course-1606 \#page-header-course-progress,
body.course-1602 \#page-header-course-progress,
body.course-1601 \#page-header-course-progress,
body.course-1600 \#page-header-course-progress,
body.course-1599 \#page-header-course-progress,
body.course-1598 \#page-header-course-progress,
body.course-1630 \#page-header-course-progress,
body.course-1654 \#page-header-course-progress,
body.course-1657 \#page-header-course-progress,
body.course-1660 \#page-header-course-progress,
body.course-1670 \#page-header-course-progress,
body.course-1671 \#page-header-course-progress,
body.course-1693 \#page-header-course-progress,
body.course-1694 \#page-header-course-progress,
body.course-1695 \#page-header-course-progress,
body.course-1692 \#page-header-course-progress,
body.course-1691 \#page-header-course-progress,
body.course-1690 \#page-header-course-progress,
body.course-1689 \#page-header-course-progress,
body.course-1671 \#page-header-course-progress,
body.course-1696 \#page-header-course-progress,
body.course-1597 \#page-header-course-progress,
body.course-1730 \#page-header-course-progress {
    display: none;
}

/\* Hide competencies from secondary navigation \*/
.secondary-navigation li.nav-item\[data-key='competencies'\] {
    display: none;
}

/\* Change footer background colour to UCL Extend blue \*/
\#ucl-footer {
    background-color: \#003d4c !important;
    z-index: 1;
}

/\*\* Extend homepage specific CSS \*/
body\#page-site-index.course-1 {
    background-color: \#003d4c;
    background: linear-gradient(180deg, rgba(0, 61, 76, .1) 0%, \#003d4c 60%, \#003d4c 100%);
}

body\#page-site-index.course-1.pagelayout-frontpage.notloggedin \#page.drawers {
    background-image: url('<https://extend.ucl.ac.uk/pluginfile.php/377695/mod_folder/content/0/homepage_background/UCLX-homepage-bg.jpg>');
    background-repeat: no-repeat;
    background-position: center;
    background-origin: padding-box;
    background-size: cover;
    background-clip: border-box;
}

body\#page-site-index.notloggedin.pagelayout-frontpage \#page.drawers::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.5);
    opacity: 1;
    width: 100%;
    height: 100%;
}

\#page-site-index \#topofscroll,
\#page-site-index .block-region section.block.card,
\#page-site-index \#region-main {
    background-color: transparent;
}

\#page-site-index \#topofscroll {
    min-height: 100vh;
}

\#page-site-index \#page-inner-container {
    background-color: initial;
}

\#frontpage-blurb h1,
\#frontpage-blurb h2,
\#frontpage-blurb h4 {
    text-shadow: 1px 2px rgba(0, 0, 0, .3);
    color: \#fff;
}

\#frontpage-blurb h1 {
    font-size: 3.75rem;
    line-height: 6.4rem;
    position: relative;
}

\#frontpage-blurb h2 {
    line-height: 3.2rem;
}

\#frontpage-blurb a.btn-lg.btn-primary {
    padding: 0.8rem 8rem;
    margin-right: 1rem;
}

\#frontpage-blurb a.btnShowHelpWithLogin {
    text-decoration: none;
}

\#frontpage-blurb a.btnShowHelpWithLogin span.chevron {
    transition: transform 350ms ease;
    -ms-transform: rotate(90deg);
    transform: rotate(90deg);
    display: inline-block;
}

\#frontpage-blurb a.btnShowHelpWithLogin.collapsed span.chevron {
    transition: transform 350ms ease;
    transform: rotate(.1deg);
    display: inline-block;
}

\#frontpage-blurb .card.card-body {
    background-color: rgba(255, 255, 255, 0.75);
}

\#frontpage-blurb .card.card-body p+p {
    margin-bottom: 0;
}

\#frontpage-blurb h1 span {
    position: relative;
    display: inline;
    z-index: 1;
}

\#frontpage-blurb h1 svg {
    position: absolute;
    top: 1.2em;
    left: 0;
    width: 100%;
    overflow: visible;
    z-index: -1;
}

\#frontpage-blurb h1 svg path {
    fill: none;
    stroke: \#0097A9;
    stroke-linecap: round;
    stroke-linejoin: round;
    vector-effect: non-scaling-stroke;
}
/\*\* END OF Extend homepage specific CSS \*/

/\*\* Fix lesson percentage bar \*/
[body.cm](http://body.cm)-type-lesson .progress\_bar .progress {
    height: 1rem;
}

[body.cm](http://body.cm)-type-lesson .progress\_bar .progress .bar {
    font-size: 0.95rem;
    line-height: 1rem;
}

/\*\* END fix lesson percentage bar \*/

/\* Fix banner image margins that add horizontal scroll \*/
img.atto\_image\_button\_text-bottom {
    margin-left: 0 !important;
    margin-right: 0 !important;
}

/\*\* Remove duplicate links from footer \*/
\#ucl-footer \#footer-metadata div.policiesfooter+a {
    display: none;
}

\#footer-metadata [p.pt](http://p.pt)-3 {
    display: none;
}

\#ucl-footer div.logininfo {
    margin-top: 1rem;
}

/\*\* End \*/

/\*\* Fix wiki preview \*/
body.path-mod-wiki .wiki\_previewbox {
    width: 100%;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.16);
    border: 1px solid rgba(202, 0, 7, 0.2);
    padding: 0 0.4rem;
}

body.path-mod-wiki \#fitem\_id\_newcontent,
body.path-mod-wiki \#fitem\_id\_newcontent\_editor {
    flex-direction: column;
}

body.path-mod-wiki \#fitem\_id\_newcontent div.form-inline,
body.path-mod-wiki \#fitem\_id\_newcontent\_editor div.form-inline {
    max-width: 100%;
}

body.path-mod-wiki \#fitem\_id\_newcontent div.form-inline div.wikieditor-toolbar+div {
    width: 100%;
}

/\*\* End \*/

/\* Remove JavaScript add-ons from learners view \*/
section.extend-addon {
    position: absolute;
    left: -10000px;
    height: 0px;
}

/\*\* Show JavaScript add-ons when editing \*/
body.editing section.extend-addon {
    position: relative;
    left: initial;
    height: initial;
}

body.editing section.extend-addon div\[id\].d-none,
body.editing section.extend-addon div.d-none.extend-addon-info {
    display: block !important;
}

/\*\* End \*/

/\* Text and media labels appearing in Course Index \*/
.courseindex .d-flex-noedit {
    display: flex;
}

/\* Fix restrictions margins for topics format (one topic shown) \*/
body.format-topics .course-content .section-summary .summarytext {
    margin: initial;
}

/\* Add light grey background to mask whitespace \*/
\#page.drawers {
    background-color: \#f8f8f8;
}

/\* Create breather space on the left of course image to look harmonically with grey background \*/
.bg-cover {
    margin-left: 0.5em;
}

/\* Give space at the top of the page in Dashboard \*/
\#page-my-index \#block-region-content {
    margin-top: 1rem;
}

/\* Remove top border from Timeline block in Dashboard \*/
\#page-my-index .block\_timeline.block {
    border-top: none;
}

/\* Align Timeline header with content in the block in Dashboard \*/
\#page-my-index .block\_timeline.block .card-title {
    padding-left: 0.75rem;
}

/\* Make Course Overview and Important News headers same size as Timeline header in Dashboard \*/
\#block-region-content .block\_myoverview .card-body h5, .extend-important-news .card-body h5 {
    font-size: 1.75em;
}

/\* Align Important News with Course Overview block \*/
.extend-important-news .card-body {
    padding-left: 0 !important;
}

/\* Hide course progress in page header for Facilitator Course \*/

body.course-1664 \#page-header-course-progress {
    display: none;
}

/\* Hide percentage bar under Facilitator dashboard card \*/

.dashboard-card\[data-course-id='1664'\] div.dashboard-card-meta&gt;div.course-card-actions+div {
    visibility: hidden;
}

/\* Fix blue looking icons \*/
.activityiconcontainer.content .activityicon.nofilter {
    filter: none !important;
}

/\* Fix blue outline on image links to mediacentral \*/
a\[href^='[https://mediacentral'\]:not(\[class\])](https://mediacentral) {
    outline: none;
}

/\* Add left padding to dashboard \*/
\#page-my-index.pagelayout-mydashboard div\[role="main"\] {
    padding-left: 15px;
}

/\*\* Change text of Unstar \*/
button.remove-favourite i.fa.fa-star+small {
    /\* color: transparent;
    user-select: none; \*/
    display: none;
}

button.remove-favourite i.fa.fa-star::after {
    display: inline-block;
    font-size: 85%;
    font-weight: 400;
    font-family: var(--font-family-sans-serif);
    position: absolute;
    content: "Unstar";
    padding-left: 0.4em;
}

/\* Fix rounded corners in Moodle 4.3 \*/
.activity-item .activity-altcontent img {
    border-radius: 0;
}
&lt;/style&gt; &lt;!-- \#extend-core-css --&gt;
&lt;script&gt;
document.head.insertAdjacentElement("beforeend", document.getElementById("extend-core-css"));
&lt;/script&gt;

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
<td>themelist</td>
<td>norse</td>
<td>ucl</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> </td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

6) change theme

<https://extend.ucl.ac.uk/theme/index.php>

Select UCL theme 

7) Disable plugins

Disable qtype\_stack

[extend.ucl.ac.uk/admin/qtypes.php](http://extend.ucl.ac.uk/admin/qtypes.php)

Disable blocks

[extend.ucl.ac.uk/admin/blocks.php](http://extend.ucl.ac.uk/admin/blocks.php)

-   Common Timetable
-   Portico Enrolments
-   Titus Category List
-   Lifecycle
-   Library Search
-   Library Resources

Release Notes:

**Moodle 4.3 upgrade**

-   blog post 

-   


