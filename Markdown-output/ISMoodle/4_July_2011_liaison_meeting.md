# 4 July 2011 liaison meeting

# Agenda

-   [Agenda](#id-4July2011liaisonmeeting-Agenda)
-   [Minutes](#id-4July2011liaisonmeeting-Minutes)
    -   [Moodle](#id-4July2011liaisonmeeting-Moodle)
        -   [Recruitment](#id-4July2011liaisonmeeting-Recruitment)
        -   [Issues](#id-4July2011liaisonmeeting-Issues)
        -   [Developments](#id-4July2011liaisonmeeting-Developments)
        -   [Moodle development priorities](#id-4July2011liaisonmeeting-Moodledevelopmentpriorities)
    -   [Lecturecast](#id-4July2011liaisonmeeting-Lecturecast)
        -   [Issues](#id-4July2011liaisonmeeting-Issues.1)
        -   [Developments](#id-4July2011liaisonmeeting-Developments.1)
    -   [MyPortfolio](#id-4July2011liaisonmeeting-MyPortfolio)
        -   [Issues](#id-4July2011liaisonmeeting-Issues.2)
        -   [Developments](#id-4July2011liaisonmeeting-Developments.2)
        -   [Upgrade](#id-4July2011liaisonmeeting-Upgrade)
    -   [Opinio](#id-4July2011liaisonmeeting-Opinio)
        -   [Issues](#id-4July2011liaisonmeeting-Issues.3)
        -   [Developments](#id-4July2011liaisonmeeting-Developments.3)
    -   [Social Networks](#id-4July2011liaisonmeeting-SocialNetworks)
    -   [CampusM](#id-4July2011liaisonmeeting-CampusM)
    -   [Archive](#id-4July2011liaisonmeeting-Archive)
    -   [Sits filter](#id-4July2011liaisonmeeting-Sitsfilter)

# Minutes

Attendees:Adrian Birch, Matt Jenner, Jo matthews, Jason Norton, Pete Roberts, Fiona Strawbridge
Appologies:

Actions from Last Meeting (02/06/11)

-   Pete to advertise outage on Moodle Home page (done)
-   Jo to advise cent-ops of moodle and mahara outage (done)
-   Jo to ask Steve to test Turnitin (done)
-   Pete to upgrade archive (done)
-   Annora to find out how we suggest improvements to  CampusM
-   Pete to confirm whether sits filter and staff import script are unicode compliant
-   Annora to arrange testing of sits filter with Pete
-   Adrian to arrange for new virtual host to be set up for Opinio-dev.
-   Adrian to create tickets for recent opinion problems with Object planet (done)
-   Rod and Annora to specify requirements for removing users in Opinio
-   Jess to ask Steve to send list of issues to turnitin
-   Pete to implement Jess’ fix for moodle template in v1.9.12
-   Jo to check whether leavers are removed from ldap (done)

## [Moodle](Moodle)

##### Recruitment

Chris Gibson has agreed to start on 11/07/11 and will be shadowing Pete. Jo suggests he spend sometime in the LTSS office and attends some moodle courses and meetings with users as part of his induction. It was agreed that he would spend the15/07/11 in LTSS with Matt and then one a week thereafter.

##### Issues

none

##### Developments

Jo to arrange meeting with Fiona to discuss ats resources for upcoming projects.

##### Moodle development priorities

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
<td><p>Hardware is available and work is scheduled for this month<br />
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
<td><p>Pete to check and remind Jess what she needs to send him for roles and permissions</p></td>
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

## Lecturecast

##### Issues

##### Developments

Adobe is being replaced by Wowza. Adrian to manage the installation.

integration with room bookings is being taken over by Angela Williams team as they have written a web service to get room booking data. The process of how to request a lecturecast is being reviewed and a Angela is arranging a meeting with Alec Gray.

## MyPortfolio

##### Issues

Docx files are not getting downloaded in IE8. It has been identified as a browser issue. The work around is to use firefox. Adrian will continue to investigate and check that this is not a problem in moodle.

##### Developments

Can ATS look into the 'Import' plug-in so that students can import views as well as export them. Not urgent but would be desirable if not too difficult to do. See:

<https://wiki.mahara.org/index.php?title=Developer_Area/Import%2F%2FExport/LEAP_Import>

##### Upgrade

Matt and Clive to test version 1.4 on dev box with the intention of upgrading on live on 19/07/11.

## Opinio

##### Issues

None

##### Developments

A new account has been created to access the opinio database on moodledb-c called opinio\_readonly which only has read access to the database. This is to enable Rod to run adhoc queries.

Opinio will be upgraded from v6.3.3 to 6.4.4 on 12/07/11. (scp5150) by Adrian Birch. The dev version has already been upgraded and tested by Rod.

## Social Networks

ATS have been asked to install 3 different socialnetworking applications on the dev server (wwwa-f) by Jim Alexander. This is for evaluation purposes. Jim has specified that SocialEngine is the prefered application and has requested an estimate of how much time it would take to integrate it with Shibboleth.  I will work on estimating the resources required when I return from holiday. All the information about what has been discussed and what has been done so far is at <https://wiki.ucl.ac.uk/display/ISAppsDev/Social+Networking>

## CampusM

CampusM is still not working. Pete has given Ombiel admin access to the version of moodle that it is installed on but they really require ftp access to look at the code. Pete will request an account to be created just for the purpose. If CampusM does not support Shibboleth authentication, Fiona will ask Simon Farrell if Moodle can be exclude from the list of application to be shibbolised until version 2 next year, by which time we will be using the the mobile pluggin that comes with moodle2.

## Archive

this has been moved on to the new hardware. 09/10 will be available today. 10/11 will be hidden from users until Matt has finished testing and tweaking. It will go live 10/07/11. Both instances use innodb databases. The cron jobs don't run on these instances. Jason will test lecturecast on the archive instances.

## Sits filter

Pete to arrange a meeting with LTSS and Portico team before he goes to discuss moodle/portico integration. Pete to arrange testing with Matt and Annora.
