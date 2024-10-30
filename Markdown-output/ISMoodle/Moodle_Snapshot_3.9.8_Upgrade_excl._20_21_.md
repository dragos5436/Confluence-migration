# Moodle Snapshot 3.9.8 Upgrade (excl. 20/21)

Before the upgrade

| Team | Who    | What                                                                                       | Completed |
|------|--------|--------------------------------------------------------------------------------------------|-----------|
| CTP  | Nikola | Check/Test all snapshots                                                                   | -   Done  |
| CTP  | Rod    | Ad-hoc tests on snapshots                                                                  | -   Done  |
| CTP  | Nikola | Schedule outage manager warning to start 30mins before start of Moodle planned maintenance | -   Done  |
| CTP  | Nikola | Deploy new build artifact (upload zip, unzip, mv ) on mdl-snpsht-ap01                      | -   Done  |
| CTP  | Nikola | Request ISD News Item                                                                      | -   Done  |
| CTP  | Nikola | Create CR                                                                                  | -   Done  |
| CTP  | Nikola | Arrange DBA support                                                                        | -   Done  |

On the day of upgrade

<table>
<thead>
<tr class="header">
<th>Team</th>
<th>Who</th>
<th>What</th>
<th>Completed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td>Put Moodle into maintenance mode</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td>Apply .htaccess redirect to ISD News maintenance page</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>DBA</td>
<td>Hari</td>
<td>Backup database - take backups one by one starting with the oldest as it is the smallest size</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td>Copy config.php from the current build</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td>Update symlink to point to new build</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td><p>Fix db encoding issues using sitename/admin/cli:</p>
<ul>
<li>mysql_collation.php</li>
<li>mysql_compressed_rows.php</li>
<li>mysql_engine.php</li>
</ul></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td><p>Create missing tables in db</p>
<p>For 15/16 to 18/19 ( 12/10/2021 not needed for 16/17 and 17/18)</p>
<ul>
<li>CREATE TABLE `mdl_auth_oauth2_linked_login` (<br />
`id` bigint(10) NOT NULL AUTO_INCREMENT,<br />
`timecreated` bigint(10) NOT NULL,<br />
`timemodified` bigint(10) NOT NULL,<br />
`usermodified` bigint(10) NOT NULL,<br />
`userid` bigint(10) NOT NULL,<br />
`issuerid` bigint(10) NOT NULL,<br />
`username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',<br />
`email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,<br />
`confirmtoken` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',<br />
`confirmtokenexpires` bigint(10) DEFAULT NULL,<br />
PRIMARY KEY (`id`),<br />
UNIQUE KEY `mdl_authoautlinklogi_useis_uix` (`userid`,`issuerid`,`username`),<br />
KEY `mdl_authoautlinklogi_issuse_ix` (`issuerid`,`username`),<br />
KEY `mdl_authoautlinklogi_use_ix` (`usermodified`),<br />
KEY `mdl_authoautlinklogi_use2_ix` (`userid`),<br />
KEY `mdl_authoautlinklogi_iss_ix` (`issuerid`)<br />
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.'</li>
</ul>
<p>For 19/20 (not needed 12/10/2021)</p>
<ul>
<li>CREATE TABLE `mdl_tool_ally_log` (<br />
`id` bigint(10) NOT NULL AUTO_INCREMENT,<br />
`time` bigint(10) NOT NULL,<br />
`level` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',<br />
`code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,<br />
`message` longtext COLLATE utf8mb4_unicode_ci,<br />
`explanation` longtext COLLATE utf8mb4_unicode_ci,<br />
`data` longtext COLLATE utf8mb4_unicode_ci,<br />
`exception` longtext COLLATE utf8mb4_unicode_ci,<br />
PRIMARY KEY (`id`),<br />
KEY `mdl_toolallylog_lev_ix` (`level`),<br />
KEY `mdl_toolallylog_cod_ix` (`code`),<br />
KEY `mdl_toolallylog_tim_ix` (`time`)<br />
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table for logging info, errors, etc';</li>
</ul></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td><p>mod/hvp/</p>
<p>cd /data/apache/moodle-vhosts/replaceme/mod/hvp/ &amp;&amp; git checkout stable &amp;&amp; git submodule update --init</p></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td><p>blocks/configurable_reports/</p>
<p>bump version by 1</p></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td><div class="content-wrapper">
<p>Upgrade Moodle through web interface <a href="/download/attachments/181243817/Theme398Prod.txt?version=1&amp;modificationDate=1633601983000&amp;api=v2"><img src="rest/documentConversion/latest/conversion/thumbnail/181243985/1" height="250" /></a></p>
</div></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td><p>Theme adaptable </p>
<p>Import theme settings from Moodle prod -   Site administration&gt;Appearance&gt;Themes&gt;Adaptable&gt;Import / export settings</p></td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td>Disable Course menu block in all instances from Site administration&gt;Plugins&gt;Blocks&gt;Manage blocks</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td>Disable Section links block in all instances from Site administration&gt;Plugins&gt;Blocks&gt;Manage blocks</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td>Check and confirm that the expected changes have taken effect (post-change testing)</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="odd">
<td>CTP</td>
<td>Nikola</td>
<td>Take Moodle out of maintenance mode.</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
<tr class="even">
<td>CTP</td>
<td>Nikola</td>
<td>Inform everyone upgrade is done</td>
<td><ul>
<li>Done</li>
</ul></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Theme398Prod.txt](attachments/181243817/181243985.txt) (text/plain)

