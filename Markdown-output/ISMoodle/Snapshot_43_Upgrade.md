# Snapshot 43 Upgrade

Release date: 05/04/2024

Release Lead: Dragos Suciu / supported by NB/AS

Steps:

-   Create Moodle snapshot outage for every instance
-   Put sites in maintenance mode one at a time.

[https://moodle-snapshot.ucl.ac.uk/18-19/admin/settings.php?section=maintenancemode](https://moodle-snapshot.ucl.ac.uk/20-21/admin/settings.php?section=maintenancemode)

[https://moodle-snapshot.ucl.ac.uk/19-20/admin/settings.php?section=maintenancemode](https://moodle-snapshot.ucl.ac.uk/20-21/admin/settings.php?section=maintenancemode)

[https://moodle-snapshot.ucl.ac.uk/17-18/admin/settings.php?section=maintenancemode](https://moodle-snapshot.ucl.ac.uk/20-21/admin/settings.php?section=maintenancemode)

<https://moodle-snapshot.ucl.ac.uk/20-21/admin/settings.php?section=maintenancemode>

-   Take db backup. Start with 18/19 as smallest database and include log table. Then 19/20, 17/18 and 20/21 without log table.

ssh mydb-liva04.ad.ucl.ac.uk -l cceanbo

cd /data/mysql/restores

mysqldump -u mysqlcceanboand -p moodle\_archive\_1819 | gzip &gt; moodle\_archive\_1819\_240405.sql.qz

mysqldump -u mysqlcceanboand -p moodle\_archive\_1920 --ignore-table=moodle\_archive\_1920.mdl\_logstore\_standard\_log | gzip &gt; moodle\_archive\_1920\_240405.sql.qz

mysqldump -u mysqlcceanboand -p moodle\_archive\_1718 --ignore-table=moodle\_archive\_1718.mdl\_logstore\_standard\_log | gzip &gt; moodle\_archive\_1718\_240405.sql.qz

mysqldump -u mysqlcceanboand -p moodle\_archive\_2021 --ignore-table=moodle\_archive\_2021.mdl\_logstore\_standard\_log | gzip &gt; moodle\_archive\_2021\_240405.sql.qz

-   Run upgrade via cli

cd /data/apache/htdocs/moodle/18-19/admin/cli

php upgrade.php

-   Move cache and localcache folders from moodle data

cd /data/moodle/18-19/

mv cache old\_cache

mv localcache old\_localcache

-   Change all collapsed topics courses to topics format

SET SQL\_SAFE\_UPDATES=0;
UPDATE \`moodle\_archive\_1718\`.mdl\_course SET format='topics' WHERE format='topcoll';

UPDATE \`moodle\_archive\_1819\`.mdl\_course SET format='topics' WHERE format='topcoll';

UPDATE \`moodle\_archive\_1920\`.mdl\_course SET format='topics' WHERE format='topcoll';

UPDATE \`moodle\_archive\_2021\`.mdl\_course SET format='topics' WHERE format='topcoll';

-   SQL update for lti\_icons

17-18 and 18-19 no reading list LTI present

17-18 has lecturetools, not lecturecast LTI

UPDATE \`moodle\_archive\_2021\`.mdl\_lti SET icon='<https://moodle-snapshot.ucl.ac.uk/20-21/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE typeid='503';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti SET secureicon='<https://moodle-snapshot.ucl.ac.uk/20-21/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE typeid='503';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti\_types SET secureicon='<https://moodle-snapshot.ucl.ac.uk/20-21/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE id='503';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti\_types SET icon='<https://moodle-snapshot.ucl.ac.uk/20-21/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE id='503';

UPDATE \`moodle\_archive\_2021\`.mdl\_lti SET icon='<https://moodle-snapshot.ucl.ac.uk/20-21/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti SET secureicon='<https://moodle-snapshot.ucl.ac.uk/20-21/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti\_types SET secureicon='<https://moodle-snapshot.ucl.ac.uk/20-21/pix/lecturecast.svg>' WHERE id='3';
UPDATE \`moodle\_archive\_2021\`.mdl\_lti\_types SET icon='<https://moodle-snapshot.ucl.ac.uk/20-21/pix/lecturecast.svg>' WHERE id='3';

UPDATE \`moodle\_archive\_1920\`.mdl\_lti SET icon='<https://moodle-snapshot.ucl.ac.uk/19-20/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE typeid='503';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti SET secureicon='<https://moodle-snapshot.ucl.ac.uk/19-20/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE typeid='503';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti\_types SET secureicon='<https://moodle-snapshot.ucl.ac.uk/19-20/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE id='503';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti\_types SET icon='<https://moodle-snapshot.ucl.ac.uk/19-20/theme/norse/pix_plugins/mod/readinglist/monologo.svg>' WHERE id='503';

UPDATE \`moodle\_archive\_1920\`.mdl\_lti SET icon='<https://moodle-snapshot.ucl.ac.uk/19-20/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti SET secureicon='<https://moodle-snapshot.ucl.ac.uk/19-20/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti\_types SET secureicon='<https://moodle-snapshot.ucl.ac.uk/19-20/pix/lecturecast.svg>' WHERE id='3';
UPDATE \`moodle\_archive\_1920\`.mdl\_lti\_types SET icon='<https://moodle-snapshot.ucl.ac.uk/19-20/pix/lecturecast.svg>' WHERE id='3';

UPDATE \`moodle\_archive\_1819\`.mdl\_lti SET icon='<https://moodle-snapshot.ucl.ac.uk/18-19/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_1819\`.mdl\_lti SET secureicon='<https://moodle-snapshot.ucl.ac.uk/18-19/pix/lecturecast.svg>' WHERE typeid='3';
UPDATE \`moodle\_archive\_1819\`.mdl\_lti\_types SET secureicon='<https://moodle-snapshot.ucl.ac.uk/18-19/pix/lecturecast.svg>' WHERE id='3';
UPDATE \`moodle\_archive\_1819\`.mdl\_lti\_types SET icon='<https://moodle-snapshot.ucl.ac.uk/18-19/pix/lecturecast.svg>' WHERE id='3';

-   Change all user preferences for course overview block to card. (18/19 has no records)

UPDATE \`moodle\_archive\_1718\`.mdl\_user\_preferences SET value='card' where name='block\_myoverview\_user\_view\_preference';

UPDATE \`moodle\_archive\_1920\`.mdl\_user\_preferences SET value='card' where name='block\_myoverview\_user\_view\_preference';

UPDATE \`moodle\_archive\_2021\`.mdl\_user\_preferences SET value='card' where name='block\_myoverview\_user\_view\_preference';

-   Purge cache to apply changes

moodlesite/[admin/purgecaches.php](https://moodle.ucl.ac.uk/admin/purgecaches.php)

-   Smoke test
-   Disable maintenance mode once upgrade is finished
-   Release site to users

1) Upgrade to 4.3.3 from 3.11.18

2) Changes that will need to be included in the release

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
</tr>
</tbody>
</table>


