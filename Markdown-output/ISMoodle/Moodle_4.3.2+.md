# Moodle 4.3.2+

Release date: ~~11th Jan 2024~~ Delayed to 12th Jan 2024, between midnight-4am

Release Lead: NB

Deadline to add changes to this release: Friday 5th Jan 2024 5pm

Deadline to handover release to Catalyst: Monday 8th Jan 2024 5pm

Must sign-off staging deployment by: Tuesday 9th Jan 2023 5pm

1) Bug fix release of core 4.3.2+

2) Changes that will need to be included in the release

-    
-    

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
<td><p><a href="https://moodle.ucl.ac.uk/theme/norse/customise.php?tab=advanced" class="uri">https://moodle.ucl.ac.uk/theme/norse/customise.php?tab=advanced</a> &amp; Raw SCSS</p>
<p><br />
</p></td>
<td> 
<p>/* CTP-2957 - H5P missing css file(s?). */<br />
.h5p-iframe-wrapper iframe.h5p-iframe {<br />
    min-width: 100%;<br />
}</p>
<p>/* CTP-2950 - Course activity edit options not showing. */<br />
.activity-actions .dropdown-menu {<br />
    overflow: visible !important;<br />
}</p></td>
<td><br />
</td>
<td>Proper fixes included with the 4.3.2+ deployment.</td>
</tr>
</tbody>
</table>

Release Notes:

**Minor fixes**

-   CTP-2950 - BUG - M4.3 edit activity sub menus not showing in Norse theme Done

-   CTP-2963 - mod\_hvp - missing suffix and CSS request issue with course completion Done
-   <https://tracker.moodle.org/browse/MDL-79708>


