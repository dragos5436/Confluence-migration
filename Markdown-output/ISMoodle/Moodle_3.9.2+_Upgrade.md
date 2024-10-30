# Moodle 3.9.2+ Upgrade

Release date: Tuesday 10th November 1am-2am

Release lead: AS

Testing captured in: [Moodle Testing Strategy for 3.9](Moodle_Testing_Strategy_for_3.9) & [Manual Testing for 3.9](Manual_Testing_for_3.9)

1) Update code from build

<https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/blob/CATALYST_39_SUBMODULES/build.sh>

<https://git.automation.ucl.ac.uk/moodle/submodules/-/tree/16>

<https://git.catalyst-eu.net/ucl/moodle/-/commits/client-ucl-core-3.9-prod>

2) Remove hotfixes for \#9, \#81, \#82 \#115 and \#133

<https://moodle.ucl.ac.uk/admin/settings.php?section=theme_adaptable_generic>

``` java
 
/*Hotfix for jezhops#81 */
ul.ctopics .content .summary ul, ul.ctopics .content .section ul {
margin: 0 0 10px 20px;
}
/*End of collapsed topics fix*/
 
 
/*Hotfix for block padding - jezhops#9 */
.mb-3{
 padding: .5rem!important;
}
/*End Fix for block padding*/
 
 
/*Hotfix for jezhops#82 */
.menubar{
justify-content: flex-end;
}
/*End fix for Block editing ... */


/*Hotfix for jezhops#133 */
.searchbox{
float: left;
}
/*End fix for hsuforum advanced search */


/*Hotfix for jezhops#115 */
.format-onetopic .onetopic .tab_content {
 background-color: #f3f3f3;
}
/*End fix for jezhops#115 */
```

Final customcss is as follows:

``` java
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

/*Hotfix for jezhops#194 */
.dropdown-item:hover, .dropdown-item:focus {
background-color: #FFF;
}
/*End fix for jezhops#194 */

```

3) Enable cog in Adaptable

<https://moodle.ucl.ac.uk/admin/settings.php?section=theme_adaptable_navbar_settings>

| Setting                               | Before | After        |
|---------------------------------------|--------|--------------|
| theme\_adaptable | editsettingsbutton | button | cogandbutton |

4) Enable emoji picker in Atto toolbar

<https://moodle.ucl.ac.uk/admin/settings.php?section=editorsettingsatto>

Add **emojipicker** to **insert** row

Remove **h5p** from **files** row

Toolbar config should be as follows:

``` java
style1 = fullscreen, title, fontfamily, fontsize, morefontcolors
list = unorderedlist, orderedlist
links = link
files = echo360attoplugin, image, media
undo = undo
style2 = bold, italic, underline, strike, subscript, superscript
align = align
indent = indent
insert = equation, charmap, table, clear, embedquestion, emojipicker
pastespecial = pastespecial
accessibility = accessibilitychecker, accessibilityhelper
other = htmlplus
```

5) Disable new H5P integration

<https://moodle.ucl.ac.uk/admin/modules.php>

**Hide** the **H5P** activity module

<https://moodle.ucl.ac.uk/admin/filters.php>

Set the **Display H5P** filter to **Disabled**

6) Hide personal info from user profile

<https://moodle.ucl.ac.uk/admin/settings.php?section=userpolicies>

Add **Last access** and **My courses **to the list of **Hidden user fields**

(Tested here → [Student role testing](https://wiki.ucl.ac.uk/display/ECARC/Student+role+testing), released early on 05/11)
