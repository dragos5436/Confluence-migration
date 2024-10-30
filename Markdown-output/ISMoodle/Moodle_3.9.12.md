# Moodle 3.9.12

Release date: Thursday 20th January 2022 1am-2am

Release Lead: NB supported by AS 

Deadline to add changes to this release: Friday 14th January 2022 8pm

Deadline to handover release to Catalyst: Monday 17th January 2022 8pm

Must sign-off staging deployment by: Tuesday 18th January 2022 5pm

1) Minor Release of Moodle 3.9.12

Update from 3.9.11

2) Performance fixes

a) Collapsed Topics - auto-in

<https://github.com/gjb2048/moodle-format_topcoll/issues/114>

<https://github.com/gjb2048/moodle-format_topcoll/commits/MOODLE_39>

b) hsuforum - done

<https://github.com/open-lms-open-source/moodle-mod_hsuforum/issues/19>

<https://github.com/open-lms-open-source/moodle-mod_hsuforum/pull/20/files>

3)Plugins:

a) Theme updated branch - done

b) New plugin - mhchem - done

c) Catalyst fixes to UCL plugins - not progressed in time

Theme fixes:

My Courses dropdown not showing all enrolled courses

<https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/-/commit/10a2c545c5549e8c13b5dba6d4341d0575940232>

<https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues/258#note_725725606>

4) Changes to settings:

Component

Setting name

Before

After

Reason

theme\_adaptable
blockheaderbordertopstyle
solid
none
latest commits add line to all blocks.  changing setting to none remove line

<https://gitlab.com/jezhops/moodle-theme_adaptable/uploads/e46ff29e2735d48f20924c4a4ebaa665/Screenshot_2021-11-05_at_12.07.55.png>

<https://gitlab.com/jezhops/moodle-theme_adaptable/uploads/8b6977b76ab57a4a50495774584ff888/Screenshot_2021-11-06_at_01.58.59.png>

briefly discussed here

<https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues/258#note_725725606>

theme\_adaptable

(navbar setting)

enablemysites
Enable excluding hidden courses

excludehidden

Enable including hidden courses

includehidden 

to enable viewing of hidden courses from dashboard 'my courses' to all roles expect 'students'

<https://gitlab.com/jezhops/moodle-theme_adaptable/-/issues/258#note_725725606>

Manage Global Search
searchincludeallcourses
solid
none
CTP-544 - global search overriding search courses Done
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

/\*Temp fix for Chrome v93+  issue with changing course formats\*/
fieldset:target::before
{ content: unset; }
/\*End of Temp fix for Chrome v93+  issue with changing course formats \*/

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

5) Config changes:

a) Change to include mhchem in Mathjax to be made at location: <https://moodle.ucl.ac.uk/admin/settings.php?section=filtersettingmathjaxloader>

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
<td>filter_mathjaxloader | mathjaxconfig</td>
<td>MathJax.Hub.Config({<br />
    config: [&quot;Accessible.js&quot;, &quot;Safe.js&quot;],<br />
    errorSettings: { message: [&quot;!&quot;] },<br />
    skipStartupTypeset: true,<br />
    messageStyle: &quot;none&quot;<br />
});</td>
<td>MathJax.Hub.Config({<br />
  config: [&quot;Accessible.js&quot;, &quot;Safe.js&quot;],<br />
    errorSettings: { message: [&quot;!&quot;] },<br />
    skipStartupTypeset: true,<br />
    messageStyle: &quot;none&quot;,<br />
    TeX: {extensions: [&quot;mhchem.js&quot;]}<br />
});</td>
</tr>
</tbody>
</table>

Release Notes:

**Update Moodle to version 3.9.12**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.9.12_release_notes) and security issues

**New Plugin - Free Hand Drawing Question Type**

-   Miniguide: M12f Freehand Drawing question type
-   Blog Post: https://blogs.ucl.ac.uk/digital-education/?p=17113

**Bug fixes**

-   Search Courses reverted to basic search to allow searching for courses a user isn't enrolled in (MDL-71115)
-   "My Courses" menu now showing all relevant courses
-   Submission status stays "Submitted for grading" after a submission is removed by or for the student - fixed. (MDL-66203)
-   Workshop skips scheduled allocation - fixed. (MDL-68944)
-   Tabbed Topics Course Format - Font Tab Issue fixed
-   Performance fixes to Adaptable theme and "Forum (Advanced)" (hsuforum)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/178853869/178853867.png) (image/png)

