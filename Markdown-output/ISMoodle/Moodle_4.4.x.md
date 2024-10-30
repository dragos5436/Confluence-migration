# Moodle 4.4.x

Release date: Thursday 25th July 2024, between midnight-4am

Release Lead: AS

Deadline to handover release to Catalyst: Tuesday 23rd July 2024 5pm

Must sign-off staging deployment by: Tuesday 23rd July 2024 5pm

1) Moodle 4.4.x major release

``` java
UPDATE mdl_course SET format='topics' WHERE format='flexible';
```

<https://blogs.ucl.ac.uk/digital-education/2024/02/14/flexible-format-phasedout/>

2) Changes that will need to be included in the release

-   MDL-78370 re-tested
-    https://github.com/ucl-isd/moodle-build/pull/91

4) Changes to settings:

Component

Setting name

Before

After

Reason

assign

markinganonymous

No

Yes

MDL-73626 (we funded)

Move from code revert to setting

text editors

Default text editor

TinyMCE 6

Atto

Core 4.4 upgrade makes TinyMCE 6 the default.

We haven't reviewed it so keeping Atto until feature addressing this is completed in TI4 / next year.

[moodle.ucl.ac.uk/admin/settings.php?section=manageeditors](http://moodle.ucl.ac.uk/admin/settings.php?section=manageeditors)

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
<td>enableasyncbackup</td>
<td>false</td>
<td>true</td>
<td>required in 4.4</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Release Notes:

**Major upgrade**

-   blog post - <https://blogs.ucl.ac.uk/digital-education/2024/07/24/upgrade-to-moodle-4-4/>

-   


