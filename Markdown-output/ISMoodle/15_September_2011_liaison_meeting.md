# 15 September 2011 liaison meeting

# Agenda

-   [Agenda](#id-15September2011liaisonmeeting-Agenda)
-   [Minutes](#id-15September2011liaisonmeeting-Minutes)
    -   [Actions from last meeting:](#id-15September2011liaisonmeeting-Actionsfromlastmeeting:)
    -   [Managing Change Requests (Jo)](#id-15September2011liaisonmeeting-ManagingChangeRequests(Jo))
        -   [Pre-planned Maintenance Window for Moodle (Jo)](#id-15September2011liaisonmeeting-Pre-plannedMaintenanceWindowforMoodle(Jo))
    -   [Moodle](#id-15September2011liaisonmeeting-Moodle)
        -   [Issues](#id-15September2011liaisonmeeting-Issues)
        -   [Developments](#id-15September2011liaisonmeeting-Developments)
            -   [Turnitin (Chris/Steve)](#id-15September2011liaisonmeeting-Turnitin(Chris/Steve))
            -   [SITs Filter (Matt)](#id-15September2011liaisonmeeting-SITsFilter(Matt))
                -   [Moodle development priorities (carried over from last meeting)](#id-15September2011liaisonmeeting-Moodledevelopmentpriorities(carriedoverfromlastmeeting))
    -   [Moodle 2 (Chris)](#id-15September2011liaisonmeeting-Moodle2(Chris))
        -   [Issues](#id-15September2011liaisonmeeting-Issues.1)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.1)
    -   [Lecturecast (Jo)](#id-15September2011liaisonmeeting-Lecturecast(Jo))
        -   [Issues](#id-15September2011liaisonmeeting-Issues.2)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.2)
    -   [MyPortfolio (Adrian)](#id-15September2011liaisonmeeting-MyPortfolio(Adrian))
        -   [Issues](#id-15September2011liaisonmeeting-Issues.3)
            -   [Cron job is running.](#id-15September2011liaisonmeeting-Cronjobisrunning.)
            -   [04Jul2011 Office files downloaded as zip files](#id-15September2011liaisonmeeting-04Jul2011Officefilesdownloadedaszipfiles)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.3)
    -   [Opinio (Jo)](#id-15September2011liaisonmeeting-Opinio(Jo))
        -   [Issues](#id-15September2011liaisonmeeting-Issues.4)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.4)
    -   [Wiki](#id-15September2011liaisonmeeting-Wiki)
        -   [Issues](#id-15September2011liaisonmeeting-Issues.5)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.5)
    -   [Blogs (Chris)](#id-15September2011liaisonmeeting-Blogs(Chris))
        -   [Issues](#id-15September2011liaisonmeeting-Issues.6)
        -   [Developments](#id-15September2011liaisonmeeting-Developments.6)
    -   [AOB](#id-15September2011liaisonmeeting-AOB)

# Minutes

Attendees:Jessica gramp. Matt Jenner, Jo Matthews, Chris Gibson, Jason Norton, Adrian Birch, Rod Digges

Apologies:Fiona Strawbridge

## Actions from last meeting:

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />  Jo to develop a map of all the Moodle servers we will go through in our next meeting to see what we keep and what we leave (see <https://wiki.ucl.ac.uk/display/ISMoodle/Chris%27+Moodle+List>)

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />   Jess to advertise outage for between 8am and 9am and at risk until 12 noon on Thursday 18th August. Upgrade with security patches and also all staff to get read-only access.

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> SCP and change the setting for a Turnitin repository &gt; 'institutional repository' to 'No' - test on pp first.

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Advertise outage on 23rd August on Moodle news.

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Annora will test the SITS filter more on pp on Friday 11 August 2011.

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jo and Chris to get more familiar with the SITs filter before it goes live, so they can help recover if anything goes wrong.

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jo and Jess to test SITS filter on dev

 Chris to determine rollback plan - to go in SCP

 <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jo to check why the My Portfolio cron job is not running again.

## Managing Change Requests (Jo)

When changes are requested by ltss to a service, it is assumed that this has been agreed by the ltss team but this is not always the case. Could we agree a procedure for requesting changes, testing and sign off.I suggest that all requests get initiated by a change manager (who would take on this role Fiona?) It is then the change managers responsibility to assign someone in ltss to test and sign off the change when satisfied. Once signed off, a date will be agreed with ltss to implement the change. Is this a workable solution? I've created a change management document (see attached) and would like feedback.

\*\*\* I think this is a useful process, but it will probably be difficult for us to implement as a single person until we have the new structures in place. Currently service responsibility is distributed around a group of people on a best-effort basis. Until we have someone office-based with responsibility for this, we might have to divvy things up for now. Steve

It was agreed that Jo has scheduled a meeting on 22/09/11 to discuss this further as there was some useful feedback.

### Pre-planned Maintenance Window for Moodle (Jo)

It was agreed that users should be notified that there will be a planned outage every Tuesday from 8am. Users are confused by the 'at risk' period and it was decided that users would prefer to just the time that it would be available again. So rather than outage til 8am at risk til 10am, the message would just notify that the outage would be until 10am. Jess will experiment with a permanent message on the Moodle Home page.

## Moodle

### Issues

The course format: Weekly: No Tables/ CSS breaks the Moodle page layout with the left hand boxes overlapping the central column's content. Can we remove this option from the list? - Jess & Annora

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Chris will investigate removing the option for this course format.

### Developments

#### Turnitin (Chris/Steve)

No issues to report following Turnitin upgrade, everything seems to be running smoothly (but neither has it been tested in high traffic times). Steve

#### SITs Filter (Matt)

Chris to implement logging. IMS enrolments will be turned on on 22/09/11 subject to testing.The option to create courses will be turned off initially. Chris will identify which tables are affected during the ims import.

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
<td><p>done - Moodle is now using InnoDb on VM.<br />
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
<td><p>Moodle 2</p></td>
<td><p><em>Apr-12</em></p></td>
<td><p>1<br />
</p></td>
<td><p>low (for pete)<br />
</p></td>
<td><p> </p></td>
<td><p> </p></td>
<td><p><img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo has the prepared the adverts but has been advised by Fiona to wait until a project manager is in place<br />
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
<td><p>Database is virtualised. Planning the virtualisation of the web servers<br />
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
<td><p>Jess - Most old courses deleted. Users contacted for non-test courses. 175 old courses now remain (15 Sept) from the 798 that existed on 18th August.<br />
</p></td>
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
<td><p>done<br />
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
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> All those with Delegate role has been moved to Participant without duplicates<br />
<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> All those with Administrator role (except for site admins) has been moved to Course Admin without duplicates<br />
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

## Moodle 2 (Chris)

Shib-dev-idp is broken so it is no longer possible to log in to moodle 2. Jo has notified Andy.

### Issues

wasdev-b struggles to hold a complete copy of the live data without filling up.

### Developments

Andy and I have tried serious housekeeping on wasdev-b. Do we still need a myasm and a innodb moodle ?

When Vivek returns we need to determine is we need 19GB of mysql backups on a dev server. It was agreed that databases on this server didn't need backing up. Chris will notify Vivek.

We could use moodlevm-nfs for now as it's not being used.Chris will ask Andy if we can use moodlevm-nfs for moodle 2.

## Lecturecast (Jo)

### Issues

There is still one bug outstanding - Users who are assigned the role of Academic Adminstrator in echo360 are unable to login to view content. I'm working with echo360 to resolve it. Case 19010 logged on <https://na6.salesforce.com/> . I've been told that this is a feature but a rel 4 update 2 will have a patch for this. The only work around is to add the scheduler role to those users who have been assigned the academic staff role.

### Developments

Script to import data from cmis in to mysql database needs to be run manually at the moment. It can be run in the browser by going to <http://wwwa-c.ucl.ac.uk/isd/echoscheduling/importFromCmis.php>. It takes about 20 minutes to run.

Implemented script to display events for a department at <http://wwwa-c.ucl.ac.uk/isd/echoscheduling/eventsbydept.php> but the creation of schedules isn't working. I've passed this over to Amit in order to get this implemented more quickly.

A trac project has been setup to manage bug fixes and enhancements to the echo360/cmis integration application at <https://svn.ucl.ac.uk/projects/isd/lecturecast/report/1>. Rod and Jason have write access to this to create tickets.

## MyPortfolio (Adrian)

### Issues

#### Cron job **is running**.

At the last meeting I suggested the following:

1.  running the cron as ccspwww instead of ccspmah
2.  using php instead of curl to run the cron.
3.  Restarting Apache

Andy has now done these.

#### 04Jul2011 Office files downloaded as zip files

-   see <https://wiki.ucl.ac.uk/display/isdmyportf/04Jul2011+Office+files+downloaded+as+zip+files> for a partial solution.

### Developments

## Opinio (Jo)

### Issues

-   Tomcat need restarting again on 02/09/11 due to the usual heap space problem, 2 weeks since the last time. both times it was on a friday. I notice that every friday the trash cleaner runs which removeds deleted surveys this might be what's consuming memory. I am trying to progress getting the new vm setup asap.
-   We currently have a 500 user licence and 469 users have accounts on Opinio. Could we remove those users who have not logged in 3 years?
-   There are 7170 surveys. Deleting old surveys might improve performance

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> AB adds - I have upped the error level reporting for th DEV instance. Will do same for LIVE when migration to new VM server complete.

RD plans a survey of users to give an indication both of account usage for the coming academic year and type of use - the results of this will be a good indicator.

simple survey at:   <https://opinio.ucl.ac.uk/s?s=15110>

We could remove users with no log-ons for 3 years ... what do we do with orphan surveys - can we find out where they are?

### Developments

Chris has written a number of queries for Opinio reports and Jo requested that these be put on the ucl\_tools page. LTSS advised that they would prefer ucl\_tools to just be used for moodle queries. Chris will find a better location for the Opinio scripts.

## Wiki

### Issues

Now that Chris Dillon has left ISD I would like to suggest changing the UCL Wiki Admin account password so it is only known by those who need to administer it. E.g. ATS, LTSS & Adrian/Austin/Andy (forgot their new name - Web Systems?).

### Developments

Can we make the LaTeX plugin live? Andy, myself and the requester have had a look at it and it seems to work fine with no issues that cause problems with other parts of the wiki. There are 2 relevant open issues that affect the rendering of LaTeX only - so there is no reported risk of this plugin affecting other parts of the wiki. See: <https://studio.plugins.atlassian.com/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+CLATEX+AND+resolution+%3D+Unresolved+AND+priority+%3D+Major+ORDER+BY+key+DESC&mode=hide>

Email from the requester is here:

---

Hi Jess,

I've had a quick play with some basic and more advanced LaTeX commands and the plugin has performed superbly so far.  As far as I'm concerned it's in a good shape to make the move to the main server when you guys are ready.

Cheers,
-Martin

This has been scheduled for the end of September but need to confirm with Andy

## Blogs (Chris)

### Issues

Waiting for sign off for making slideshare and WP upgrade live.

### Developments

There may be some work to allow configuration of the tinyMCE wysiwyg.

## AOB

It was agreed that these meetings would be scheduled for 1.5 hours during the Moodle 2 project.

Chris will change the moodle admin password.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Release Strategy.docx](attachments/18391333/18547901.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle\_uat\_form.doc](attachments/18391333/18547902.doc) (application/msword)

