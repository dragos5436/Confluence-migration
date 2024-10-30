# Moodle - cron jobs

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th> </th>
<th>crontab entry</th>
<th>time</th>
<th>server</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>mysql backup</td>
<td>0 3 * * * $HOME/scripts/moodle_backup.ksh &gt; $HOME/log/moodle_backup_`date +\%d\%b`.log 2&gt;&amp;1</td>
<td>03.00 once a day</td>
<td>moodle-db-a</td>
</tr>
<tr class="even">
<td>mysql health check</td>
<td>*/10 * * * * /home/ccspsql/scripts/check_health.sh &gt;&gt; /data/mysql/backup/check_health.out 2&gt;&amp;1</td>
<td>every 10 mins</td>
<td>moodle-db-a</td>
</tr>
<tr class="odd">
<td>mysql check replication</td>
<td>0 7 * * * cd /home/ccspsql ; ./checkrepl</td>
<td>07.00 once a day</td>
<td>moodle-db-a</td>
</tr>
<tr class="even">
<td>moodles main cron job</td>
<td> </td>
<td>every 20 mins</td>
<td>moodle-admin</td>
</tr>
<tr class="odd">
<td>sits filter 2 xml export process</td>
<td>15 1 * * * /usr/local/bin/sits_filter2_RunSits.sh &gt; /dev/null 2&gt;&amp;1</td>
<td>01.15 once a day</td>
<td>moodle-admin</td>
</tr>
<tr class="even">
<td>SITS Filter 2 CMIS groups import process</td>
<td>15 2 * * * /usr/local/bin/sits_filter2_RunCmis.sh &gt; /dev/null 2&gt;&amp;1</td>
<td>02.15 once a day</td>
<td>moodle-admin</td>
</tr>
<tr class="odd">
<td>moodle assigning roles via enrol_dbuserrel plugin (e.g. 'personal_tutor').</td>
<td><pre><code>30 2 * * * su - ccspwww -c /opt/rh/php54/root/usr/bin/php -f 
/data/apache/htdocs/moodle/enrol/dbuserrel/cli/sync.php -v &gt; /var/log/enrol_dbuserrel/moodle-dbuserr</code></pre></td>
<td>02.30 once a day</td>
<td>moodle-admin</td>
</tr>
</tbody>
</table>


