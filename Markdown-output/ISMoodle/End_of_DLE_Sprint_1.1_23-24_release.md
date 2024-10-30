# End of DLE Sprint 1.1 23-24 release

Release date: 9th November 2023 1am-2am

Release Lead: tbc

Deadline to add changes to this release: Friday 3rd November 2023

Deadline to handover release to Catalyst: Monday 6th November 2023 5pm

Must sign-off staging deployment by: Tuesday 7th November 2023 5pm

1) Changes that will need to be included in the release

-   Performance improvements - https://wrms.catalyst.net.nz/wr.php?request\_id=415901\#note-55
-   filter\_embedquestion fix ( CTP-2786 - RF - IN06270380 - Problems with Moodle Embedded Questions behaviour Done  )

2) SQL

``` java
UPDATE `uclmoodleprod`.`mdl_config_plugins` SET `value` = '2022032900' WHERE (`id` = '4360');
```

2) Changes to settings:

Component

Setting name

Before

After

Reason

3) Config changes:

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
<td><br />
</td>
<td> </td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Release Notes:

**Minor fixes**

-   CTP-2786 - RF - IN06270380 - Problems with Moodle Embedded Questions behaviour Done
-   bug
-   bug


