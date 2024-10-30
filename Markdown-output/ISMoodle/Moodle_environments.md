# Moodle environments

A list of ALL VMs managed by SnV

[http://svadmin03.ad.ucl.ac.uk/vmlist/index.html](index)

Config overview

Shading key

|          |             |
|----------|-------------|
| A change | Unconfirmed |

<table>
<tbody>
<tr class="odd">
<td><strong>Setting</strong></td>
<td><div class="content-wrapper">
<p><strong>Legacy Production<br />
</strong></p>
</div></td>
<td><strong>Legacy PP<br />
</strong></td>
<td>New Dev</td>
<td>New UAT</td>
<td>New Production</td>
<td>New PP</td>
<td><strong>Future build</strong></td>
</tr>
<tr class="even">
<td><strong>Environment Codename</strong></td>
<td><strong>Minki</strong></td>
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
<td><strong>Badger (B1)</strong></td>
</tr>
<tr class="odd">
<td><strong>Purpose</strong></td>
<td>Running current live version</td>
<td>Systems testing before live</td>
<td><br />
</td>
<td><br />
</td>
<td>Running current live version</td>
<td>Systems testing before live</td>
<td>Future cleaned up and tested version</td>
</tr>
<tr class="even">
<td><strong>State</strong></td>
<td><div class="content-wrapper">
<p>Running (outage 02 Oct 2017 )</p>
</div></td>
<td><div class="content-wrapper">
<p>Direct copy of live - last copy back 04 Aug 2017 </p>
</div></td>
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
<tr class="odd">
<td><strong>Link to test plan</strong></td>
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
<tr class="even">
<td><strong>App servers</strong></td>
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
<tr class="odd">
<td><strong>memory</strong></td>
<td>16GB</td>
<td>16GB</td>
<td>8</td>
<td>1???</td>
<td>19G</td>
<td>19G</td>
<td>8GB</td>
</tr>
<tr class="even">
<td><strong>cpu</strong></td>
<td>6</td>
<td>6</td>
<td>2</td>
<td>2</td>
<td><p>6</p>
<p>admin: 4 cpus</p></td>
<td><p>6</p>
<p>admin: 4 cpus</p></td>
<td>4</td>
</tr>
<tr class="odd">
<td><strong>Disk space</strong></td>
<td> 9.8GB</td>
<td>11GB?</td>
<td>8G</td>
<td>13G</td>
<td>7.8G</td>
<td>7.8G</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>Server names</strong></td>
<td><div class="content-wrapper">
<p>moodle admin SLOUGH (VHM-&gt;TP)</p>
<p>moodle-d TP</p>
<p>moodle-e TP</p>
<p>moodle-f SLOUGH</p>
<p>moodle-g SLOUGH (CR ...909  10 May 2017 )</p>
</div></td>
<td><p>moodle-pp-admin</p>
<p>moodle-pp-a  TP</p>
<p>moodle-pp-b  TP</p>
<p>moodle-pp-c   Slough</p>
<p>moodle-pp-d   Slough</p></td>
<td>moodle-01-d.ucl.ac.uk</td>
<td>moodle-01-u.ucl.ac.uk</td>
<td><p>moodle-admin-01</p>
<p>moodle-app-01</p>
<p>moodle-app-03</p>
<p>moodle-app-03</p>
<p>moodle-app-04</p></td>
<td><p>moodle-admin-01-pp</p>
<p>moodle-app-01-pp</p>
<p>moodle-app-02-pp</p>
<p>moodle-app-03-pp</p>
<p>moodle-app-04-pp</p></td>
<td><p>Suggested rename to bring server letters in line</p></td>
</tr>
<tr class="odd">
<td>Loadbalancing</td>
<td>symmetric</td>
<td>symmetric</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>symmetric</td>
</tr>
<tr class="even">
<td>Build</td>
<td>Some variations between servers</td>
<td>Some variations between servers</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>No variations between servers</td>
</tr>
<tr class="odd">
<td><strong>Apache</strong></td>
<td>2.2.15</td>
<td>2.2.15</td>
<td><br />
</td>
<td><br />
</td>
<td>2.2.15</td>
<td>2.2.15</td>
<td>2.2.15</td>
</tr>
<tr class="even">
<td><strong>Moodle code and state</strong></td>
<td><p>Includes unoconv module</p></td>
<td>Includes unoconv module</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Does not include unoconv module</p>
<p>or</p>
<p>Updated to cover recent patches</p></td>
</tr>
<tr class="odd">
<td>Unoconv state</td>
<td><div class="content-wrapper">
<p>Changed to work as a listener (CR706 24 Feb 2017 )</p>
<br />

<ul>
<li>Vanilla libreOffice version</li>
</ul>
</div></td>
<td><p>Changed to work as a listener</p>
<br />

<ul>
<li>Vanilla libreOffice version</li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Moodle 33 uses different conversion Technology.</p>
<p>It may be possible to back-port this into 3.1</p></td>
</tr>
<tr class="even">
<td>Clam AV state</td>
<td>Vanilla</td>
<td>Vanilla</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Use Unix sockets modification</td>
</tr>
<tr class="odd">
<td><strong>max user processes</strong></td>
<td>131072</td>
<td>65536</td>
<td><br />
</td>
<td><br />
</td>
<td>1024</td>
<td>1024</td>
<td><p>2048</p>
<p>Restrict how unoconv uses these within this limit if not architecture</p></td>
</tr>
<tr class="even">
<td>Patches submitted by Lancaster</td>
<td>not installed</td>
<td>not installed</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Installed</p>
<p>57801</p>
<p>56122</p></td>
</tr>
<tr class="odd">
<td><strong><a href="https://jmeter-plugins.org/wiki/PerfMonAgent/">Performance monitor agent</a></strong></td>
<td>New Relic (license expired - basic monitoring)</td>
<td>not installed</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>XHPROF, or New Relic for basic (license ?)</td>
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
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>htaccess</strong></td>
<td>equivalent</td>
<td>equivalent</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>equivalent</td>
</tr>
<tr class="even">
<td><strong>local settings</strong></td>
<td>equivalent</td>
<td>equivalent</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>equivalent</td>
</tr>
<tr class="odd">
<td><strong>config.php</strong></td>
<td>equivalent</td>
<td>equivalent</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>equivalent</td>
</tr>
<tr class="even">
<td><strong>Moodle configuration stored in the database</strong></td>
<td>equivalent</td>
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
<tr class="odd">
<td>Opcache</td>
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
<td>?</td>
</tr>
<tr class="even">
<td>Session and File caching</td>
<td><p>Memcached</p>
<p>25 instances.</p>
<p>Memory allocation ?</p></td>
<td><p>Memcached</p>
<p>25 instances.</p>
<p>Memory allocation ?</p></td>
<td><br />
</td>
<td><br />
</td>
<td><p>Redis</p>
<p>Memory allocation ?</p></td>
<td><p>Redis</p>
<p>Memory allocation ?</p></td>
<td>Some tuning to cache size allocation. Increase default application, language and session stores. Can reduce from others. Needs reconfig in puppet for individual store settings. Informed from cache monitoring</td>
</tr>
<tr class="odd">
<td>TMP directory size</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>10GB?</td>
<td>10GB?</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>SSL certs</td>
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
<tr class="odd">
<td><strong>Database servers</strong></td>
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
<tr class="even">
<td><strong>memory</strong></td>
<td>48</td>
<td>48</td>
<td><br />
</td>
<td><br />
</td>
<td>51GB</td>
<td>51GB</td>
<td>24 - vr ops to adjust down?</td>
</tr>
<tr class="odd">
<td><strong>cpu</strong></td>
<td>6</td>
<td>6</td>
<td><br />
</td>
<td><br />
</td>
<td>6</td>
<td>6</td>
<td>6</td>
</tr>
<tr class="even">
<td><strong>Disk space</strong></td>
<td>1.5TB</td>
<td>1.5TB</td>
<td><br />
</td>
<td><br />
</td>
<td>1.5TB</td>
<td>1.5TB</td>
<td>1.5TB</td>
</tr>
<tr class="odd">
<td><strong>Server</strong></td>
<td><p>moodle-db-a SLOUGH (VHM-&gt;TP)</p>
<p>moodle-db-b SLOUGH</p></td>
<td><p>moodle-db-pp</p>
<p>moodle-db-pp-b</p></td>
<td>mysdb-01-u.adcom.ucl.ac.uk</td>
<td>mysdb-01-t.adcom.ucl.ac.uk</td>
<td><p>moodle-db-01</p>
<p>moodle-db-02</p></td>
<td><p>moodle-db-01-pp</p>
<p>moodle-db-02-pp</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>my.cnf version</strong></td>
<td><div class="content-wrapper">
As recommendation from Oct 17 C.I.
</div></td>
<td><div class="content-wrapper">
<p></p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>as future recommendation</td>
</tr>
<tr class="odd">
<td>Other DB changes</td>
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
<td><p>(currently not approved)</p>
<p>mdl_files table partitioned to reduce load and contention</p>
<p>tables mdl_assignfeedback_editpdf_queue and mdl_assign_plugin_config need an additional index</p>
<p>tables mdl_scorm_scoes_track and mdl_cache_flags need an additional index</p>
<p>move to using 2 DB servers</p>
<p>look at MariaDB and use thread_pool features</p>
<p><br />
</p></td>
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
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>Filestore</strong></td>
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
<tr class="even">
<td>Size</td>
<td>5.5TB</td>
<td>5.5TB</td>
<td><br />
</td>
<td><br />
</td>
<td>6TB</td>
<td>6TB</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>cpu</td>
<td>2</td>
<td>2</td>
<td><br />
</td>
<td><br />
</td>
<td>4</td>
<td>4</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>memory</td>
<td>8</td>
<td>8</td>
<td><br />
</td>
<td><br />
</td>
<td>11GB</td>
<td>11GB</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Technology</td>
<td>??</td>
<td>??</td>
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
<tr class="even">
<td>Networking</td>
<td>??</td>
<td>??</td>
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
<tr class="odd">
<td><strong>Other Params</strong></td>
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
<tr class="even">
<td><strong>hugepage</strong></td>
<td>[always] madvise never</td>
<td>[always] madvise never</td>
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
<tr class="odd">
<td><strong>swappyness</strong></td>
<td>assumed to be the same across servers</td>
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
<tr class="even">
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
<tr class="odd">
<td><strong>PHP</strong></td>
<td>5.6.30</td>
<td>5.6.30</td>
<td><br />
</td>
<td><br />
</td>
<td>7.1.3</td>
<td>7.1.3</td>
<td>7.2 min req for 3.4. PHP extension <strong>intl</strong> is now required in Moodle 3.4</td>
</tr>
<tr class="even">
<td><strong>MySQL</strong></td>
<td>5.6.36</td>
<td>5.6.36</td>
<td><br />
</td>
<td><br />
</td>
<td>5.6.36</td>
<td>5.6.36</td>
<td>5.5.31 min req.   Db technology - MySQL(on Percona?), MariaDB, Postgress</td>
</tr>
<tr class="odd">
<td><strong>RHEL</strong></td>
<td>6.?</td>
<td>6.?</td>
<td><br />
</td>
<td><br />
</td>
<td>6.9</td>
<td>6.9</td>
<td>7?</td>
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
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>Loadbalancing</strong></td>
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
<tr class="even">
<td>GTM config</td>
<td>?</td>
<td>?</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>?</td>
</tr>
<tr class="odd">
<td>LTM config</td>
<td>?</td>
<td>?</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>?</td>
</tr>
</tbody>
</table>


