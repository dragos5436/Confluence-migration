# 11 August 2011 liaison meeting

# Agenda

-   [Agenda](#id-11August2011liaisonmeeting-Agenda)
-   [Minutes](#id-11August2011liaisonmeeting-Minutes)
    -   [Moodle](#id-11August2011liaisonmeeting-Moodle)
        -   [Issues](#id-11August2011liaisonmeeting-Issues)
        -   [Moodle-Archive](#id-11August2011liaisonmeeting-Moodle-Archive)
        -   [Developments](#id-11August2011liaisonmeeting-Developments)
            -   [Turnitin](#id-11August2011liaisonmeeting-Turnitin)
                -   [Testing](#id-11August2011liaisonmeeting-Testing)
                -   [Hacks proposed](#id-11August2011liaisonmeeting-Hacksproposed)
                -   [UI Administrator setting](#id-11August2011liaisonmeeting-UIAdministratorsetting)
                -   [Go live date](#id-11August2011liaisonmeeting-Golivedate)
            -   [SITs Filter](#id-11August2011liaisonmeeting-SITsFilter)
                -   [Testing](#id-11August2011liaisonmeeting-Testing.1)
                -   [Roll back (if things go wrong)](#id-11August2011liaisonmeeting-Rollback(ifthingsgowrong))
                -   [Go Live Date](#id-11August2011liaisonmeeting-GoLiveDate)
                -   [Moodle development priorities (carried over from last meeting)](#id-11August2011liaisonmeeting-Moodledevelopmentpriorities(carriedoverfromlastmeeting))
    -   [Lecturecast (Jo)](#id-11August2011liaisonmeeting-Lecturecast(Jo))
        -   [Issues](#id-11August2011liaisonmeeting-Issues.1)
        -   [Developments](#id-11August2011liaisonmeeting-Developments.1)
            -   [Web interface to display events for departments](#id-11August2011liaisonmeeting-Webinterfacetodisplayeventsfordepartments)
            -   [Automatic creation of schedules from CMIS data](#id-11August2011liaisonmeeting-AutomaticcreationofschedulesfromCMISdata)
    -   [MyPortfolio](#id-11August2011liaisonmeeting-MyPortfolio)
        -   [Issues](#id-11August2011liaisonmeeting-Issues.2)
        -   [Developments](#id-11August2011liaisonmeeting-Developments.2)
    -   [Opinio](#id-11August2011liaisonmeeting-Opinio)
        -   [Issues (Jo)](#id-11August2011liaisonmeeting-Issues(Jo))
        -   [Developments](#id-11August2011liaisonmeeting-Developments.3)

# Minutes

Attendees: Jessica gramp. Matt Jenner, Jo Matthews, Chris Gibson, Annora Eyt-Dessus
Appologies: -

## [Moodle](Moodle)

### Issues

Reports of Moodle being slow - datasync from wasdev-a could have affected things last Thursday. Other reports can't be confirmed by others who can access it fine at the same time.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to develop a map of all the Moodle servers we will go through in our next meeting to see what we keep and what we leave

### Moodle-Archive

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jess to advertise outage for between 8am and 9am and at risk until 12 noon on Thursday 18th August. Upgrade with security patches and also all staff to get read-only access.

### Developments

#### **Turnitin**

**pre-prod uses same DB server but own DB**

**dev uses INODB server**

##### Testing

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Steve has tested on v1913i.moodle-pp

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jess to test Turnitin plugin n v1913.moodle-pp

##### Hacks proposed

Change two default options in the Moodle form upon creation of a TII assignment:

1. Student Originality Reports = Yes (currently ‘No’)

2. Report generation speed = ‘Generate reports immediately, reports can be overwritten until due date’ (currently ‘Generate reports immediately, first report is final’)

##### UI Administrator setting

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jess to SCP and change the setting for a Turnitin repository &gt; 'institutional repository' to 'No' - test on pp first.

##### Go live date

Tuesday 30th August - 5 minute outage between 8-9am and at risk until 10am.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jess to advertise outage on 23rd August on Moodle news.

#### SITs Filter

**Is it ready to go live?** Not yet.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Annora will test the SITS filter more on pp on Friday 11 August 2011.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo and Chris to get more familiar with the SITs filter before it goes live, so they can help recover if anything goes wrong.

##### Testing

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo and Jess to test on dev

##### Roll back (if things go wrong)

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Chris to determine rollback plan - to go in SCP

##### Go Live Date

Tusday 23rd - no outage required

##### Moodle development priorities (carried over from last meeting)

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
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Portico need to produce a file for testing, moving to Chris.<br />
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
<td><p>done</p></td>
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
<td><p>innodb and bigints - both needed for Moodle 2 but the archive db's are innodb<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Chat with Vivek about comparing Moodle db with Innodb &amp; Postgres<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo's plan for virtualisation will give us a date for converting to Innodb<br />
</p></td>
</tr>
<tr class="odd">
<td><p>Moodle and Portico integration</p></td>
<td><p><em>Jul-11</em></p></td>
<td><p>5<br />
</p></td>
<td><p>high!</p></td>
<td><p>1<br />
</p></td>
<td><p> </p></td>
<td><p>Pete addressing issues from testing.<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> going live after UAT<br />
</p></td>
</tr>
<tr class="even">
<td><p>Moodle 2 </p></td>
<td><p><em>Apr-12</em></p></td>
<td><p>1<br />
</p></td>
<td><p>low (for pete)<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to advertise soon</p></td>
</tr>
<tr class="odd">
<td><p>Hosting review/changes &amp; virtualisation</p></td>
<td><p><em>on-going</em></p></td>
<td><p>10<br />
</p></td>
<td><p>high</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>Hardware is available and work is scheduled for this month<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> virtualistion stuff<br />
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
<td><p>.5 <br />
</p></td>
<td><p>high<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p>09/10 going live today (4th July) with 10/11 available to LTSS / ATS for tweakery<br />
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
<td><p>on hold<br />
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
<td><p>Shibboleth will complicate this. Doesn't work at present. Pete to request an ftp account for Ombiel so that they can look at the code<br />
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
<td><p>Pete to check and remind Jess what she needs to send him for roles and permissions<br />
Anyone assigned to delegate role needs to be changed to be a participant instead and then we can delete the role. No one but admins can assign delegates anymore.<br />
Someone has been assigning users at Administrator level rather than Course Administrator level. I cleaned these all up a few months ago and there are around 400 assigned again. What to do about it?<br />
<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> All those with Delegate role has been moved to Participant without duplicates<br />
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> All those with Administrator role (except for site admins) has been moved to Course Admin without duplicates<br />
</p></td>
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

## Lecturecast (Jo)

### Issues

The following issues are outstanding and have been reported to echo360:

1. Inability to reprocess content (Urgently needs fixing) - Echo engineering team have diverted resources from other work to address this issue as quickly ass possible.

2. LDAP content authentication not working for some users - This seems to be a problem for users who have been created on the system as Academic staff. Echo are working on it.

3. Old content not compatible with iOS devices - Content created prior to the 4.0 upgrade must be reprocessed in order to be iOS compatible, since there is a m4v file created during 4.0 processing which is required for iOS streaming. In turn, the master media files must be present in order to reprocess presentations. Since the master media files are being deleted on your ESS after 40 days, however, it won't be possible to reprocess content older than 40 days unless you have also been backing-up the master media files. However we can't reprocess until 1 is fixed.

### Developments

#### Web interface to display events for departments

I have asked for the oracle view to be modified to display events for 2011/2012. Also making some small modifications to the code. Documentation can be found at <https://wiki.ucl.ac.uk/display/ISPodcast/web+form>.

#### Automatic creation of schedules from CMIS data

Waiting for Anthony to return from holiday to discuss who will resource this. It seems we have come full circle. If we use the web service it will need to be done by Angela Williams team. This is the best a approach. If it can't be resourced by Angela's team then it could be done by ATS but would result in incompete data.

## MyPortfolio

### Issues

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to check why the cron job is not running again.

### Developments

MyPortfolio will be moved to a new virtual machine sometime in the week beginning 5th - 12th September. Can we agree a date that's good for Opinio too?

## Opinio

### Issues (Jo)

Object Planet requested the opinio log file and some other details after a restart of Tomcat. I sent these details to them  on Wednesday.

### Developments

Opinio will be moved to a new virtual machine sometime in the week beginning 5th - 12th September. Can we agree a date?

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to check invitations lists to find best date for upgrade week starting 5th September.

Try for Tuesday 6th Sept. Might be a whole day outage.
