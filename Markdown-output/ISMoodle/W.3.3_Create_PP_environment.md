# W.3.3 Create PP environment

| Url -                                                               
                                                                      
 <https://moodle-1819-pp.ucl.ac.uk>                                   
                                                                      
 App servers, nfs and admin servers -                                 
                                                                      
 [moodle-admin-01-pp.ucl.ac.uk](http://moodle-admin-01-pp.ucl.ac.uk)  
                                                                      
 [moodle-app-01-pp.ucl.ac.uk](http://moodle-app-01-pp.ucl.ac.uk)      
                                                                      
 [moodle-app-02-pp.ucl.ac.uk](http://moodle-app-02-pp.ucl.ac.uk)      
                                                                      
 [moodle-app-03-pp.ucl.ac.uk](http://moodle-app-03-pp.ucl.ac.uk)      
                                                                      
 [moodle-app-04-pp.ucl.ac.uk](http://moodle-app-04-pp.ucl.ac.uk)      
                                                                      
 [moodle-nfs-01-pp.ucl.ac.uk](http://moodle-nfs-01-pp.ucl.ac.uk)      
                                                                      
 db servers -                                                         
                                                                      
 [moodle-db-01-pp.ucl.ac.uk](http://moodle-db-01-pp.ucl.ac.uk)        
                                                                      
 [moodle-db-02-pp.ucl.ac.uk](http://moodle-db-02-pp.ucl.ac.uk)        
                                                                      
 Version control -                                                    
                                                                      
 <https://git.dcs.ucl.ac.uk/lta/moodle-mip>                           
                                                                      
 branch :: pre-prod                                                   |
|---------------------------------------------------------------------|

<table>
<thead>
<tr class="header">
<th>Number</th>
<th>What</th>
<th>Who</th>
<th>Details</th>
<th>Dependencies</th>
<th>Status</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><strong>Hardware build</strong></td>
<td><br />
</td>
<td>Plan to mirror current set up</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>PP</td>
<td>SnV/IAS/DBA</td>
<td><p>SnV</p>
<p>Completed dashboard uploaded. Help from networks to provide GTM, LTM, and IP addresses</p>
<p>SnV to provide hostnames with locations.</p>
<p><br />
</p>
<p><br />
</p>
<p><br />
</p>
<p><br />
</p>
<p>Packages for Puppet;</p>
<ul>
<li>RHEL6.x</li>
<li>PHP 7.2 - on App and Admin</li>
<li>ClamAV - on App and Admin</li>
<li>Redis - on NFS</li>
<li>LibreOffice + dependencies - <a href="https://download.documentfoundation.org/libreoffice/stable/6.0.3/rpm/x86_64/LibreOffice_6.0.3_Linux_x86-64_rpm.tar.gz.mirrorlist" class="uri">https://download.documentfoundation.org/libreoffice/stable/6.0.3/rpm/x86_64/LibreOffice_6.0.3_Linux_x86-64_rpm.tar.gz.mirrorlist</a> - on App and Admin</li>
<li>SSL Certificates</li>
<li>NewRelic - RDE to generate key and give to Stefan</li>
</ul>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>full build of environment</td>
<td>SnV/IAS/DBA</td>
<td><p></p>
<ul>
<li>Load balancing not working - check and confirm</li>
<li><p>Servers response quite slow<br />
very slow response to any simple request to an extent where sometimes its timing out. The app servers seem to have uneven load and quite high given that there isn’t much activity at the moment.</p>
<p>A process called ‘collectd’ seems to be consuming CPU - upto 14%</p></li>
<li><p>We need libreoffice packages to be installed on 4 app and admin servers.</p>
<p>moodle-admin-01-pp.ucl.ac.uk</p>
<p>moodle-app-01-pp.ucl.ac.uk</p>
<p>moodle-app-02-pp.ucl.ac.uk</p>
<p>moodle-app-03-pp.ucl.ac.uk</p>
<p>moodle-app-04-pp.ucl.ac.uk</p></li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Plan and implement URL split for two moodles</td>
<td>IAS/RDE</td>
<td><p>on Moodle-pp.ucl.ac.uk</p>
<p><a href="https://moodle-pp.ucl.ac.uk/admin/settings.php?section=local_hub" class="uri">https://moodle-pp.ucl.ac.uk/admin/settings.php?section=local_hub</a></p></td>
<td>Catalyst</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td>2</td>
<td><strong>Moodle installation</strong></td>
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
<td>2.1</td>
<td><strong>General instance prep</strong></td>
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
<td>Upload Moodle latest code from Git</td>
<td>NS</td>
<td><ul>
<li>Checkout new branch from uat for pre-prod</li>
<li>Checkout code from pre_prod branch.</li>
<li>upload code to all app servers</li>
<li>Add and configureconfig.php and config_local.php<br />
set no email ever to true<br />
</li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Start moodle installation</td>
<td><br />
</td>
<td><p>Go to Moodle URL and start installation process</p>
<ul>
<li>Make sure environment check completes OK</li>
<li>Use admin password from KeePass</li>
<li>Save default config settings</li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Session cookie prefix</p>
<p><br />
</p></td>
<td>NS</td>
<td><p>Check</p>
<p>Site admin → Server → Session handling</p>
<p>Cookie prefix - mipmdlpp</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Add in any manual accounts that are needed - test etc.</td>
<td>DigiEd?</td>
<td>Later or who would create these test accounts?</td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<p>PENDING</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Role review</td>
<td>DigiEd</td>
<td><p>Revise roles that are needed. Make sure they are based on archetypes. Esp Myfeedback roles.</p>
<p>Roles on UAT and PP</p></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Category upload</td>
<td>NS</td>
<td><p>For pp - Get csv from Tim and upload on mip-config repo</p>
<p>Note - Later. Once the category data is confirmed from DigiEd.</p></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<p>PENDING</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Shell course import</td>
<td>NS</td>
<td><p>Note - Later. When we have template courses available or shell courses from DigiEd</p></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<p>PENDING</p>
</div></td>
</tr>
<tr class="even">
<td>2.2</td>
<td><strong>Moodle settings and config</strong></td>
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
<td>Export and import settings and config from moodle-34 uat using admin presets</td>
<td>NS</td>
<td><p>Check passwords</p>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>LDAP settings</td>
<td>NS/MB</td>
<td><div class="content-wrapper">
<p>Expand for details</p>
LDAP serverldaps://ldap-auth-ad.ucl.ac.uk/3noutf-8250BINDyesCN=sa-ldap-moodle,OU=LDAPAccounts,OU=Accounts,OU=Administration,DC=ad,DC=ucl,DC=ac,DC=ukr8se?f//LOOKUPMS Active Directoryou=accounts,dc=ad,dc=ucl,dc=ac,dc=ukyesnouser attribute = cnObject class = userPASSWORDnono plaintextLDAP PASSWORDno10-no-no-USER CREATIONnoACCOUNT SYNCkeep internalnoNTLM SSOno-Attempt ntlm with all browsersNTLM-MAPPINGFirst name - givenNameOn CreationNeverUnlocked if EmptySurname -snOn CreationNeverUnlocked if EmptyEmail -mailOn every loginNeverUnlocked if EmptyDepartment -departmentOn every loginNeverLockedUPI -EmployeeIDOn every loginNeverUnlocked if Empty
<p></p>
<p></p>
<br />

<p><br />
</p>
<p><br />
</p>
<p><br />
</p>
</div></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Add extra profile fields</td>
<td>NS</td>
<td><ul>
<li>Get following profile fields from current Moodle</li>
</ul>
<p>Site admin → Users → Accounts → User profile fields</p>
<p>UPI<br />
Course Enrolment<br />
Programme Code<br />
Undergradulate / Postgraduate<br />
Approved Modules<br />
Modules Awaiting<br />
Programme of study<br />
Affiliated department<br />
Year level</p>
<ul>
<li>Review if following profile fields are required on new Moodle → Delete</li>
</ul>
<p>ARS Reference (only)<br />
User ID of account sponsor<br />
-OLD- Review (or expiry) date (DD/MM/YY)<br />
-OLD- Password expiry date (DD/MM/YY)<br />
Expiry or Review Date<br />
Password Expiry Date</p></td>
<td><p>MB/DigiEd review</p>
<p></p></td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Front page settings</p>
<p><br />
</p></td>
<td>NS</td>
<td><p>Check</p>
<p>Site admin → Front page settings</p>
<p>List all front page settings here</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Debugging to none</p>
<p>Theme designer mode is Off</p>
<p><br />
</p></td>
<td>NS</td>
<td><p>Check</p>
<p>Site admin → development → Debugging</p>
<p>Site admin → Appearance → Themes → Theme settings &gt; Theme designer mode is off</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Blocks</td>
<td>NS</td>
<td><ul>
<li>Library resources - check links with annora. Review and delete links that are not relevant.</li>
<li>Library search - check links with annora. check links and delete links that are not relevant</li>
<li>Common Timetable - check links with annora. check links and delete links that are not relevant</li>
</ul>
<p>Common timetable links correct on PP https://moodle-1819-pp.ucl.ac.uk/blocks/timetable/config_global_action.php? Tick the &quot;Open in new tab&quot;</p>
<p>Library block links are correct in New PP. Need to create WISE category, and edit wise resources link in the library resources block</p>
<p>Aspire reading list activity - configured in PP. https://moodle-1819-pp.ucl.ac.uk/admin/settings.php?section=modsettingaspirelist</p>
<p>The library will have to create new module codes in their system before it will work with them. Will need to retest.</p></td>
<td>MB</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>2.4</td>
<td><strong>Adaptable theme settings</strong></td>
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
<td>Adaptable settings</td>
<td>NS</td>
<td><ul>
<li>Use current config, settings and css, js as is.</li>
<li>Revisit later once we have code from catalyst ready.<br />
<br />
</li>
<li>31/05/2018 Decisions revised. Use default adaptable theme with just settings and no custom css or js.</li>
</ul>
<p>Outstanding tasks:</p>
<ul>
<li>Update marketing blocks content</li>
<li>The font colour on the nav bar</li>
<li>Enable/configure attoeditor toolbar</li>
<li>Theme settings - Add ucl logo : Appearance → Themes → Adaptable → Header - Logo</li>
<li>Theme settings - Add favicon : Appearance → Themes → Adaptable → Header - favicon</li>
</ul></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<p>IN PROGRESS</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Google Analytics</td>
<td>NS</td>
<td><p>Double check GA tracking code</p>
<p>Follow the link and insert the tracking ID:</p>
<p>https://moodle-1819-pp.ucl.ac.uk/admin/settings.php?section=theme_adaptable_analytics</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>2.5</td>
<td><strong>Other integrations</strong></td>
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
<td>External tools</td>
<td>NS/MB</td>
<td><p>Preconfigured tools copied over</p>
<p>Not sure if we need new keys - need to test</p>
<p>https://moodle-1819-pp.ucl.ac.uk/admin/settings.php?section=modsettinglti&amp;tab=</p></td>
<td><p>DigiEd</p>
<p>RDE</p></td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Blackboard collaborate</td>
<td>NS</td>
<td>Copy the config from current production</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Lecturecast</td>
<td><br />
</td>
<td>Lecturecast connector block decommissioned. BUT we do need to set up the LTI - Niv/Sharvari to add details</td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>MyPortfolio</td>
<td><br />
</td>
<td><p>There is some integration set up in current prod. See <a href="https://moodle.ucl.ac.uk/admin/mnet/services.php?hostid=5" class="uri">https://moodle.ucl.ac.uk/admin/mnet/services.php?hostid=5</a>     do we still need this in new instance?</p>
<p>No integration unless asked for.</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td>2.6</td>
<td><strong>Portico block</strong></td>
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
<td>CMIS</td>
<td><br />
</td>
<td>NA</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>rewrite and test</td>
<td><br />
</td>
<td><p>NA</p></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>2.7</td>
<td><strong>PDF conversion</strong></td>
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
<td>unoconv and libreoffice packages</td>
<td>NS/Stefan</td>
<td><ul>
<li>Install latest unoconv and libreoffice packages on following servers</li>
</ul>
<p><a href="http://moodle-admin-01-pp.ucl.ac.uk/">moodle-admin-01-pp.ucl.ac.uk</a>, <a href="http://moodle-app-01-pp.ucl.ac.uk/">moodle-app-01-pp.ucl.ac.uk</a>, <a href="http://moodle-app-02-pp.ucl.ac.uk/">moodle-app-02-pp.ucl.ac.uk</a>, <a href="http://moodle-app-03-pp.ucl.ac.uk/">moodle-app-03-pp.ucl.ac.uk</a>, <a href="http://moodle-app-04-pp.ucl.ac.uk/">moodle-app-04-pp.ucl.ac.uk</a></p>
<p>-- Old version -------------</p>
<p>unoconv 0.7<br />
Written by Dag Wieers &lt;dag@<a href="http://wieers.com">wieers.com</a>&gt;<br />
Homepage at <a href="http://dag.wieers.com/home-made/unoconv/" class="uri">http://dag.wieers.com/home-made/unoconv/</a></p>
<p>platform posix/linux2<br />
python 2.6.6 (r266:84292, May 22 2015, 08:34:51)<br />
[GCC 4.4.7 20120313 (Red Hat 4.4.7-15)]<br />
LibreOffice 4.3.7.2</p>
<p>-------------------------------------</p>
<p>Latest packages installed</p>
<p>------------ New version -----------</p>
<p>$ unoconv --version<br />
unoconv 0.8.2<br />
Written by Dag Wieers &lt;dag@<a href="http://wieers.com">wieers.com</a>&gt;<br />
Homepage at <a href="http://dag.wieers.com/home-made/unoconv/" class="uri">http://dag.wieers.com/home-made/unoconv/</a></p>
<p>platform posix/linux<br />
python 3.5.4 (default, Mar 29 2018, 18:03:55)<br />
[GCC 4.8.2 20140120 (Red Hat 4.8.2-15)]<br />
LibreOffice 6.0.3.2</p>
<p>------------------------------------</p>
<p><a href="Moodle_v3.4_Document_Converter">Moodle_v3.4 Document Converter</a></p></td>
<td>Platform Integration/Stefan</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Monitoring script</td>
<td><br />
</td>
<td><p>Monitoring script to run on all 4 servers and admin server</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Test the conversion script</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Ghost script</p>
<p>(Used for annotating pdf documents)</p></td>
<td><br />
</td>
<td><ul>
<li><p>Test GS on serves<br />
</p>
<p>[ccspmdl@moodle-app-01-pp ~]$ gs --version<br />
8.70</p></li>
<li>Test GS from Moodle :: Site admin → plugins → Activity modules → Assignment → Feedback plugins → Annotate PDF &gt; <a href="https://moodle-1819-pp.ucl.ac.uk/mod/assign/feedback/editpdf/testgs.php">Test ghostscript path</a></li>
</ul></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Monitoring script cron to run on all servers</p>
<p>moodle app and admin servers</p></td>
<td><br />
</td>
<td><ul>
<li>Set up cron to run every 30 minutes for all app servers and admin server</li>
</ul>
<p># Puppet Name: monitor_unoconv</p>
<p>*/30 * * * * /home/ccspmdl/monitor_unoconv/monitor-unoconv.sh  2&gt;&amp;1 | /home/ccspmdl/monitor_unoconv/timestamp.sh  &gt;&gt; /home/ccspmdl/monitor_unoconv/monitor-unoconv.log 2&gt;&amp;1 || true</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td>2.8</td>
<td><strong>GDPR</strong></td>
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
<td>Review site policy</td>
<td>Jason/MB</td>
<td><p><a href="https://docs.moodle.org/dev/GDPR_for_Administrators" class="uri">https://docs.moodle.org/dev/GDPR_for_Administrators</a></p>
<p>Put moodle settings link here</p></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<p>PENDING</p>
</div></td>
</tr>
<tr class="even">
<td>2.9</td>
<td><strong>redis cache</strong></td>
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
<td>Install redis on nfs server</td>
<td><br />
</td>
<td><p><a href="Moodle_v3.4_Redis_caching">Moodle_v3.4 Redis caching</a></p>
<ul>
<li>Install Redis on moodle nfs server - moodle-nfs-01-pp</li>
</ul>
<p>$ redis-server --version<br />
Redis server v=3.2.11 sha=00000000:0 malloc=jemalloc-3.6.0 bits=64 build=6ad59081ae574f13</p>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Configure redis on Moodle</td>
<td><br />
</td>
<td><ul>
<li>Create 2 redis instances</li>
</ul>
<ul>
<li>application cache - running on port 6379</li>
<li>session cache - running on port 6380</li>
</ul>
<p><br />
</p>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>2.10</td>
<td><strong>Clam AV</strong></td>
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
<td>Investigate and test</td>
<td>MB/Sammy</td>
<td>Tested on PP - remember to make sure it is enabled in Moodle settings</td>
<td>LTA</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="odd">
<td>2.11</td>
<td>Crons on moodle-admin-01-pp</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Moodle cron</td>
<td>NS</td>
<td><p>Ask DCS team to enable moodle-main cron to run every 5 minutes on moodle-admin-01-pp server</p>
<p># Puppet Name: moodle-main.sh</p>
<p>*/5 0-2,4-23 * * * /usr/local/bin/moodle-main.sh</p>
<p>Issues faced while setting up cron</p>
<ul>
<li>moodle-nfs server was not mounted on moodle-admin box</li>
<li>redis php extension was not installed on moodle-admin box</li>
<li>telnet <a href="http://moodle-nfs-01-pp.ucl.ac.uk">moodle-nfs-01-pp.ucl.ac.uk</a> 6380 → refused connection. port 6380 and 6379 should be open to accept connections from moodle-admin</li>
</ul></td>
<td>DCS/Stefan</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Improvement Project - pp env.xlsx](attachments/92504666/92504665.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

