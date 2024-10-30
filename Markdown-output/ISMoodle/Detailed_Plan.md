# Detailed Plan

# Teams working on MySDB04 mysql upgrade: 

LA Team 

Data services - Roy B

HIS - Rohith M

PI - Daniel M

# Agreed date pending CAB and SO agreement is 03 Jun 2021

# Affected services url:

<https://moodle-snapshot.ucl.ac.uk/15-16/>

<https://moodle-snapshot.ucl.ac.uk/16-17/>

<https://moodle-snapshot.ucl.ac.uk/17-18/>

<https://moodle-snapshot.ucl.ac.uk/18-19/>

<https://wiki.ucl.ac.uk/>

<https://opinio.ucl.ac.uk/>

<https://myportfolio.ucl.ac.uk/>

# ISD News page

<https://www.ucl.ac.uk/isd/news/2021/may/moodle-snapshot-wiki-myporfolio-and-opinio-maintenance-3-june-2021-5pm-11pm>

Before the upgrade

<table>
<thead>
<tr class="header">
<th>Action</th>
<th>Who </th>
<th>Note</th>
<th>When</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Notify DigiED</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>26 May 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><p>HIS lined up</p></td>
<td>Rohith M</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>25 May 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>DBA lined up</td>
<td>Roy B </td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>25 May 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>PI lined up</td>
<td>Nikola</td>
<td>Daniel is on ESS</td>
<td><div class="content-wrapper">
<p>26 May 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>Request db refresh for Wiki in UAT</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>27 May 2021 </p>
</div></td>
<td>DONE</td>
</tr>
<tr class="even">
<td>Raise CR for CAB</td>
<td>Rohith M</td>
<td>All to contribute</td>
<td><div class="content-wrapper">
<p>01 Jun 2021 </p>
</div></td>
<td>DONE</td>
</tr>
<tr class="odd">
<td>Attend CAB</td>
<td>all</td>
<td>Approved without going to CAB</td>
<td><div class="content-wrapper">
<p>02 Jun 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>Request ISD news page</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>28 May 2021 </p>
</div></td>
<td>DONE</td>
</tr>
<tr class="odd">
<td><p>Prepare Wiki UAT</p>
<p>rsync from wiki prod</p></td>
<td>David Kwaw</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>01 Jun 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>Send affected services urls to Daniel (RF)</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>02 Jun 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>Create Moodle snapshot outage (all except 19-20)</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>01 Jun 2021 </p>
</div></td>
<td>DONE</td>
</tr>
<tr class="even">
<td>Create Wiki banner for outage</td>
<td>Ehsan</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>01 Jun 2021 </p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
</tbody>
</table>

On the day 03 Jun 2021

<table>
<thead>
<tr class="header">
<th>Action</th>
<th>Who </th>
<th>Note</th>
<th>When</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1.Notify PI (Daniel M) to apply redirect to ISD news page. Provide ips to exclude.</td>
<td>Nikola</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td>DONE</td>
</tr>
<tr class="even">
<td><p>2. Once 1) is done notify Rohith to start taking snapshot of mysdb04</p></td>
<td>Nikola/ Rohith</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>3. Increase mysbd04 CPU/memory temporary to speed up mysql upgrade</td>
<td>Rohith M</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>4. Once 2) and 3) are done Rohith can start the frist step  mysql upgrade to 5.6 latest </td>
<td>Rohith M</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>5. Start second step upgrade mysql 5.7.33.</td>
<td>Rohith M</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>6. Once mysql upgrade is done revert back CPU/memory to normal and notify Learnings apps team. Restart server.</td>
<td>Rohith M</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>7. Smoke Test Moodle snapshot 15/16 to 18/19</td>
<td>Nikola</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>8. Smoke Test Mahara </td>
<td>Ehsan</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>9. Smoke Test Opinio &amp; database config - add ssl string to config (
<pre><code>&amp;useSSL=false)</code></pre></td>
<td>David Kwaw</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>10. Smoke Test Wiki</td>
<td>Ehsan</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>11. Notify PI (Daniel M) to remove redirect to services</td>
<td>Nikola</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>12. Notify DIgiED change is done/not done.</td>
<td>Nikola</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>Optional: Around 10pm if upgrade is still running start rollback process and do steps 6-10</td>
<td>Rohith M</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>


