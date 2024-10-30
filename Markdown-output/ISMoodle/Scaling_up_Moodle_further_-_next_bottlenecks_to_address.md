# Scaling up Moodle further - next bottlenecks to address

<table>
<thead>
<tr class="header">
<th>Ticket</th>
<th>Server</th>
<th>Ram/CPU to be added</th>
<th>Done</th>
<th>Previous Configuration</th>
<th>Current Configuration</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td>NFS</td>
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
<td>04137371</td>
<td><p><a href="http://mdl-nfs01p.ad.ucl.ac.uk">mdl-nfs01p.ad.ucl.ac.uk</a></p>
<p><a href="http://mdl-nfs01.ad.ucl.ac.uk">mdl-nfs01.ad.ucl.ac.uk</a></p></td>
<td><p>4GB</p>
<p>4GB</p></td>
<td>Yes</td>
<td><p>8GB</p>
<p>8GB</p></td>
<td><p>12GB</p>
<p>12GB</p></td>
</tr>
<tr class="odd">
<td>04145258</td>
<td><p><a href="http://mdl-nfs01p.ad.ucl.ac.uk">mdl-nfs01p.ad.ucl.ac.uk</a></p>
<p><a href="http://mdl-nfs01.ad.ucl.ac.uk">mdl-nfs01.ad.ucl.ac.uk</a></p></td>
<td><p>4 CPU</p>
<p>4CPU</p></td>
<td>Yes</td>
<td><p>4 CPU</p>
<p>4 CPU</p></td>
<td><p>8 CPU</p>
<p>8 CPU</p></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>DATABASE</td>
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
<td>04137742</td>
<td><a href="http://mdl-db01p.ad.ucl.ac.uk">mdl-db01p.ad.ucl.ac.uk</a></td>
<td>6 CPU</td>
<td>Yes</td>
<td>6 CPU</td>
<td>12 CPU</td>
</tr>
<tr class="even">
<td>04145246</td>
<td><p><a href="http://mdl-db01p.ad.ucl.ac.uk">mdl-db01.ad.ucl.ac.uk</a></p>
<p><a href="http://mdl-db01p.ad.ucl.ac.uk">mdl-db01p.ad.ucl.ac.uk</a></p></td>
<td><p>12 CPU</p>
<p>12 CPU</p></td>
<td>Yes</td>
<td><p>12 CPU</p>
<p>12 CPU</p></td>
<td><p>24 CPU</p>
<p>24 CPU</p></td>
</tr>
</tbody>
</table>

Prod & Preprod costs added below.  Though for future reference can be found here:

https://liveuclac.sharepoint.com/sites/ISDPortfolioManagement/Proposal%20Process/2019-20\_Project\_Proposal\_Template\_Guidelines.pdf

Appendix 1

1) Increase permanently mdl-db01 CPUs to 12 → [Slide 11](https://wiki.ucl.ac.uk/download/attachments/1015981/Moodle%20Architecture%20for%20Design%20Group%20V4.pptx?version=2&modificationDate=1576491658000&api=v2&download=true) → 01 Aug 2020Fast-forwarded -&gt;-&gt; //10/03/2020 

**PROD COSTS:**

Additional 6CPU,

Archetype - VHM

Cost per CPU £551

Total Cost £3,306

Pre Prod costs is the same as Prod.  Currently sitting at 6CPU.  Though question would be if this is required for preprod

2) Add 2 additional app servers → [Slide 11](https://wiki.ucl.ac.uk/download/attachments/1015981/Moodle%20Architecture%20for%20Design%20Group%20V4.pptx?version=2&modificationDate=1576491658000&api=v2&download=true) → 01 Aug 2020  Fast-forwarded -&gt;-&gt; //10/03/2020 

**PROD & Preprod COSTS:**

Based on current spec of app servers: (6CPU, 16GB ram, 75GB disk, Load Balanced )

Cost per VM £2,475.50

Total cost £4,951

———————————————

This gets us to 50% increase to handle normal load increase (20-25% annual increase) for start of 2020-21 academic year with headroom.

Should add another 6CPUs on db01/db01p to support the 2 extra app servers (18 total)

———————————————

Next bottleneck from there would be NFS server, to address that:

3) Move Session store Redis instance from mdl-nfs01 to  mdl-backend01 (mdl-backend02 as standby - same patttern as for app cache) → In progress

4) Increase RAM and CPU x2 for mdl-nfs01 as this becomes a bottleneck for everything else.  → RAM in progress, need to request CPU

Base costs.  Costs can be derived once we know how much we wish to increase by:

**PROD & Preprod COSTS:**

VHM Cost per CPU £551

VHM Cost per 1GB Ram £93

CPU is essential due to peak load hit on a regular basis for background processes such as Puppet, F-Secure, etc. NFS Server is a SPOF. Better safe 

5) High throughput data folders on mdl-nfs01 should be on SSD for increased file I/O: → not currently scheduled

- /data/moodle/cache
- /data/moodle/muc
- /data/moodle/temp

6) Add another 2 app servers (8 total) & increase CPU for database masters proportionally (24 CPUs total)

App servers requested -&gt; //11/03/2020 

database CPUs need to be requested

——————————————— 

This gets us to 2x current server capacity

This **should** handle the normal load + additional load for fully online submissions.

———————————————

7) Add another 4 app servers (12 total) & increase CPU for database masters proportionally + headroom (40 CPUs total)

——————————————— 

This gets us to 3x current server capacity

This **should** handle the normal load + additional load for fully online submissions + online exams done through Moodle (peak of 1850 students submitting a Moodle quiz at the same time)

———————————————

8) From there, add 2 CPU on backend servers (Puppet/ F-Secure runs cause max out of load + actual load 

total cost: 8CPU VOS

9) Consider whether to increase specs of app servers or keep adding more app servers → not currently scheduled

Next bottleneck from there would be Database server, to address that:

10) bottleneck if adding many more app severs our main SPOF should be database master so mdl-db01.   → not currently scheduled
- maybe add more CPUs
- maybe add even more RAM though we probably have enough
- performance monitoring and tuning of MySQL configuration


