# W.3.4 Create Prod environment

## Dates

|       |              |     |              |              |              |            |              |
|-------|--------------|-----|--------------|--------------|--------------|------------|--------------|
| Start | 30 Apr 2018  | End | 01 Jun 2018  | Actual Start | 01 May 2018  | Actual End | 05 Jul 2018  |

| Url -                                      
                                             
 <https://moodle-1819.ucl.ac.uk>             
                                             
 **App servers, nfs and admin servers -**    
                                             
 moodle-admin-01.ucl.ac.uk                   
                                             
 moodle-app-01.ucl.ac.uk                     
                                             
 moodle-app-02.ucl.ac.uk                     
                                             
 moodle-app-03.ucl.ac.uk                     
                                             
 moodle-app-04.ucl.ac.uk                     
                                             
 moodle-nfs-01.ucl.ac.uk                     
                                             
 **db servers -**                            
                                             
 moodle-db-01.ucl.ac.uk                      
 moodle-db-02.ucl.ac.uk                      
                                             
 Version control -                           
                                             
 <https://git.dcs.ucl.ac.uk/lta/moodle-mip>  
                                             
 branch :: ????                              |
|--------------------------------------------|

## Actions

**Legacy &gt; *New (shortname)***Tutor &gt; *Tutor (ucltutor)*Non-editing Tutor &gt; *Non-editing Tutor (uclnoneditingtutor)*Course administrator &gt; *Course administrator (uclcourseadmin)*

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
<td>full build of environment</td>
<td>SnV/IAS/DBA</td>
<td><p>SnV</p>
<p>Completed dashboard uploaded. Help from networks to provide GTM, LTM, and IP addresses</p>
<p>SnV to provide hostnames with locations.</p>
<p>Packages for Puppet;  See <a href="https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=81594576">Moodle Improvement Project (MIP)</a>    under &quot;Future state - puppet matrix&quot;</p>
<ul>
<li>RHEL6.x</li>
<li>PHP 7.2 - on App and Admin</li>
<li>ClamAV - on App and Admin</li>
<li>Redis - on NFS</li>
<li>LibreOffice + dependencies - <a href="https://download.documentfoundation.org/libreoffice/stable/6.0.3/rpm/x86_64/LibreOffice_6.0.3_Linux_x86-64_rpm.tar.gz.mirrorlist" class="uri">https://download.documentfoundation.org/libreoffice/stable/6.0.3/rpm/x86_64/LibreOffice_6.0.3_Linux_x86-64_rpm.tar.gz.mirrorlist</a> - on App and Admin</li>
<li>SSL Certificates</li>
<li>NewRelic - RDE to generate key and give to Stefan</li>
<li>Increase /tmp directory size to 10 GB</li>
</ul>
<p><br />
</p>
<p>Set up load balacing</p>
<p>Set up databases</p>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>DONE</p>
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
<li>Checkout new branch</li>
<li>Checkout code</li>
<li>upload code to all app servers</li>
<li>Add and configure config.php and config_local.php</li>
<li>clear any additional HTML</li>
</ul></td>
<td><br />
</td>
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
<td>set no email ever to true</td>
<td>EA</td>
<td>Option changed; Moodle sending out emails fine</td>
<td>EA</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>UCL_tools folder</td>
<td><br />
</td>
<td>Check installed OK. Check Redis page.</td>
<td>SM/NS</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>.htaccess for maintenance</td>
<td><br />
</td>
<td>Basic file on prod</td>
<td>RDE</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
<p><br />
</p>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Role review</td>
<td>EA</td>
<td>Export roles from PP</td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Category upload</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>Do on Monday 02 Jul 2018 </p>
</div></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Shell course import</td>
<td>NS</td>
<td><p>Note - Later. When we have template courses available or shell courses from DigiEd</p></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
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
<tr class="even">
<td><br />
</td>
<td>Export and import settings and config from moodle-34 uat using admin presets</td>
<td>NS</td>
<td><p>Go to site home, import settings from PP</p>
<p><br />
</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
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
<p>Cookie prefix - mipmdl</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>LDAP settings</td>
<td>NS/MB</td>
<td><div class="content-wrapper">
<p>Expand for details  </p>
LDAP server ldaps://ldap-auth-ad.ucl.ac.uk/ 3noutf-8250BINDyesCN=sa-ldap-moodle,OU=LDAPAccounts,OU=Accounts,OU=Administration,DC=ad,DC=ucl,DC=ac,DC=ukr8se?f// LOOKUP MS Active Directoryou=accounts,dc=ad,dc=ucl,dc=ac,dc=uk yesnouser attribute = cnObject class = userPASSWORDnono plaintextLDAP PASSWORDno10-no-no-USER CREATIONnoACCOUNT SYNCkeep internalnoNTLM SSOno-Attempt ntlm with all browsersNTLM-MAPPING First name -givenNameOn CreationNeverUnlocked if EmptySurname -snOn CreationNeverUnlocked if EmptyEmail -mailOn every loginNeverUnlocked if EmptyDepartment -departmentOn every loginNeverLockedUPI -EmployeeIDOn every loginNeverUnlocked if Empty
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
<p><br />
</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Permission on mimetex filter</td>
<td>NS</td>
<td><ul>
<li>Set permissions to 755 on all app servers</li>
</ul>
<p><code>chmod</code> <code>755 /data/apache/htdocs/moodle-mip/filter/tex/mimetex.linux</code></p></td>
<td>NS</td>
<td><div class="content-wrapper">
<p>DONE</p>
</div></td>
</tr>
<tr class="even">
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
Year level</p></td>
<td><p>RDE</p>
<p></p></td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Theme</td>
<td><br />
</td>
<td>Go to <a href="https://moodle-1819.ucl.ac.uk/theme/index.php" class="uri">https://moodle-1819.ucl.ac.uk/theme/index.php</a>  and select the adaptable theme.</td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Blocks</td>
<td>NS</td>
<td><ul>
<li>Library resources - check links</li>
<li>Library search - check links</li>
<li>Common Timetable -check links , tick 'open in new tab'</li>
</ul>
<p>Common timetable links correct on PP https://moodle-1819-pp.ucl.ac.uk/blocks/timetable/config_global_action.php?</p>
<p>Library block links are correct in New PP. Remove WISE link</p>
<p>Aspire reading list activity - configured in PP. https://moodle-1819-pp.ucl.ac.uk/admin/settings.php?section=modsettingaspirelist</p>
<p>The library will have to create new module codes in their system before it will work with them. Will need to retest.</p></td>
<td>MB</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
<p><br />
</p>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Language Customisations</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>Copy language pack from UAT on 26 Jun 2018 </p>
</div></td>
<td>DigiEd/RDE</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Language Pack</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>Install 28 Jun 2018 </p>
</div></td>
<td>MB</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
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
<tr class="odd">
<td><br />
</td>
<td>Adaptable settings</td>
<td>NS</td>
<td><ul>
<li>Use current config, copy from UAT<br />
<br />
</li>
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Google Analytics</td>
<td>NS</td>
<td>Double check GA tracking code</td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div></td>
</tr>
<tr class="odd">
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
<tr class="even">
<td><br />
</td>
<td>External tools</td>
<td>NS/MB</td>
<td><p>Preconfigured tools copied over</p>
<p>Not sure if we need new keys - need to test</p>
https://moodle-1819-pp.ucl.ac.uk/admin/settings.php?section=modsettinglti&amp;tab=</td>
<td>DigiEd/RDE</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div>
</div>
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
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div>
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
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="even">
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
<tr class="odd">
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
<tr class="even">
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
<tr class="odd">
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
<tr class="even">
<td><br />
</td>
<td>unoconv and libreoffice packages</td>
<td>NS/Stefan</td>
<td><ul>
<li>Install latest unoconv and libreoffice packages on following servers</li>
</ul>
<p><a href="http://moodle-admin-01-pp.ucl.ac.uk/">moodle-admin-01.ucl.ac.uk</a>, <a href="http://moodle-app-01-pp.ucl.ac.uk/">moodle-app-01.ucl.ac.uk</a>, <a href="http://moodle-app-02-pp.ucl.ac.uk/">moodle-app-02.ucl.ac.uk</a>, <a href="http://moodle-app-03-pp.ucl.ac.uk/">moodle-app-03.ucl.ac.uk</a>, <a href="http://moodle-app-04-pp.ucl.ac.uk/">moodle-app-04.ucl.ac.uk</a></p>
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
<p><br />
</p>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Monitoring script</td>
<td>NS/Stefan</td>
<td><p>Monitoring script to run on all 4 servers and admin server</p></td>
<td>Platform Integration/Stefan</td>
<td><div class="content-wrapper">
<p><br />
</p>
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>NOT STARTED</p>
</div>
<p><br />
</p>
</div>
</div>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Test the conversion script</td>
<td>EA</td>
<td><div class="content-wrapper">
<ul>
<li>Navigate to <em>Site administration &gt; Plugins &gt; Activity modules &gt; Assignment &gt; Feedback plugins &gt; Annotate PDF &gt; Test unoconv path</em>  You should see: &quot;The unoconv path appears to be properly configured.&quot; Download the converted pdf test file. (if the PDF fails to load ensure that www-data can write to its home directory: /var/www)</li>
<li><p>Create assignment &gt; uploading .docx, pptx, xlsx, pdf &gt; grade submissions &gt; able to annotate fine and save: Test course: <a href="https://moodle-1819.ucl.ac.uk/course/view.php?id=2" class="uri">https://moodle-1819.ucl.ac.uk/course/view.php?id=2</a></p>
<p><strong>**RISK**</strong></p>
<p>WHEN UNOCONV TRIES TO CONVERT A VERY COMPLEX LAYER OR LARGE DOCUMENT (I TESTED WITH 100+ PAGES DOCX), THIS FORCES THE UNOCONV PROCESS TO TIMEOUT.  FOR THE USER MOODLE WOULD COME TO A HALT AND UNABLE TO USE WITH A SESSION LOCK MESSAGE ON THE SCREEN.  UNTIL THE UNOCONV PID IS KILLED ON THE UNIX SERVER,  THE USER IS UNABLE TO USE MOODLE.<br />
MAYBE THIS SHOULD BE COMMUNICATED WITH THE MOODLE USERS THAT ANY VERY LARGE OR COMPLEX SUBMISSIONS SHOULD BE CONVERTED TO .PDF FIRST BEFORE UPLOADING.</p>
<p>EXAMPLE FILES, THE DOCX CRASHES THE UNOCONV PROCESSES WHEN GRADING;  CONVERTING THE SAME FILE TO PDF CAN BE GRADED FINE.  SO A SIMPLE 'SAVE AS PDF' CAN SAVE A WHOLE LOT OF TROUBLE.<br />
<br />
<a href="attachments/87923373/94766726.docx">Sample large.docx</a></p>
<p><a href="attachments/87923373/94766727.pdf">Sample large.pdf</a></p></li>
</ul>
</div></td>
<td>EA</td>
<td><div class="content-wrapper">
<p><br />
</p>
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><p>Ghost script</p>
<p>(Used for annotating pdf documents)</p></td>
<td>EA</td>
<td><ul>
<li><p>Test GS on servers<br />
</p>
<p>[ccspmdl@moodle-app-01 ~]$ gs --version<br />
8.70</p></li>
<li>Test GS from Moodle :: Site admin → plugins → Activity modules → Assignment → Feedback plugins → Annotate PDF &gt; <a href="https://moodle-1819-pp.ucl.ac.uk/mod/assign/feedback/editpdf/testgs.php">Test ghostscript path</a></li>
</ul></td>
<td>EA</td>
<td><div class="content-wrapper">
<p><br />
</p>
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td><p>Monitoring script cron to run on all servers</p>
<p>moodle app and admin servers</p></td>
<td><br />
</td>
<td><ul>
<li>Set up cron to run every 5 minutes for all app servers and admin server</li>
</ul>
<p># Puppet Name: monitor_unoconv</p>
<p>*/5 * * * * /home/ccspmdl/monitor_unoconv/monitor-unoconv.sh 2&gt;&amp;1 | /home/ccspmdl/monitor_unoconv/timestamp.sh &gt;&gt; /home/ccspmdl/monitor_unoconv/monitor-unoconv.log 2&gt;&amp;1 || true</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<p>NOT STARTED</p>
</div>
</div></td>
</tr>
<tr class="odd">
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
<tr class="even">
<td><br />
</td>
<td>Review site policy</td>
<td>Jason/MB</td>
<td><a href="https://docs.moodle.org/dev/GDPR_for_Administrators" class="uri">https://docs.moodle.org/dev/GDPR_for_Administrators</a></td>
<td>DigiEd</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
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
<tr class="even">
<td><br />
</td>
<td>Install redis on nfs server</td>
<td><br />
</td>
<td><div class="content-wrapper">
<p>Set up redis config in Moodle</p>
<p><a href="Moodle_v3.4_Redis_caching">Moodle_v3.4 Redis caching</a></p>
<br />

<p><br />
</p>
</div></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
<p><br />
</p>
</div>
</div>
<p><br />
</p>
</div>
</div></td>
</tr>
<tr class="odd">
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
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
<p><br />
</p>
</div>
</div>
<p><br />
</p>
</div>
</div></td>
</tr>
<tr class="even">
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
<tr class="odd">
<td><br />
</td>
<td>Investigate and test</td>
<td>MB/Sammy</td>
<td><br />
</td>
<td>LTA</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
<p><br />
</p>
</div>
</div></td>
</tr>
<tr class="even">
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
<tr class="odd">
<td><br />
</td>
<td>Moodle cron</td>
<td>NS</td>
<td><p>Ask DCS team to enable moodle-main cron to run every 5 minutes on moodle-admin-01-pp server</p>
<p># Puppet Name: moodle-main.sh</p>
<p>*/5 0-2,4-23 * * * /usr/local/bin/moodle-main.sh</p></td>
<td>DCS/Stefan</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
<p><br />
</p>
</div>
</div>
<p><br />
</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Monitoring</td>
<td>MB</td>
<td>Set up T-mux session on Prod admin box</td>
<td>RDE</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td>2.12</td>
<td><strong>Release to public</strong></td>
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
<td>Raise CR</td>
<td>RDE</td>
<td><div class="content-wrapper">
<p>ready for CAB on 27 Jun 2018 </p>
</div></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div>
</div></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Implement URL split for two moodles</td>
<td>IAS/RDE</td>
<td><p>New index page for moodle.ucl.ac.uk</p>
<p>In pace on PP</p>
<p>CR for installation</p></td>
<td><br />
</td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
<p><br />
</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Test thoroughly</td>
<td>Digi Ed</td>
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
<td>Release to public</td>
<td><br />
</td>
<td>remove any url restrictions</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>3</td>
<td><strong>Course migration</strong></td>
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
<td>Build tool</td>
<td><br />
</td>
<td><p><strong><br />
</strong></p>
<div class="table-wrap">
<table>
<thead>
<tr class="header">
<th><strong>Legacy</strong></th>
<th><strong><em>New (shortname)</em></strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Tutor</td>
<td><em>Tutor (ucltutor)</em></td>
</tr>
<tr class="even">
<td>Non-editing Tutor</td>
<td><em>Non-editing Tutor (uclnoneditingtutor)</em></td>
</tr>
<tr class="odd">
<td>Course administrator</td>
<td><em>Course administrator (uclcourseadmin)</em></td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="content-wrapper">
<div class="content-wrapper">
<div class="content-wrapper">
<p>DONE</p>
</div>
</div>
</div></td>
<td></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Execute migrations</td>
<td><br />
</td>
<td>Workshops, tutorial etc</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Sample large docx.docx](attachments/87923373/94766724.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Sample large docx.pdf](attachments/87923373/94766725.pdf) (application/pdf)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Sample large.docx](attachments/87923373/94766726.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Sample large.pdf](attachments/87923373/94766727.pdf) (application/pdf)

