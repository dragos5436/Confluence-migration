# W.3.1 Create Dev environment

## Pre Requisites

<table>
<thead>
<tr class="header">
<th>WP number</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Dates

<table>
<tbody>
<tr class="odd">
<td>Start</td>
<td><div class="content-wrapper">
<p>05 Mar 2018 </p>
</div></td>
<td>End</td>
<td><div class="content-wrapper">
<p>16 Mar 2018 </p>
</div></td>
<td>Actual Start</td>
<td><div class="content-wrapper">
<p>05 Mar 2018 </p>
</div></td>
<td>Actual End</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Real Life

<table>
<thead>
<tr class="header">
<th>Ref</th>
<th>Name</th>
<th>Who</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td>Provision Virtual Servers</td>
<td><p>S&amp;V</p>
<p>IAS</p></td>
<td><p>Fill in a dashboard spreadsheet <a href="https://liveuclac.sharepoint.com/:x:/r/sites/ISD.ServerRequests/_layouts/15/WopiFrame.aspx?sourcedoc=%7BEF691555-D77A-4A85-A50E-1204CC57D603%7D&amp;file=New%20Server%20Request%20Dashboard_TEMPLATE_v1.1.xlsx&amp;action=default">https://liveuclac.sharepoint.com/:x:/r/sites/ISD.ServerRequests/_layouts/15/WopiFrame.aspx?sourcedoc=%7BEF691555-D77A-4A85-A50E-1204CC57D603%7D&amp;file=New%20Server%20Request%20Dashboard_TEMPLATE_v1.1.xlsx&amp;action=default</a></p>
<p>Upload to sharepoint (you need editing rights)<a href="https://liveuclac.sharepoint.com/sites/ISD.ServerRequests/Team%20Documents/Forms/AllItems.aspx">  https://liveuclac.sharepoint.com/sites/ISD.ServerRequests/Team%20Documents/Forms/AllItems.aspx</a></p>
<p>Create a ticket with a link to the dashboard  <a href="https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl=#/support/problem-requests/all?id=a3S0J000000Lk58UAC" class="uri">https://ucl--bmcservicedesk.eu7.visual.force.com/apex/BMCServiceDesk__SelfServiceNew?fromSiteUrl=#/support/problem-requests/all?id=a3S0J000000Lk58UAC</a></p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Provision Database</td>
<td>Database team</td>
<td><p>Create RF Service request to ask for a blank database to be created on the relevant DB server.   <a href="http://mysdb-01-t.adcom.ucl.ac.uk">mysdb-01-d.adcom.ucl.ac.uk</a>  for DEV    <a href="http://mysdb-01-t.adcom.ucl.ac.uk">mysdb-01-t.adcom.ucl.ac.uk</a>  for UAT</p>
<p>DB needs correct 'grants'</p>
<p>Needs to be in Barracuda format and 'innodb_large_prefix' set to ON</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Install Moodle</p></td>
<td>RDE Learning</td>
<td><p>Prepare code;</p>
<p>Plugins</p>
<p>UCL Hacks</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Install utilities</td>
<td>RDE Learning/IAS</td>
<td>AV, caching, PDF conversion</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Install Plugins</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Configure Plugins</td>
<td><br />
</td>
<td><p>Import plugin configuration settings</p>
<p>Use admin presets tool</p>
<p>Test LDAP configuration</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Install and configure theme</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Build category structure</td>
<td>RDE Learning</td>
<td><p>Import from ...</p></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Build shell course structure</td>
<td>RDE Learning</td>
<td>Import from . . .  .</td>
</tr>
</tbody>
</table>

## Products

<table>
<thead>
<tr class="header">
<th>Reference</th>
<th>Name</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td> C.4.1.4</td>
<td> New Moodle Development Environment</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.2</td>
<td>Applications</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> C.3</td>
<td>Instances</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> C.7</td>
<td>Data</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.2.1</td>
<td><p>Core Moodle application</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.2.3</td>
<td><p>O/S and Utilities</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.9</td>
<td>Application Delivery</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>D.1</td>
<td>Database Design Architecture</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.2.1</td>
<td> Core Moodle application</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.2.2.4</td>
<td> GitHub Repository</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.2.21</td>
<td> Moodle Plugins</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.2.2.2</td>
<td> Third Party Plugins</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.2.2.3</td>
<td> UCL Plugins</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.5</td>
<td> Moodle Configuration</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.6</td>
<td> Theme</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.7.5</td>
<td> Category Structure</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>C.7.1</td>
<td> AM-based module</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>C.7.6</td>
<td> Staff Enrolment</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Actions

<table>
<thead>
<tr class="header">
<th> Who</th>
<th>What</th>
<th>Details</th>
<th>Status</th>
<th>Why</th>
<th> Relates to which work package</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td> Server &amp; Virtualization Team</td>
<td>Request virtual server environment</td>
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
<td> Niv</td>
<td> Write phpunit tests for UCL plugins</td>
<td><ul>
<li>/local/testaccount_automation - done</li>
<li>/local/repositoryfileupload - done</li>
<li>/local/ucl_tools - done</li>
</ul></td>
<td> Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Niv </td>
<td> Set-up PHP Unit test environment on local box - done</td>
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
<td>Niv</td>
<td> Set-up PHP unit environment on dev box - done</td>
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
<td>Niv</td>
<td> Run all PHP unit tests for Moodle on dev box – done</td>
<td><ul>
<li>Run phpunit tests on entire Moodle repository and output the results to a separate file</li>
<li>$ vendor/bin/phpunit &gt; phpunit_output_20180418.txt</li>
<li><p>Go through all failed assertions to check for any alarming tests failures</p></li>
</ul></td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> Niv</td>
<td>Write-up instructions on setting up PHP unit environment</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> Niv</td>
<td>Set-up behat environment on local environment</td>
<td><br />
</td>
<td>Done </td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> Niv</td>
<td>Write behat tests for library resources block</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Niv</td>
<td>Write behat tests for library search block</td>
<td><br />
</td>
<td>Done </td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> Niv</td>
<td>Write behat tests for course visibility block</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> Niv</td>
<td>Write behat tests for block timetable</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> Niv</td>
<td>Write behat tests for testaccount automation local plugin</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> Niv</td>
<td><p>Set-up behat environment on dev environment</p>
<p><br />
</p>
<p><br />
</p></td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td> Niv</td>
<td>Write-up instructions on setting up behat test environment
<p><br />
</p></td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> Niv</td>
<td>Investigate current document converters</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Niv </td>
<td><p>Implement google drive converter on dev</p>
<p><br />
</p>
<p><br />
</p></td>
<td><br />
</td>
<td>NA</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Niv </td>
<td>Implement unoconv on dev</td>
<td><br />
</td>
<td>Done</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>


