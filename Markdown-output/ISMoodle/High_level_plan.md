# High level plan

<table>
<thead>
<tr class="header">
<th>What</th>
<th>Number</th>
<th>Who</th>
<th>When</th>
<th>Details</th>
<th>Dependencies</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Hardware build</strong></td>
<td>1</td>
<td><br />
</td>
<td><br />
</td>
<td>Plan to mirror current set up</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Trial a build of ONE app server first</td>
<td><br />
</td>
<td>SnV/IAS</td>
<td><br />
</td>
<td>Capture min requirements, plus details of current setup.</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td> DEV/UAT</td>
<td><br />
</td>
<td>SnV/IAS</td>
<td><br />
</td>
<td>DEV - copy of current DEV server, needs PHP 7 - make sure all PHP additions are in place. new apache, uses current DEV database - may need extra space.</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>PP</td>
<td><br />
</td>
<td>SnV/IAS/DBA</td>
<td><br />
</td>
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
</ul>
<p><br />
</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>full build of environment</td>
<td><br />
</td>
<td>SnV/IAS/DBA</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Plan and implement URL split for two moodles</td>
<td><br />
</td>
<td>IAS/RDE</td>
<td><br />
</td>
<td><p>New index page for moodle.ucl.ac.uk</p>
<p>Instructions on where to find your course?</p>
<p>Plan how this resolves itself once 17/18 moodle is snapshotted</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>Moodle installation</strong></td>
<td>2</td>
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
<td><strong>General instance prep</strong></td>
<td>2.1</td>
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
<td>Bare upload of 3.4 code</td>
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
<td>Add extra profile fields</td>
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
<td>Configure LDAP settings</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Think about pulling in extra fields</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Add in any manual accounts that are needed - test etc.</td>
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
<td>Role review</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Revise roles that are needed. Make sure they are based on archetypes. Esp Myfeedback roles.</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Export and import admin config from 17/18</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Make sure admin config tool is installed on on 17/18</p>
<p>Install tool on 18/19</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Add in and test plugins</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Identify and test plugins that dont support 3.4.</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><br />
</td>
<td><br />
</td>
<td>NS</td>
<td><br />
</td>
<td><p>UCL plugins</p>
<ul>
<li>block_course_visibility</li>
<li>block_library_resources</li>
<li>block_library_search</li>
<li>block_lecturecast_connector</li>
<li>block_portico_enrolments – BIG and for Tim</li>
<li>block_timetable</li>
<li>gradereport_myfeedbacklink -</li>
<li>local_repositoryfileupload</li>
<li>local_testaccount_automation</li>
<li>local_ucl_tools</li>
<li>local_userprofilefields_import      </li>
</ul></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Add in and test themes</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Start testing early</p>
<p>Make decision on which theme to go with. - Adaptable</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Category upload</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Use data from SITS.</p>
<p><a href="https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=82450103">MOD/MAV Mapping</a></p>
<p>2 level heirarchy - Faculty and Dept.</p>
<p>Use dept prefix as Moodle category idnumber</p>
<p><br />
</p></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Bulk course import</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Do a bulk import of courses from portico.</p>
<p>Test whether admin/tutor access can be allocated.</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Google Analytics</td>
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
<td>Session cookie prefix</td>
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
<td><strong>Other integrations</strong></td>
<td>2.2</td>
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
<td>CMIS</td>
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
<td>LIbrary</td>
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
<td>Timetable</td>
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
<td>Lecturecast</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Can ALP talk to two. Oracle Instant Client CR00001545</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>External tool (LTI)</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>copy over configuration <a href="https://moodle.ucl.ac.uk/mod/lti/toolconfigure.php" class="uri">https://moodle.ucl.ac.uk/mod/lti/toolconfigure.php</a></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>Portico block</strong></td>
<td>2.3</td>
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
<td>rewrite and test</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Basic functionality with new mod/mav codes</p>
<p>Rewrite to moodle code conventions</p>
<p>User interface improvements</p>
<p>Investigate 'suspend' status</p></td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>PDF conversion</strong></td>
<td>2.4</td>
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
<td>Investigate and test</td>
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
<td><strong>GDPR</strong></td>
<td>2.5</td>
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
<td>Need to 'back-port' from M3.5</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Plugin release scheduled for March 2018</td>
<td><br />
</td>
</tr>
<tr class="even">
<td>Review site policy</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><a href="https://docs.moodle.org/dev/GDPR_for_Administrators" class="uri">https://docs.moodle.org/dev/GDPR_for_Administrators</a></td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>redis cache</strong></td>
<td>2.8</td>
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
<td>Set up and tested with PHP7</td>
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
<td><strong>Clam AV</strong></td>
<td>2.6</td>
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
<td>Investigate and test</td>
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
<td><strong>Release to public</strong></td>
<td>2.7</td>
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
<td>Test thoroughly</td>
<td><br />
</td>
<td>Digi Ed</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td>Release to public</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>remove any url restrictions</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><strong>Course migration</strong></td>
<td>3</td>
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
<td>Plan method of migration</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td><p>Speak to Paul Thompson. Find old IoE instructions.</p>
<p>Talk other institutions that do course migrations.</p>
<p>Make sure &quot;legacy files&quot; arent migrated</p>
<p>Take list of course codes and enrolled tutors from bullk import.</p></td>
<td>Needs blank course creation</td>
</tr>
<tr class="even">
<td>Execute migration</td>
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
<td>Workshops, tutorial etc</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><strong>Decomission/Archiving of old moodle</strong></td>
<td>4</td>
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
<td><p>Keep hardware in place, but;</p>
<ul>
<li>Reduce to one app server, with reduced ram and cpu.</li>
<li>Reduce to one DB server with reduced ram and cpu.</li>
<li>Recover disk space from NFS</li>
</ul>
<p>Create link from snapshot address</p>
<p>Make read-only - think about date when this happens (summer 19) - comms</p>
<p>Undo URL changes</p></td>
<td><br />
</td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Improvement Project - pp env.xlsx](attachments/85066380/91031892.xlsx) (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

