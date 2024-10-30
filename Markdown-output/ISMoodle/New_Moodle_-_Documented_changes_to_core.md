# New Moodle - Documented changes to core

# **Moodle Core**

<table>
<thead>
<tr class="header">
<th>Reference</th>
<th>What?</th>
<th>Why?</th>
<th>Git commit</th>
<th>Testing Instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><del>UCLCoreHack1</del></td>
<td><del>Remove ability to select hourly and daily calendar subscription update frequencies due to impact on server load</del></td>
<td><del>Excessive server load - server load affected service performance / reliability.</del></td>
<td><p><del>bf4a2618279b019251834ec53194667bc1b570ff</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/bf4a2618279b019251834ec53194667bc1b570ff" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/bf4a2618279b019251834ec53194667bc1b570ff</a></del></p></td>
<td><p><del>Go to <a href="https://moodle.ucl.ac.uk/calendar/managesubscriptions.php" class="uri">https://moodle.ucl.ac.uk/calendar/managesubscriptions.php</a></del></p>
<del>and make sure you can't see hourly and daily from the &quot;update interval&quot; dropdown</del></td>
</tr>
<tr class="even">
<td>UCLCoreHack2</td>
<td><p>Make the recent and upcoming calendar export include events for the next 90 days</p>
<p>Ensure that the &quot;recentupcoming&quot; string is customised to state &quot;Recent and next 90 days&quot; <a href="https://moodle-1819.ucl.ac.uk/admin/tool/customlang/index.php?lng=en">https://moodle.ucl.ac.uk/admin/tool/customlang/index.php?lng=en</a></p></td>
<td>A term is 3 months so when the lecturers export the events they want them for the entire term.</td>
<td><p>215b08c6026816664971b28890d904bb67ab18e9</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/215b08c6026816664971b28890d904bb67ab18e9" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/215b08c6026816664971b28890d904bb67ab18e9</a></p></td>
<td><ul>
<li> Go to calendar, click on Month Year above calendar&gt; Export Calendar</li>
<li>Select <strong>Export</strong> events and check <strong>Recent and next 90 days</strong></li>
<li>Click<strong> Export</strong><br />
This should generate a URL for calendar- check this works<br />
<strong><br />
</strong></li>
</ul>
<p>Go to /calendar/export.php. Check Lang is ok on 90 day option. Check events up to 90 days are exported.</p>
<p><br />
</p>
<p>Note: customised language strings are stored in moodledata/lang not in the database so will generally not be applied to any of our tests sites (Preview or Staging) whatsoever, so having to change the language string is expected in non-prod.</p></td>
</tr>
<tr class="odd">
<td>UCLCoreHack3</td>
<td><p>Course Reset should reset comments and completion data by default</p>
<p><br />
</p></td>
<td>Ensure the course is fully reset</td>
<td><p>8bc2ba501d57a7f709ad5a2c0efdb0ad0a40f81d</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/8bc2ba501d57a7f709ad5a2c0efdb0ad0a40f81d" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/8bc2ba501d57a7f709ad5a2c0efdb0ad0a40f81d</a></p></td>
<td>Check course reset form, see that checkboxes are ticked by default</td>
</tr>
<tr class="even">
<td>UCLCoreHack4</td>
<td>Add Kosovo to list of countries available for user profiles</td>
<td>Country recognised by UK &amp; 111 countries but not yet a UN Member so does not yet have a permanent ISO code. Moodle stick to ISO standard (<a href="https://tracker.moodle.org/browse/MDL-19639" class="uri">https://tracker.moodle.org/browse/MDL-19639</a>). No users on New Moodle using this but 5 accounts on Legacy Moodle, only 1 recently accessed. Small hack we can keep.</td>
<td><p>82ea357fbf805f1d249eac94b2c266592965ac19</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/82ea357fbf805f1d249eac94b2c266592965ac19" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/82ea357fbf805f1d249eac94b2c266592965ac19</a></p></td>
<td>Edit your profile and look for Kosovo in list of countries</td>
</tr>
<tr class="odd">
<td>UCLCoreHack5</td>
<td>Lesson - Grade Essays option should list students alphabetically</td>
<td><a href="https://moodle.org/mod/forum/discuss.php?d=134642" class="uri">https://moodle.org/mod/forum/discuss.php?d=134642</a></td>
<td><p>cabcdef49b793784921b6e9a5eba75a4468580c8</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/cabcdef49b793784921b6e9a5eba75a4468580c8" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/cabcdef49b793784921b6e9a5eba75a4468580c8</a></p></td>
<td><p>Find lesson activity<br />
Are the students' names listed alphabetically by surname?</p></td>
</tr>
<tr class="even">
<td>UCLCoreHack6</td>
<td>Homepage for Guests - Redirect Guests to the index of courses so they can find a course to look at</td>
<td>The Homepage is an unhelpful place to direct guests as they cannot find out what courses are available for them to take a look at.</td>
<td><p><del>67350e7ae515c8d0b651b05aa139f366fe1ca247</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/67350e7ae515c8d0b651b05aa139f366fe1ca247" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/67350e7ae515c8d0b651b05aa139f366fe1ca247</a></del></p>
<p><br />
</p>
<p><del>For Moodle 3.8+ - the hub redirect was taken out of core this includes both guest redirect and hub</del></p>
<p><del>56abb88a25faa7f94019a1df8783b9f502f43608</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/56abb88a25faa7f94019a1df8783b9f502f43608" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/56abb88a25faa7f94019a1df8783b9f502f43608</a></del></p>
<p>For 3.11.11+ - back to basic, without the hub hack</p>
<p>cd63c94fb640740a786c3c74c6cf313745068006</p>
<p><br />
</p></td>
<td><p>New Moodle behaviour needs to be:</p>
<ul>
<li>Log in as guest</li>
<li>force user to accept T&amp;Cs before proceeding</li>
<li>Redirect to /course/index.php with category listing or link to all courses</li>
</ul>
<p>(Should be redirected to /course/index.php anytime you attempt to got to / as a guest)</p></td>
</tr>
<tr class="odd">
<td>UCLCoreHack7</td>
<td>Allow manager and tutor roles to unenrol</td>
<td>Allow manager and tutor roles to unenrol students during course resets</td>
<td><p>3c681a38187abe05b9fc82c512aaa506a8f8a129</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/3c681a38187abe05b9fc82c512aaa506a8f8a129" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/3c681a38187abe05b9fc82c512aaa506a8f8a129</a></p>
<p>Fixed:</p>
<p>f7b28e49d7f0a2370f870d8d0ef7f71a8fda790d</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/f7b28e49d7f0a2370f870d8d0ef7f71a8fda790d" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/f7b28e49d7f0a2370f870d8d0ef7f71a8fda790d</a></p></td>
<td>Have a non-admin account enrolled onto a course with the correct role, along with student enrolments, and reset the course.</td>
</tr>
<tr class="even">
<td>MDL-67428</td>
<td>Performance improvement for Moodle navigation</td>
<td>Cuts down on millions of unnecessary database calls.</td>
<td><p>37ff7682a77979b1b884fd03bbe47198699f9d54</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/37ff7682a77979b1b884fd03bbe47198699f9d54" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/37ff7682a77979b1b884fd03bbe47198699f9d54</a></p></td>
<td><p>General smoke test of Moodle</p>
<p>Expect this will be super-seeded by <a href="https://tracker.moodle.org/browse/MDL-68441">MDL-68441</a> in Moodle 4.0</p></td>
</tr>
<tr class="odd">
<td><del>MDL-60666</del></td>
<td><del>LDAP Sync processing in batches</del></td>
<td><del>Prevents Database Write errors while the sync runs (takes 1h30mins on average)</del></td>
<td><p><del>675ad5d25288d3b16cbbe16c564dd1b16260bcc9</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/675ad5d25288d3b16cbbe16c564dd1b16260bcc9" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/675ad5d25288d3b16cbbe16c564dd1b16260bcc9</a></del></p></td>
<td><p><del>Run LDAP sync, monitor via New Relic for dml_write_exception</del></p>
<p><del>Backport. Expected integration in core Moodle 3.9</del></p>
<p>Integrated into 3.11 and 4.0</p></td>
</tr>
<tr class="even">
<td><del>MDL-65061</del></td>
<td><del>IMS Enrol Suspend Status</del></td>
<td><del>Allows for a safety net with the sync not removing any completion data until it's safe to do so.</del></td>
<td><p><del>5620254c85f1468891805b3bc79fc848436a845e</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/5620254c85f1468891805b3bc79fc848436a845e" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/5620254c85f1468891805b3bc79fc848436a845e</a></del></p></td>
<td><p><del>Sync IMS enrolment method. On external unenrolment, the following behaviours can be observed <a href="https://docs.moodle.org/38/en/External_database_enrolment#Unenrolment" class="uri">https://docs.moodle.org/38/en/External_database_enrolment#Unenrolment</a></del></p>
<p>Integrated in core Moodle 4.1</p>
<p><br />
</p></td>
</tr>
<tr class="odd">
<td><del>MDL-19711</del></td>
<td><del>Database Read/Write Splitting</del></td>
<td><del>Required for scaling Database layer horizontally.</del></td>
<td><p><del>854a955a4929a2713e037ed626e98eba4188f3bf</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/854a955a4929a2713e037ed626e98eba4188f3bf" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/854a955a4929a2713e037ed626e98eba4188f3bf</a></del></p></td>
<td><p><del>Backport.</del> Integrated in core Moodle 3.9</p>
<p><br />
</p>
<p><del>Advised not to run upgrade processes with this commit applied see <a href="https://tracker.moodle.org/browse/MDL-19711?focusedCommentId=794469&amp;page=com.atlassian.jira.plugin.system.issuetabpanels%3Acomment-tabpanel#comment-794469">#comment-794469</a> Resolved matter in 3.9</del></p></td>
</tr>
<tr class="even">
<td><del>MDL-58931</del></td>
<td><del>Aurora MySQL driver</del></td>
<td><del>AWS Aurora </del></td>
<td><p><del>66d5492ee54bfb670a8a911bcaac158245e929e0</del></p>
<p><del><a href="https://github.com/moodle/moodle/commit/66d5492ee54bfb670a8a911bcaac158245e929e0" class="uri">https://github.com/moodle/moodle/commit/66d5492ee54bfb670a8a911bcaac158245e929e0</a></del></p></td>
<td><p><del><a href="https://tracker.moodle.org/browse/MDL-58931" class="uri">https://tracker.moodle.org/browse/MDL-58931</a></del></p>
<p><del>Backport from 3.10</del></p>
<p>Was backported into Moodle 3.9.4 - <a href="https://tracker.moodle.org/browse/MDL-70157">MDL-70157</a> - so, not relevant anymore</p></td>
</tr>
<tr class="odd">
<td><del>MDL-66203</del></td>
<td><del>Moodle Assignment - </del></td>
<td><del><a href="https://tracker.moodle.org/browse/MDL-66203" class="uri">https://tracker.moodle.org/browse/MDL-66203</a></del></td>
<td><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/18e1e0fd" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/18e1e0fd</a></del></td>
<td><del>Backport. Not required for 3.10 onwards</del></td>
</tr>
<tr class="even">
<td><del>MDL-68944</del></td>
<td><del>Workshop Allocation fix</del></td>
<td><del><a href="https://tracker.moodle.org/browse/MDL-68944" class="uri">https://tracker.moodle.org/browse/MDL-68944</a></del></td>
<td><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/18e1e0fd" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/18e1e0fd</a></del></td>
<td><del>Backport. Not required for 3.11 onwards</del></td>
</tr>
<tr class="odd">
<td><a href="https://tracker.moodle.org/browse/MDL-71115">MDL-71115</a></td>
<td><p>Global search should only take over the front page search when it has equivalent functionality</p></td>
<td><a href="https://tracker.moodle.org/browse/MDL-71115" class="uri">https://tracker.moodle.org/browse/MDL-71115</a></td>
<td><a href="https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/79ab6d7e0126862ccd14bd3cd70467a76d25d65a" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/commit/79ab6d7e0126862ccd14bd3cd70467a76d25d65a</a></td>
<td>Backport. Not required for 4.0 onwards</td>
</tr>
<tr class="even">
<td><div class="content-wrapper">
<p>CTP-908 - Revert MDL-71945 Done</p>
</div></td>
<td>Able to release grade to students while the assignment is anonymous</td>
<td><p><a href="https://tracker.moodle.org/browse/MDL-73626" class="uri">https://tracker.moodle.org/browse/MDL-73626</a></p></td>
<td><a href="https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/f86dd79f132f8f8b3e474ae3312ccc5f95ee47ad" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-core/-/commit/f86dd79f132f8f8b3e474ae3312ccc5f95ee47ad</a></td>
<td>Revert <a href="https://github.com/lucisgit/moodle/commit/bf2a7643ef1d2a11b7d5af9e8932090835b2df8c">MDL-71945</a>. Check grades can be released to student for anonymous assignments.</td>
</tr>
<tr class="odd">
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td>The great Lastpass autofill kerfuffle </td>
<td><p><br />
</p></td>
<td><br />
</td>
<td>?</td>
</tr>
</tbody>
</table>

Applying UCL core hacks in git for a new branch of Moodle:history can then quickly be done as

git clone <https://github.com/moodle/moodle.git> moodle-core
cd moodle-core/
git remote add ucl <git@git.automation.ucl.ac.uk>:moodle/moodle-core.git
git fetch ucl
git checkout -b MOODLE\_37\_UCL\_REL393 origin/MOODLE\_37\_STABLE

    git cherry-pick 
    git push ucl MOODLE_37_UCL_REL393:MOODLE_37_UCL_REL393

Moodle 3.9:

``` java
git cherry-pick 215b08c6026816664971b28890d904bb67ab18e9 8bc2ba501d57a7f709ad5a2c0efdb0ad0a40f81d 82ea357fbf805f1d249eac94b2c266592965ac19 cabcdef49b793784921b6e9a5eba75a4468580c8 56abb88a25faa7f94019a1df8783b9f502f43608 f7b28e49d7f0a2370f870d8d0ef7f71a8fda790d 37ff7682a77979b1b884fd03bbe47198699f9d54 675ad5d25288d3b16cbbe16c564dd1b16260bcc9
```

# **Adaptable theme**

<table>
<thead>
<tr class="header">
<th>Reference</th>
<th>What?</th>
<th>Why?</th>
<th>Git commit</th>
<th>Testing Instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>AdatableHack1</td>
<td>Add Lecturecast Icon</td>
<td>Needed for LTI icon, no better place to store it</td>
<td><p>4ca5c1a93d5114af16111624bb9e8eb0540af444</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/4ca5c1a93d5114af16111624bb9e8eb0540af444" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/4ca5c1a93d5114af16111624bb9e8eb0540af444</a></p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><del>AdatableHack2</del></td>
<td><p><del>Display Hostname in footer</del></p></td>
<td><del>Identify which server loaded the page for troubleshooting purposes</del></td>
<td><p><del>e15bb7c54ab42cacfb9fa21571a60b743a923203</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/e15bb7c54ab42cacfb9fa21571a60b743a923203" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/e15bb7c54ab42cacfb9fa21571a60b743a923203</a></del></p></td>
<td><p><del>Should see in bottom left of page app01</del></p></td>
</tr>
<tr class="odd">
<td><del>AdatableHack3</del></td>
<td><del>Make UCL logo appear on right, just touching the white border line below</del></td>
<td><del>UCL branding guidelines</del></td>
<td><p><del>4c569d8fe02c19c35b9c2e99e16dc4505b7b2c09</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/4c569d8fe02c19c35b9c2e99e16dc4505b7b2c09" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/commit/4c569d8fe02c19c35b9c2e99e16dc4505b7b2c09</a></del></p>
<p><del>3.9 - 96a7123aaee1b61191b5afe09f268bb6a235b196</del></p>
<p><del><a href="https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/-/commit/96a7123aaee1b61191b5afe09f268bb6a235b196" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-theme_adaptable2/-/commit/96a7123aaee1b61191b5afe09f268bb6a235b196</a></del></p></td>
<td>Incorporated into theme</td>
</tr>
</tbody>
</table>

Applying UCL Adaptable hacks in git to pull the latest changes to the master branch can then quickly be done as

git clone <git@git.automation.ucl.ac.uk>:moodle/moodle-theme\_adaptable2.git adaptable2
cd adaptable2/
git checkout -b UCL\_master-XXXXXX origin/master -&gt; where XXXXX is the latest short commit ref of the master branch

Moodle 3.9:

``` java
git cherry-pick  deade5d7380e927573f19e2d369dc913c276952d 96a7123aaee1b61191b5afe09f268bb6a235b196
```

# **Plugin hacks to be upstreamed:**

<table>
<tbody>
<tr class="odd">
<td>Reference</td>
<td>Ticket</td>
<td>Why?</td>
<td>Testing</td>
<td>Upstream report</td>
<td>Internal Commit</td>
</tr>
<tr class="even">
<td><p>UCLTurnitinHack1</p></td>
<td><p>RF 02542961</p>
CR00001745</td>
<td>Add TII date default settings for course reset</td>
<td>Check course reset form</td>
<td><p><a href="https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/new">https://github.com/turnitin/moodle-mod_turnitintooltwo/issues/491</a></p>
<p><br />
</p></td>
<td><p>7c6dea9da589f19249e586a9cc46c514fbd1058c</p>
<p><a href="https://git.automation.ucl.ac.uk/moodle/moodle-mod_turnitintooltwo/commit/7c6dea9da589f19249e586a9cc46c514fbd1058c" class="uri">https://git.automation.ucl.ac.uk/moodle/moodle-mod_turnitintooltwo/commit/7c6dea9da589f19249e586a9cc46c514fbd1058c</a></p></td>
</tr>
</tbody>
</table>


