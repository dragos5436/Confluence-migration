# 12 May 2011 liaison meeting

To kick things off, this agenda is designed on the Moodle Development Plan. all other business can go in too but this at least starts us off with noting how far through we are with developments between ATS and LTSS.

## [Moodle](Moodle)

##### Issues

-   After this meeting, Pete will be at work for approximately 48 days, barring the lurg etc.

<!-- -->

-   1.9.12 - installed on Moodle-pp and an initial test plan is here - <https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+v1.9.12+upgrade> - update - nothing here is 'critical' (but claim performance fixes etc)

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> 1.9.12 test by LTSS and amend the wiki page above. Upgrade in May - Thu 26th? Tuesday 31st?

-   turnitin - what are we doing?
    <img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> compile a list of issues and requests for nlearning and send them over within the next week.

FYI - This is Moodle B yesterday - [see attached s/sheet](attachments/17765600/18023318.ods). 0 - basically Turnitin needs fixing and will slow things down - but Moodle seems to be coping.

![](attachments/17765600/18023317.png)

## Moodle development priorities

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Development</strong></p></td>
<td><p><strong>Review/finish date</strong></p></td>
<td><p><strong>Est. days</strong></p></td>
<td><p><strong>Priority (Low/Med/High)</strong><br />
</p></td>
<td><p><strong>Rank</strong><br />
</p></td>
<td><p><strong>Lead person</strong></p></td>
<td><p><strong>Status</strong>  / <strong>notes</strong><br />
</p></td>
</tr>
<tr class="even">
<td><p>Unicode compliance<br />
</p></td>
<td><p><em>Jul</em><br />
</p></td>
<td><p>4<br />
</p></td>
<td><p>high<br />
</p></td>
<td><p>1<br />
</p></td>
<td><p> </p></td>
<td><p>things like sitsfilter and any other scripts that create users in Moodle<br />
</p></td>
</tr>
<tr class="odd">
<td><p>1.9.12 upgrade<br />
</p></td>
<td><p><em>Jul</em><br />
</p></td>
<td><p>.5<br />
</p></td>
<td><p>high<br />
</p></td>
<td><p>2<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Database work<br />
</p></td>
<td><p><em>Jul</em><br />
</p></td>
<td><p>4<br />
</p></td>
<td><p>high<br />
</p></td>
<td><p> </p></td>
<td><p>Pete/Vivek<br />
</p></td>
<td><p>innodb and bigints - both needed for Moodle 2<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Moodle and Portico integration</p></td>
<td><p><em>Jul-11</em></p></td>
<td><p>10<br />
</p></td>
<td><p>high!</p></td>
<td><p>1<br />
</p></td>
<td><p> </p></td>
<td><p>Pete installing on Moodle pp for testing<br />
</p></td>
</tr>
<tr class="even">
<td><p>Moodle 2 </p></td>
<td><p><em>Apr-12</em></p></td>
<td><p>4<br />
</p></td>
<td><p>low (for pete)<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Hosting review/changes &amp; virtualisation</p></td>
<td><p><em>on-going</em></p></td>
<td><p>10<br />
</p></td>
<td><p>high</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>awaiting hardware<br />
</p></td>
</tr>
<tr class="even">
<td><p>Housekeeping</p></td>
<td><p><em>on-demand</em></p></td>
<td><p>1<br />
</p></td>
<td><p>medium/low<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Archive</p></td>
<td><p><em>on-going</em></p></td>
<td><p>3<br />
</p></td>
<td><p>high<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>we need the hardware asap<br />
</p></td>
</tr>
<tr class="even">
<td><p>Single Sign On (Shibboleth)</p></td>
<td><p><em>Apr-11</em></p></td>
<td><p>4</p></td>
<td><p>medium<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>started this<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Bulk enrolment module (plug-in)</p></td>
<td><p><em>May-11</em></p></td>
<td><p>?<br />
</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>do we need be concerned about unicode? <br />
</p></td>
</tr>
<tr class="even">
<td><p>CampusM (mobile Moodle on UCL Go!)</p></td>
<td><p><em>Aug-11</em></p></td>
<td><p>1<br />
</p></td>
<td><p>low<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Shibboleth may complicate this - not sure - ombiel are setting us up some sort of test thing <br />
</p></td>
</tr>
<tr class="odd">
<td><p>Moodle-only accounts / Public Moodle</p></td>
<td><p><em>Aug-11</em></p></td>
<td><p>---</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Roles and permissions</p></td>
<td><p><em>Mar-11</em></p></td>
<td><p>.5<br />
</p></td>
<td><p>medium<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="odd">
<td><p>Theme and front page design</p></td>
<td><p><em>Aug-11</em></p></td>
<td><p>0</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Moodle / MyPortfolio integration</p></td>
<td><p><em>on-going</em></p></td>
<td><p> </p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>does Shibboleth make this easier?<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Attendance module (plug-in)</p></td>
<td><p><em>on-going</em></p></td>
<td><p>0<br />
</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p> </p></td>
</tr>
<tr class="even">
<td><p>Maths Tools STACK module (plug-in)</p></td>
<td><p><em>Jun-11</em></p></td>
<td><p>0</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>on hold while it gets rewritten with OU help<br />
</p></td>
</tr>
<tr class="odd">
<td><p>LectureCast (Echo360) module (plug-in)</p></td>
<td><p><em>Jun-1</em></p></td>
<td><p>0</p></td>
<td><p>on hold<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>on hold until new stable echo release<br />
</p></td>
</tr>
</tbody>
</table>

#### Lecturecast

##### Issues

##### Developments

#### MyPortfolio

##### Issues

-   1.3.4 released due to security issues - Adrian to look into this

##### Developments

-   Shibboleth plug-in for authentication - Adrian keen to get this rolled out, but should we wait until the start of next term?

#### Opinio

##### Issues

##### Developments

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screen shot 2011-05-12 at 15.49.40.png](attachments/17765600/18023317.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [bliplet.ods](attachments/17765600/18023318.ods) (application/vnd.oasis.opendocument.spreadsheet)

