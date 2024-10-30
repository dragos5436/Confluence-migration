# Antivirus Notification

Finding where the files are used by Moodle

``` java
select 
f.contenthash,
f.itemid,
f.filename,
f.userid,
u.username,
f.author,
f.component,
ctx.instanceid,
from_unixtime(f.timecreated),
from_unixtime(f.timemodified)
from moodle_live.mdl_files as f
JOIN moodle_live.mdl_context as ctx on ctx.id = f.contextid
JOIN moodle_live.mdl_user as u on u.id = f.userid
where f.contenthash = 'xxxxxxx' 
order by from_unixtime(f.timemodified) desc;
```

Finding files flagged by F-Secure

``` java
ssh username@mdl-nfs01.ad.ucl.ac.uk 
cd /export/moodle/filedir/
locate *.virus


```

Currently on Prod, the following are quarantined, most of the alerts from HIS relate to these:

``` java
/export/moodle/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/export/moodle/filedir/18/25/182518702de09ebbe0b7559bc4ff3ea413b4de63.virus
/export/moodle/filedir/30/b3/30b3a2c0192c691ffb7e40328ad20b5998f7f8ee.virus
/export/moodle/filedir/52/9a/529a413c9f3509ffee449e732210994f450335d9.virus
/export/moodle/filedir/7c/bf/7cbf860bf5a8fa49c2769b0418b3261b8f82197b.virus
/export/moodle/filedir/83/38/83383acb56535ad70da5f7027d415b989028c77b.virus
/export/moodle/filedir/88/4b/884b68d8d9d57d729d2bab610d478c5c25b40d4f.virus
/export/moodle/filedir/ff/5a/ff5a93d116398a735482afb495788769aea44770.virus

```

Having looked these up, only the following seemed to be know by Moodle:

<table>
<thead>
<tr class="header">
<th>contenthash</th>
<th>itemid</th>
<th>filename</th>
<th>userid</th>
<th>username</th>
<th>author</th>
<th>component</th>
<th>instanceid</th>
<th>from_unixtime(f.timecreated)</th>
<th>from_unixtime(f.timemodified)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>884b68d8d9d57d729d2bab610d478c5c25b40d4f</td>
<td>76191</td>
<td>Xie_Yang.zip</td>
<td>72463</td>
<td>ucabmxi</td>
<td>Mingzhao Xie</td>
<td>assignsubmission_file</td>
<td>831227</td>
<td>2018-11-05 11:30:06</td>
<td>2018-11-05 11:30:12</td>
</tr>
<tr class="even">
<td>30b3a2c0192c691ffb7e40328ad20b5998f7f8ee</td>
<td>73973</td>
<td>Coursework2(Han YANG and Mingzhao XIE).zip</td>
<td>72511</td>
<td>zczlhy1</td>
<td>Han Yang and Mingzhao Xie</td>
<td>assignsubmission_file</td>
<td>831227</td>
<td>05/11/18 14:34</td>
<td>05/11/18 14:34</td>
</tr>
<tr class="odd">
<td>12045908af1e682eb77a62215ce4ef4d5299c340</td>
<td>0</td>
<td>Source_code_for_Beginning_Android_Application_Development.zip</td>
<td>2</td>
<td>admin</td>
<td><br />
</td>
<td>mod_resource</td>
<td>183933</td>
<td>18/06/12 08:04</td>
<td>12/05/12 06:10</td>
</tr>
<tr class="even">
<td>12045908af1e682eb77a62215ce4ef4d5299c340</td>
<td>0</td>
<td>Source_code_for_Beginning_Android_Application_Development.zip</td>
<td>2</td>
<td>admin</td>
<td><br />
</td>
<td>course</td>
<td>1359</td>
<td>18/06/12 08:04</td>
<td>12/05/12 06:10</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
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

## Further thought needed about what to do. **In the meantime do not delete quarantined files on Prod or snapshot**.

Moodle Snapshot:

``` java
[cceaasp@ad.ucl.ac.uk@mdl-snpsht-ap01 data]$ locate *.virus
/data/moodle/13-14/filedir/02/84/028497e309dde393ec74071a346e4d9b2754d6ed.virus
/data/moodle/13-14/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/13-14/filedir/9d/dd/9dddc46253892794ee23b659ea0d77f5182c0ade.virus
/data/moodle/13-14/filedir/cb/08/cb0814515a30b01ad4e70fdf0b74035d145e6f51.virus
/data/moodle/14-15/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/14-15/filedir/55/d8/55d8793ad41b7e7b2e8effb6f72bef3ac816518c.virus
/data/moodle/14-15/filedir/6c/2f/6c2fc4e042b7847baeaf74b991175b0855347160.virus
/data/moodle/14-15/filedir/9d/dd/9dddc46253892794ee23b659ea0d77f5182c0ade.virus
/data/moodle/14-15/filedir/cb/08/cb0814515a30b01ad4e70fdf0b74035d145e6f51.virus
/data/moodle/15-16/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/15-16/filedir/55/d8/55d8793ad41b7e7b2e8effb6f72bef3ac816518c.virus
/data/moodle/15-16/filedir/5d/9d/5d9d7914863e93aab089b33cbec3253fbc33cb3e.virus
/data/moodle/15-16/filedir/6c/2f/6c2fc4e042b7847baeaf74b991175b0855347160.virus
/data/moodle/15-16/filedir/c2/ba/c2ba294d8a1de813fa89f9dc9cd019c897b5010f.virus
/data/moodle/15-16/filedir/cb/08/cb0814515a30b01ad4e70fdf0b74035d145e6f51.virus
/data/moodle/16-17/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/16-17/filedir/55/d8/55d8793ad41b7e7b2e8effb6f72bef3ac816518c.virus
/data/moodle/16-17/filedir/6c/2f/6c2fc4e042b7847baeaf74b991175b0855347160.virus
/data/moodle/16-17/filedir/c2/ba/c2ba294d8a1de813fa89f9dc9cd019c897b5010f.virus
/data/moodle/16-17/filedir/cb/08/cb0814515a30b01ad4e70fdf0b74035d145e6f51.virus
/data/moodle/17-18/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/17-18/filedir/55/d8/55d8793ad41b7e7b2e8effb6f72bef3ac816518c.virus
/data/moodle/17-18/filedir/6c/2f/6c2fc4e042b7847baeaf74b991175b0855347160.virus
/data/moodle/17-18/filedir/c2/ba/c2ba294d8a1de813fa89f9dc9cd019c897b5010f.virus
/data/moodle/17-18/filedir/cb/08/cb0814515a30b01ad4e70fdf0b74035d145e6f51.virus
/data/moodle/17-18/filedir/f0/c8/f0c8c0a982db6cbb5ef6a98f10498f28ab94767d.virus
/data/moodle/18-19/filedir/12/04/12045908af1e682eb77a62215ce4ef4d5299c340.virus
/data/moodle/18-19/filedir/18/25/182518702de09ebbe0b7559bc4ff3ea413b4de63.virus
/data/moodle/18-19/filedir/30/b3/30b3a2c0192c691ffb7e40328ad20b5998f7f8ee.virus
/data/moodle/18-19/filedir/52/9a/529a413c9f3509ffee449e732210994f450335d9.virus
/data/moodle/18-19/filedir/7c/bf/7cbf860bf5a8fa49c2769b0418b3261b8f82197b.virus
/data/moodle/18-19/filedir/83/38/83383acb56535ad70da5f7027d415b989028c77b.virus
/data/moodle/18-19/filedir/88/4b/884b68d8d9d57d729d2bab610d478c5c25b40d4f.virus
/data/moodle/18-19/filedir/ff/5a/ff5a93d116398a735482afb495788769aea44770.virus
```

Have not yet looked the above files up, there are a numbver of repeats which have been retained over the years:

<table>
<thead>
<tr class="header">
<th>contenthash</th>
<th>itemid</th>
<th>filename</th>
<th>userid</th>
<th>username</th>
<th>author</th>
<th>component</th>
<th>instanceid</th>
<th>from_unixtime(f.timecreated)</th>
<th>from_unixtime(f.timemodified)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
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


