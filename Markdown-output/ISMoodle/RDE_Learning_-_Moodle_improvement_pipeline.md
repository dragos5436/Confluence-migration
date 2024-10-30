# RDE Learning - Moodle improvement pipeline

<table>
<thead>
<tr class="header">
<th><p><strong>task</strong></p></th>
<th><p>Requested by</p></th>
<th>LoB or Project?</th>
<th><p>Priority</p></th>
<th>Effort days</th>
<th>Deadline / Completion</th>
<th>Dependencies</th>
<th><p>Who will lead on this</p></th>
<th>Status</th>
<th>Notes/type of work</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>MOODLE</strong></td>
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
<td><br />
</td>
</tr>
<tr class="even">
<td>Size alerts on /tmp /var folder</td>
<td><br />
</td>
<td><br />
</td>
<td>2</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Done - New Thruk</td>
<td>Need to speak to PI or SnV</td>
</tr>
<tr class="odd">
<td><p>Deployment and git repos review</p></td>
<td>AS</td>
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
<td>Done - AS</td>
<td><ul>
<li>Ensure consistent rollout on all servers.</li>
<li>Preparation for DevOps</li>
<li>Speed up deployments</li>
<li>Consolidate code from svn / zips in the wiki</li>
</ul></td>
</tr>
<tr class="even">
<td>Request that DCS upgrade Gitlab</td>
<td>AS</td>
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
<td>DONE - migrated to New Gitlab</td>
<td><ul>
<li>Gitlab is 3 years out of date - <a href="https://git.dcs.ucl.ac.uk/" class="uri">https://git.dcs.ucl.ac.uk/</a></li>
<li>Preparation for DevOps</li>
<li>Will allow us to enable CI testing on commit integrating with Jenkins or Travis CI</li>
<li>Issue management &amp; Board well integrated</li>
</ul></td>
</tr>
<tr class="odd">
<td>Review Moodle Annual Upgrade process</td>
<td>JN</td>
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
<td>Not Started</td>
<td><ul>
<li>Can we reduce downtime length?</li>
<li>Can it be done overnight rather than over a weekend?</li>
<li>What are the dependencies on other ISD teams?</li>
</ul>
<p>If same servers upgrade, it shouldn't take long to do the actual upgrade. If we have done on PP and not uncovered anything then it should go into Prod without any further post-upgrade testing by digi-ed (we can login, and access a course just to be sure)</p>
<p>Can we separate snapshot creation work from upgrade?</p>
<p>DB sharding of logs table would help in reducing db backup taking &amp; restore in case of failure.</p></td>
</tr>
<tr class="even">
<td>Moodle course level backup</td>
<td><br />
</td>
<td><br />
</td>
<td>1</td>
<td>5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Not started</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Moodle staff account import</td>
<td><br />
</td>
<td><br />
</td>
<td>2</td>
<td>5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Done - AD Sync</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>robots.txt for Moodle</td>
<td><br />
</td>
<td>LoB</td>
<td>4</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>DK</td>
<td>Not started</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Dev Ops CI/CD</p></td>
<td><p>RDE/PI</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>15</td>
<td><br />
</td>
<td>Automated testing (below)</td>
<td><p>SM</p></td>
<td>In Progress</td>
<td>Engage with Ripple rock process</td>
</tr>
<tr class="even">
<td><p>MySQL patching</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>In Progress</td>
<td><ul>
<li>Meetings</li>
<li>See security reports</li>
</ul></td>
</tr>
<tr class="odd">
<td>Turnitin Assignment</td>
<td><br />
</td>
<td>Lob</td>
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
<td>DONE - released</td>
<td>Poss some more load testing</td>
</tr>
<tr class="even">
<td>Moodle PP load testing</td>
<td><br />
</td>
<td><br />
</td>
<td>3</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>DONE - released</td>
<td>AS has emailed <a href="https://github.com/mhughes2k">mhughes2k</a> who had raised a number of the load issues via TII's github to check progress</td>
</tr>
<tr class="odd">
<td>Legacy course files</td>
<td><br />
</td>
<td><br />
</td>
<td>6</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Not Started</td>
<td><p>Look at plugin</p>
<p><a href="https://moodle.org/plugins/tool_legacyfilesmigration" class="uri">https://moodle.org/plugins/tool_legacyfilesmigration</a></p></td>
</tr>
<tr class="even">
<td>Set up xhprof</td>
<td>Catalyst / CI</td>
<td>Poss MIP</td>
<td>5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Not Started</td>
<td>Catalyst found profiling to very helpful in finding problematic requests and analysing code. Moodle support<br />
xhprof php profiler. Functionality requires php xhprof extension to be installed on web server instances, more<br />
documentation into installation and profiling can be found at<br />
<a href="https://docs.moodle.org/dev/Setting_up_xhprof_on_Moodle" class="uri">https://docs.moodle.org/dev/Setting_up_xhprof_on_Moodle</a>.</td>
</tr>
<tr class="odd">
<td>Moodle baseline -</td>
<td><br />
</td>
<td>Moodle improvements project?</td>
<td>7</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Clive</td>
<td><br />
</td>
<td>Enforce Moodle baseline - poss 'readiness' block? Dublin city?</td>
</tr>
<tr class="even">
<td>Puppet config for all moodle servers</td>
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
<td>PI</td>
<td>DONE - profile_mdl</td>
<td>Get all moodle servers on the correct, standardised puppet manifest</td>
</tr>
<tr class="odd">
<td><p>Tidy up of dev and Uat servers Moodle and others.</p>
<p>Speak DCS re access accounts, folder structure, regular rsync of moodle data from live</p></td>
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
<td>On Hold</td>
<td>To be rolled into DevOps</td>
</tr>
<tr class="even">
<td>Unoconv to run on dedicated server</td>
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
<td>Not Started</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Catalyst Cron Q plugin</td>
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
<td>Check readiness with Catalyst</td>
</tr>
<tr class="even">
<td>Catalyst S3 storage</td>
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
<td><p><a href="https://moodle.org/plugins/tool_objectfs" class="uri">https://moodle.org/plugins/tool_objectfs</a></p>
<p>This may be good for pointing multiple dev/uat instances at one moodle filedir. Make all instances add + read, but no delete.</p></td>
</tr>
<tr class="odd">
<td>HTTP caching</td>
<td>Catalyst / CI</td>
<td>Poss MIP</td>
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
<td>On Hold</td>
<td><p>Caching based on Cache-Control header with simple policy of caching “public” requests</p>
<p>respecting “max-age” value would relieve web server from serving most theme/CSS/JavaScript assets.</p></td>
</tr>
<tr class="even">
<td><p>Moodle table partitioning</p></td>
<td><p>LTA/DBA's</p></td>
<td>From Jan 17 C.I.</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>RC</p></td>
<td>On Hold</td>
<td>Poss product of CI</td>
</tr>
<tr class="odd">
<td><p>Moodle architecture review</p></td>
<td><p>LTA</p></td>
<td>From Jan 17 C.I.</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Office 365 Integration</td>
<td><br />
</td>
<td>Poss project?</td>
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
<td>On Hold</td>
<td>initial investigation. Needs connection to dev office env.</td>
</tr>
<tr class="odd">
<td>Legacy grading button</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>3</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>On Hold</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>CLAM AV - demonise</td>
<td>Jan CI</td>
<td>LoB</td>
<td><br />
</td>
<td>?</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Completed</p>
<p><br />
</p></td>
<td><p>Bejen has put on</p>
<p><a href="https://v315.moodle-dev.ucl.ac.uk/" class="uri">https://v315.moodle-dev.ucl.ac.uk/</a></p>
<p>In place on New (and Legacy?)</p></td>
</tr>
<tr class="odd">
<td>Table format conversion - Antelope to Barracuda</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Ehsan</td>
<td>Completed</td>
<td>in place on New Moodle</td>
</tr>
<tr class="even">
<td><p>Moodle-pp migration (finaliase, sign off, decommission local moodle-pp)</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>01 Jul 2016</p>
</div></td>
<td><br />
</td>
<td><p>MB</p></td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Moodle-archive (we were going to have a update meeting tomorrow (thurs) with Adrian and Sam to review progress?)</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
15 Jul 2016 
</div></td>
<td><br />
</td>
<td><p>MB</p></td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Moodle 3.1 Testing/Fixes and Upgrade prep</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
22 Jul 2016 
</div></td>
<td><br />
</td>
<td>MB</td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Moodle Snapshot - dockerization of previous instances</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>01 Apr 2017 </p>
</div></td>
<td><br />
</td>
<td>DCS (Sam)</td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>Check all ok for start of term generally (course creation, SITS filter, IoE?)</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
01 Sep 2016 
</div></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Moodle PP failover</td>
<td>LTA Migration Project</td>
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
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>Moodle production disk space – how to get the 2TB we’ve paid for onto production</p></td>
<td><p>LTA/DBA's</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>3</td>
<td><div class="content-wrapper">
<p>01 Jul 2016 </p>
</div></td>
<td><br />
</td>
<td><p>MB</p></td>
<td>Complete</td>
<td>Comms with SnV, finance, Digi Ed. CR</td>
</tr>
<tr class="odd">
<td><p>Automated testing (managing work load and task allocation for summer interns to work on this?)</p></td>
<td><p>LTA</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>15</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>Complete</td>
<td><ul>
<li>Meetings.</li>
<li>Comms with Digi Ed, testing team.</li>
<li>Documentation</li>
<li>Training/Familiarisation</li>
</ul></td>
</tr>
<tr class="even">
<td>Moodle alerts - move to 'my home'</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>4</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Blackboard collaborate ULTRA</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>4</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Complete</td>
<td><ul>
<li>Comms</li>
<li>Install plugin</li>
<li>Testing</li>
<li>CR</li>
</ul></td>
</tr>
<tr class="even">
<td>Category enrolment Roles</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>2</td>
<td><div class="content-wrapper">
<p>14 Nov 2017 </p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td>Complete</td>
<td><p>CR2160</p>
<p>Remove roles from category level assignment capability</p></td>
</tr>
<tr class="odd">
<td>Cloud lecturecast integration</td>
<td><br />
</td>
<td>Project</td>
<td><br />
</td>
<td>15</td>
<td><div class="content-wrapper">
<p>07 Dec 2017 </p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td>Complete</td>
<td><ul>
<li>Meetings</li>
<li>Installing software</li>
<li>Comms with Digi Ed, project,developer</li>
<li>Testing</li>
<li>Raising CR</li>
</ul></td>
</tr>
<tr class="even">
<td>MediaCentral - integration to Moodle</td>
<td><br />
</td>
<td>Project</td>
<td><br />
</td>
<td>20</td>
<td><div class="content-wrapper">
<p><br />
14 Dec 2017</p>
</div></td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>Complete</p>
<p><br />
</p>
</div></td>
<td><div class="content-wrapper">
<ul>
<li>Meetings. Installing software</li>
<li>Comms with Digi ed, project</li>
<li>CR1887</li>
<li>Testing 08 Dec 2017 </li>
</ul>
</div></td>
</tr>
<tr class="odd">
<td>Split out caching</td>
<td>Oct CI</td>
<td>LoB</td>
<td><br />
</td>
<td>5</td>
<td><div class="content-wrapper">
<p>19 Dec 2017 </p>
</div></td>
<td><br />
</td>
<td>Sam Moulem</td>
<td>Complete</td>
<td><p>Split cache definitions</p>
<p>CR2335</p></td>
</tr>
<tr class="even">
<td>Moodle Cache settings</td>
<td>Catalyst / CI</td>
<td>LoB</td>
<td><br />
</td>
<td>2</td>
<td><div class="content-wrapper">
<p>19 Dec 2017 </p>
</div></td>
<td><br />
</td>
<td>Sam Moulem</td>
<td>Complete</td>
<td><p>Moodle allows specifying other site-wide cache related setting in main moodle config.php file. Catalyst</p>
<p>recommends setting following values:</p>
<p>• $CFG-&gt;localcachedir = &quot;/tmp/&quot; . $CFG-&gt;dbname . &quot;/&quot;; Setting this will speed up some of the disk</p>
<p>caching that happens outside of MUC, such as themes, JavaScript, libraries etc.</p>
<p>• $CFG-&gt;alternative_component_cache = &quot;/tmp/&quot; . $CFG-&gt;dbname .</p>
<p>&quot;_alternative_component_cache.php&quot;; Will reduce reads on Moodle's shared cache directory.</p>
<p>Both of these options reduce volume and frequency of access cached resources stored in Moodle instance’s</p>
<p>file area.</p>
<p>CR2335</p></td>
</tr>
<tr class="odd">
<td><p>SITS Moodle record housekeeping queries</p></td>
<td><p>Completing work that was on SITS project 'wish list'. Now urgent because it is causing issues.</p></td>
<td>Project</td>
<td><p><br />
</p></td>
<td><p>10</p>
<p>Delvon did 2 days on this.</p>
<p>Sammy 2 days</p>
<p>Niv 3 days</p>
<p>LTA 2 days</p></td>
<td><br />
</td>
<td><br />
</td>
<td><p>SM/Niv</p></td>
<td>Done</td>
<td><ul>
<li>Coding</li>
<li>Testing</li>
<li>Comms with Digi Ed</li>
<li>CR</li>
<li>The work on this is finished now. The script takes approx. 20-30 minutes to finish the job. So, I would recommend this script to be run monthly or even quarterly as I suspect after the first run there might be not be enough data to clean-up for another month or so.</li>
<li>The script could be placed within moodle’s root/ucl_tools directory or could also be placed outside of moodle.</li>
</ul>
<ul>
<li>The repo is on Gitlab - <a href="https://git.dcs.ucl.ac.uk/lta/sits_cleanup_script.git" class="uri">https://git.dcs.ucl.ac.uk/lta/sits_cleanup_script.git</a></li>
</ul></td>
</tr>
<tr class="even">
<td>Portico unenrolment</td>
<td>Digi Ed</td>
<td><br />
</td>
<td><br />
</td>
<td>7</td>
<td><div class="content-wrapper">
<p>23 Jan 2018 </p>
</div></td>
<td><br />
</td>
<td>Niv</td>
<td>Complete</td>
<td><p>I have created a new repo for this plugin on Gitlab - <a href="https://git.dcs.ucl.ac.uk/lta/moodle-local_ucl_tools.git" class="uri">https://git.dcs.ucl.ac.uk/lta/moodle-local_ucl_tools.git</a>. The repository is up-to-date with all issues fixed.</p>
<p>CR 2401</p></td>
</tr>
<tr class="odd">
<td>Google analytics tags</td>
<td><br />
</td>
<td>Lob</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>23 Jan 2018 </p>
</div></td>
<td><br />
</td>
<td>Sam Moulem</td>
<td>Completed</td>
<td>CR00002179</td>
</tr>
<tr class="even">
<td>Session caching investigation - size increase</td>
<td><br />
</td>
<td><br />
</td>
<td>1</td>
<td>0.5</td>
<td><div class="content-wrapper">
<p>06 Feb 2018 </p>
</div></td>
<td><br />
</td>
<td>MB</td>
<td>Complete</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td>MyFeedback query optimisation</td>
<td><br />
</td>
<td>Ongoing Project</td>
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
<td>Completed</td>
<td>Ready to go live. Niv to pass on to Jess for Moodle.org</td>
</tr>
<tr class="even">
<td><p>PDF conversion</p></td>
<td><br />
</td>
<td>LoB</td>
<td>1</td>
<td>40</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td> Completed</td>
<td>Updated version of libre office on New Moodle. Monitoring tool in place on both New and Legacy</td>
</tr>
<tr class="odd">
<td>Reenable caching settings in config.php</td>
<td>Catalyst recommendations.</td>
<td><br />
</td>
<td>2</td>
<td>1</td>
<td><br />
</td>
<td><br />
</td>
<td>SM</td>
<td>Completed</td>
<td>On Legacy. Different caching (Redis) used on New</td>
</tr>
<tr class="even">
<td>Replication testing for Moodle DB</td>
<td><br />
</td>
<td><br />
</td>
<td>3</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td>OEM monitoring in place for New</td>
</tr>
<tr class="odd">
<td>CMIS groups certificate</td>
<td><br />
</td>
<td>LoB</td>
<td>1</td>
<td>1</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Admin settings block</td>
<td>Needed for 3.4 migration</td>
<td>Lob</td>
<td>4</td>
<td>2</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td>In place on Legacy and New</td>
</tr>
<tr class="odd">
<td>Accessibility work</td>
<td>Jess G/ Mira V</td>
<td>Project</td>
<td><br />
</td>
<td>5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td>New theme on New Moodle</td>
</tr>
<tr class="even">
<td>Next Moodle upgrade</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>8</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td>3.1.8</td>
</tr>
<tr class="odd">
<td>Campus pack decom</td>
<td><br />
</td>
<td>MIP</td>
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
<td>Completed</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Login Javascript</td>
<td><a href="https://svn.ucl.ac.uk/projects/isd/moodle30/ticket/25" class="uri">https://svn.ucl.ac.uk/projects/isd/moodle30/ticket/25</a></td>
<td>LoB</td>
<td><br />
</td>
<td>2</td>
<td><br />
</td>
<td><br />
</td>
<td>Niv</td>
<td><p>Wont Implement</p>
<p>Not needed for 'New Moodle'  and not worth the effort to apply to Legacy</p></td>
<td><p>Needs CR</p>
<p>Fixed JS errors seen in RF</p>
<ul>
<li>This involved changes to input types (username and password) in the login form. The fix should avoid us from using UCL’s custom login js script. The script looked a bit outdated anyways.</li>
<li>All changes are pushed to a new branch - ucl_stable_v315-fixes (<a href="https://git.dcs.ucl.ac.uk/lta/moodle/commits/ucl_stable_v315-fixes" class="uri">https://git.dcs.ucl.ac.uk/lta/moodle/commits/ucl_stable_v315-fixes</a> )<br />
<br />
</li>
</ul></td>
</tr>
<tr class="odd">
<td><strong>WIKI</strong></td>
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
<td><br />
</td>
</tr>
<tr class="even">
<td>Wiki AD changeover</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>3</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td><ul>
<li>Comms with Digi Presence, Identity apps</li>
<li>Changing settings</li>
<li>Testing</li>
<li>Raising CR</li>
</ul></td>
</tr>
<tr class="odd">
<td>Upgrade</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>30</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td><p>Comms</p>
<p>Testing</p>
<p>Raising CR</p></td>
</tr>
<tr class="even">
<td>DB collation</td>
<td><br />
</td>
<td>LoB</td>
<td>6</td>
<td>3</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Ready</td>
<td>CR2019</td>
</tr>
<tr class="odd">
<td><p>mop up</p>
<p>Authentication prompt</p></td>
<td><br />
</td>
<td>LoB</td>
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
<td>On Hold</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>ADLIB</strong></td>
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
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Initial upgrade</p></td>
<td><p><br />
</p></td>
<td>LoB</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
<td>10</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>Completed</td>
<td><ul>
<li>Comms</li>
<li>Raising CR</li>
<li>Testing</li>
</ul>
<p><br />
</p></td>
</tr>
<tr class="even">
<td>Migrate off WW17</td>
<td><br />
</td>
<td>LoB</td>
<td><div class="content-wrapper">
<p>16 Nov 2017 </p>
</div></td>
<td>10</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td><ul>
<li>Meetings</li>
<li>Configuration</li>
<li>Raising CR</li>
<li>Testing</li>
</ul></td>
</tr>
<tr class="odd">
<td>Standardisation</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>60</td>
<td><br />
</td>
<td><br />
</td>
<td>EA</td>
<td>Completed</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>W10 testing</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>4</td>
<td><br />
</td>
<td><br />
</td>
<td>EA</td>
<td>Completed</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>MYPORTFOLIO</strong></td>
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
<td><br />
</td>
</tr>
<tr class="even">
<td>Upgrade</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>8</td>
<td><br />
</td>
<td><br />
</td>
<td>SM</td>
<td>In Progress</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>BLOGS</strong></td>
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
<td><br />
</td>
</tr>
<tr class="even">
<td>Upgrade</td>
<td><br />
</td>
<td>LoB</td>
<td><br />
</td>
<td>15</td>
<td><div class="content-wrapper">
<p>28 Nov 2017 </p>
</div></td>
<td><br />
</td>
<td>DK</td>
<td>Complete</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Individual blogs</td>
<td><br />
</td>
<td>Project</td>
<td><br />
</td>
<td>unknown?</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>In Progress</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>OPINIO</strong></td>
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
<td><br />
</td>
</tr>
<tr class="odd">
<td>Fix Database error</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>In Progress</td>
<td><ul>
<li>Comms with Opinio support, Digi Ed, Dba's</li>
<li>Testing</li>
<li>Raising CR</li>
</ul></td>
</tr>
<tr class="even">
<td><strong>CLUSTER PC</strong></td>
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
<td><br />
</td>
</tr>
<tr class="odd">
<td>Room availability info</td>
<td><br />
</td>
<td>Lob - RF ticket</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>SM</td>
<td>In Progress</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><p>Cluster pc availability app</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>On Hold</td>
<td><p>Email addresses update, room list update</p>
<p>Poss recode to automate room list   and better geo-location of rooms</p></td>
</tr>
<tr class="odd">
<td><strong>GENERAL</strong></td>
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
<td><br />
</td>
</tr>
<tr class="even">
<td><p>General keeping on top of tickets, addressing any of our ‘to do’ actions that come out of the service book stats</p></td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><p><br />
</p></td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>Ongoing</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><p>Migrating all the apps to slough</p></td>
<td><p><br />
</p></td>
<td>DC Migration</td>
<td><p><br />
</p></td>
<td>Approx 10 days per service</td>
<td><br />
</td>
<td><br />
</td>
<td><p><br />
</p></td>
<td>Completed</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Migrating database servers</td>
<td><br />
</td>
<td>DB Migration</td>
<td><br />
</td>
<td>Approx 5 days per service</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Completed</td>
<td><br />
</td>
</tr>
</tbody>
</table>


