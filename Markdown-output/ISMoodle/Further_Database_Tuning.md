# Further Database Tuning

Builds upon the changes made for [Moodle Database Performance tuning April 2020](Moodle_Database_Performance_tuning_April_2020) (CR00006884), after 2 additional app servers were added to the pool.

This is all in testing stages

<table>
<thead>
<tr class="header">
<th>Setting</th>
<th>Before</th>
<th>After</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><div class="content-wrapper">
<p>Below changes made on 05 May 2020 </p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>max_connections</td>
<td>2000</td>
<td>3000</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>thread_pool_size</td>
<td>16</td>
<td>24</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>thread_pool_stall_limit</td>
<td>6</td>
<td>100</td>
<td><br />
</td>
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

Did not go to prod, moved onto MySQL 8.0 InnoDB Cluster testing workstream.
