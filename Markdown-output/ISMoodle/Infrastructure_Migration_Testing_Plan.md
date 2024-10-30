# Infrastructure Migration Testing Plan

<table>
<thead>
<tr class="header">
<th>What?</th>
<th>criteria</th>
<th>Staging</th>
<th>prod</th>
<th>Notes</th>
<th>Pass/Fail</th>
<th>Pass/Fail prod</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Moodle build works</td>
<td><ul>
<li>Moodle loads ok</li>
<li>smoke test</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="even">
<td>Turnitin</td>
<td><ul>
<li>Turnitin assignment loads</li>
</ul>
<ul>
<li>can submit to Turnitin</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="odd">
<td>Blackboard Ally</td>
<td><ul>
<li>loads ok</li>
<li>new content is processed (cron)</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td>Config and enabled courses are fine, all loads ok. Ally cron is disabled -  will not be enabled as it uses the same config as Moodle prod so unable to test new processed content</td>
<td>N/A</td>
<td>N/A</td>
</tr>
<tr class="even">
<td>File upload</td>
<td><ul>
<li>Can at least upload files as large as 500MB </li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td>All upload limits are set to 500MB in moodle,PHP  memory_limit  4GB, post_max_size and upload_max_filesize  4GB.</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="odd">
<td>Memory allowed</td>
<td><ul>
<li>Filetrash report loads <a href="https://moodle-pp.ucl.ac.uk/report/filetrash/index.php" class="uri">https://moodle-pp.ucl.ac.uk/report/filetrash/index.php</a></li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td>Still receiving same errors (same as on-prem, plugin will be retired)</td>
<td>fail</td>
<td>fail</td>
</tr>
<tr class="even">
<td>STACK</td>
<td><ul>
<li>MaximaPool healthcheck passes</li>
<li>AZ independent</li>
</ul></td>
<td><ul>
<li> </li>
<li> </li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><strong>PROD:</strong>Atempting stack quiz produced an error: Exception - stack_cas_connection: MaximaPool error: 0.</p>
<p>https://prod.ucl.catalyst-eu.net/mod/quiz/view.php?id=1940525</p>
<p>Healthcheck passed with warning:  Couldn't re-execute SBCL with proper personality flags (/proc isn't mounted? setuid?)</p>
<p>Setup on staging. Error with Varnish and healthcheck page being looked at today.</p>
<p>David Kwaw please re-test today.</p>
<p>AZ independent - confirmed/fixed during Friday's standup</p>
</div></td>
<td>Pass</td>
<td>pass</td>
</tr>
<tr class="odd">
<td>LDAP</td>
<td><ul>
<li>can login to Moodle with a UCL Active Directory account</li>
<li>Moodle uses LDAPS protocol to talk to ldap-auth-ad.ucl.ac.uk</li>
<li>Can login to UCL Tools with ldap account</li>
</ul></td>
<td><ul>
<li> </li>
<li> </li>
<li> </li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="even">
<td>File converters</td>
<td><ul>
<li>docx is successfully converted by Onedrive for Business converter</li>
<li>png is successfully converted by Librelambda converter</li>
</ul></td>
<td><ul>
<li> </li>
<li> </li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td>Pass</td>
<td>Pass</td>
</tr>
<tr class="odd">
<td>MIM / Portico Enrolments block/ etc</td>
<td><ul>
<li>Can read/write to moodle_int_management database</li>
<li>MIM SITS job runs against cloud databases successfully</li>
<li>portico_enrolments block working</li>
<li>MIM saves csv/xml to cloud nfs mount successfully</li>
<li>can import into Moodle the csv/xml MIM outputs</li>
<li>MIM CMIS job runs against cloud databases successfully</li>
<li>cron entry set for dbuserrel</li>
</ul></td>
<td><ul>
<li> </li>
<li> </li>
<li> </li>
<li> </li>
<li> </li>
<li> </li>
<li> </li>
</ul></td>
<td><br />
</td>
<td>AS leading, partially complete. </td>
<td>N/A</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>My Feedback</td>
<td><ul>
<li>uses a read-only database endpoint</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td>Wipe config and let readonly deal with it (set in prod due to TP CI so no action should be required)</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="odd">
<td>UCL Tools</td>
<td><ul>
<li>UCL Tools using a database read-only endpoint where possible</li>
<li>UCL Tools reports work</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><strong>PROD</strong>: fails on querying database, unable to check settings.</p>
<p>David Kwaw  re-test today and post errors into &quot;AWS build&quot; channel</p>
</div></td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="even">
<td>Monitoring</td>
<td><ul>
<li>New Relic works</li>
<li>Can access ELK monitoring</li>
</ul></td>
<td><ul>
<li> </li>
<li>  </li>
</ul></td>
<td><br />
</td>
<td><p>New Relic up for staging &amp; prod</p>
<p>ELK - won't be ready for go-live</p></td>
<td>Pass</td>
<td>Pass</td>
</tr>
<tr class="odd">
<td>Caching</td>
<td><ul>
<li>MUC is configured</li>
</ul></td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td><br />
</td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="even">
<td>ClamAV</td>
<td>ClamAV is running properly and Moodle setting is set to strict on failure </td>
<td><ul>
<li> </li>
</ul></td>
<td><br />
</td>
<td><p>No errors - set to 'Treat files like viruses'</p></td>
<td>pass</td>
<td>pass</td>
</tr>
<tr class="odd">
<td>Library Resource block</td>
<td><p>Displays relevant resources for current module</p>
<p>(Calls to <a href="http://readinglists.ucl.ac.uk/modules/%s">http://readinglists.ucl.ac.uk/</a> and <a href="http://digital-collections.ucl.ac.uk/R?func=search-advanced-go&amp;LOCAL_BASE=1152&amp;find_code1=WRD&amp;request1=%s">http://digital-collections.ucl.ac.uk/</a> are properly routed)</p></td>
<td><br />
</td>
<td><br />
</td>
<td>Not tested, should have been.</td>
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
</tr>
</tbody>
</table>


