# Moodle Database Performance tuning April 2020

The changes here refer to those now submitted for deployment in CR00006884 on 07 May 2020 . Further tuning is being looked into under [Further Database Tuning](Further_Database_Tuning).

# Database Changes:

-   Moodle database settings change:

<table>
<thead>
<tr class="header">
<th>Setting</th>
<th>Before</th>
<th>After</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>RAM</td>
<td>48GB</td>
<td>128GB</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>log_queries_not_using_indexes</td>
<td>ON</td>
<td>OFF</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>innodb_buffer_pool_size </td>
<td>25769803776 (24GB)</td>
<td>89120571392 (83GB)</td>
<td>docs advise to use 50-75% of system memory for this, this gets us to 64GB, i.e. 50%, we get to 480 chunks so still below 1000 limit for performance</td>
</tr>
<tr class="even">
<td>innodb_buffer_pool_instances</td>
<td>8</td>
<td>24</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>innodb_read_io_threads</td>
<td>8</td>
<td>24</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>innodb_flush_method </td>
<td>O_DSYNC</td>
<td>O_DIRECT </td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>innodb_buffer_pool_dump_pct </td>
<td>25</td>
<td>75</td>
<td>speeds up InnoDB getting most frequently used loaded back in memory after reboots</td>
</tr>
<tr class="even">
<td>join_buffer_size</td>
<td>4M</td>
<td>16M</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>max_heap_table_size </td>
<td>67108864</td>
<td>268435456</td>
<td>must match tmp_table_size</td>
</tr>
<tr class="even">
<td>tmp_table_size </td>
<td>268435456</td>
<td>268435456</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>max_connections </td>
<td>780</td>
<td>2000</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>query_cache_size</td>
<td>205520896</td>
<td>0</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>query_cache_type</td>
<td>ON</td>
<td>OFF     </td>
<td><br />
</td>
</tr>
<tr class="even">
<td>have_query_cache </td>
<td>YES</td>
<td>NO   </td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>tls_version</td>
<td>TLSv1,TLSv1.1,TLSv1.2</td>
<td>TLSv1.2</td>
<td><br />
</td>
</tr>
</tbody>
</table>

-   Enable MySQL Thread Pools plugin

adding the following to your my.cnf/my.ini file:

``` java
plugin-load=thread_pool=thread_pool.so;TP_THREAD_STATE=thread_pool.so;TP_THREAD_GROUP_STATE=thread_pool.so;TP_THREAD_GROUP_STATS=thread_pool.so
```

-   SLAVES ONLY
    ‘read\_only’ -&gt; ON for mdl-db02p -&gt; slaves should be read-only
    ‘max\_connections’ -&gt; 780 (keep this as before, we have not increased RAM on slaves so they can’t yet handle more connections)
     
    Collation is inconsistent on the slaves it should be switched from utf8 to utf8mb4 as per master
    'character\_set\_client', 'utf8mb4'
    'character\_set\_connection', 'utf8mb4'
    'character\_set\_database', ‘utf8mb4'
    'character\_set\_results', 'utf8mb4'
    'character\_set\_server', 'utf8mb4'
    'character\_set\_system', ‘utf8’    // This is ok. <https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_character_set_system>
    'collation\_connection', 'utf8mb4\_unicode\_ci'
    'collation\_database', 'utf8mb4\_unicode\_ci'
    'collation\_server', 'utf8mb4\_unicode\_ci'

# Moodle code

-   backport of <https://tracker.moodle.org/browse/MDL-19711>

# ProxySQL setup

...


