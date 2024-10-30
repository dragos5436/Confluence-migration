# Web Service Integration reviews

[WebServices - things to consider](WebServices_-_things_to_consider)

**1) IPAC**

<table>
<tbody>
<tr class="odd">
<td><p><code class="java plain" style="text-align: left;">[Y] Establish the list of permissions required </code><code class="java keyword" style="text-align: left;">for</code> <code class="java plain" style="text-align: left;">the integration to work</code></p>
<p><a href="https://github.com/celtic-project/LTI-PHP/wiki/ApiMoodle" class="uri">https://github.com/celtic-project/LTI-PHP/wiki/ApiMoodle</a><br />
<code class="java plain" style="text-align: left;">[Y] Try to reduce that list to the strict minimum</code></p>
<p>required for ipac; ** have been removed</p>
<p>• moodle/course:enrolreview - needed.</p>
<p>• moodle/course:managegroups - needed.</p>
<p>• moodle/course:useremail**</p>
<p>• moodle/course:view - needed.</p>
<p>• moodle/role:review**</p>
<p>• moodle/user:viewalldetails**</p>
<p>• moodle/user:viewdetails - needed.</p>
<p>• moodle/user:viewhiddendetails**</p>
<p>• webservice/rest:use</p>
<p>• moodle/site:accessallgroups - needed.</p>
<p>• moodle/site:viewfullnames**</p>
<p><br />
<code class="java plain" style="text-align: left;">[Y] Only pulls in relevant user data when it needs it</code></p>
<p>Tied to the LTI integration for IPAC which and will only pull in users &amp; groups when requested for a specific course</p>
<p><br />
<code class="java plain" style="text-align: left;">[Y] Load</code></p>
<p><code class="java plain" style="text-align: left;">LTI with limited amount of usage &amp; the WS part is just to complement with group data which can't be obtained via LTI currently</code></p>
<p><br />
</p>
<p><code class="java plain" style="text-align: left;">[] Web Service Role setup &amp; documentation</code></p>
<p><br />
</p></td>
</tr>
</tbody>
</table>


