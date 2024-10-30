# Modern API Integration Principles

Moodle is an open source learning environment created, supported and developed by likeminded communities. It is written in PHP which may sound archaic but it does not turn its back to modern technology. With the rights tools and skills you can develop pretty much everything. Functionality not readily available in core Moodle is usually available as a Moodle plugin(s) developed by the Moodle community for the Moodle community. UCL Moodle community benefits greatly from such developments and also tries to give benefit to others by developing and publicly releasing specific UCL plugins. It also improves the quality of the plugins UCL is using by fixing bugs and adding extra functionality where such is missing or not working as required.

Moodle plugins are also seen as a preferred way to integrate Moodle with other systems e.g. Zoom, Turnitin, Azure AD, etc. The integration is usually achieved via native APIs provided by the previously mentioned example applications. The reason why this way is preferred is because in many cases those plugins are readily available and can be used with minimal or no code change at all.

New application functionality=new API methods=new plugin functionality=new Moodle functionality 

<table>
<thead>
<tr class="header">
<th>Principle</th>
<th>Why?</th>
<th><br />
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Use native built-in API/webservice framework </td>
<td><p>API uses the same code functions as the application so they are updated in one place</p>
<p>→ better maintained</p>
<p>→ less UCL resource to maintain</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td>Be RESTful</td>
<td><p>Proper HTTP error codes returned when error occurs</p>
<p>→ development frameworks will error handle these &quot;for free&quot;</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td>Use JSON</td>
<td><p>Just works, unlike XML.</p>
<p>Data is properly encoded and parsed as a result.</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td>event-driven architecture</td>
<td>Process small changes frequently instantly, rather than a big slow overnight batch job</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Rate limiting</td>
<td>Prevents a rogue API client from generating excessive load on the system which could risk system uptime</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>only build upon modern / long-term components</p>
<p>→ do not use BDO IDs</p>
<p>→ do not use database layer integrations</p>
<p>→ do not use WS02</p>
<p>→ do not use batch files</p></td>
<td><p>best to build for the long term, we can iterate on solid foundations as architectural patterns evolve.</p>
<p><br />
</p>
<p><br />
</p></td>
<td><br />
</td>
</tr>
</tbody>
</table>


