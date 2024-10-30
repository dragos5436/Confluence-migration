# 02 June 2011 liaison meeting

# Agenda

-   [Agenda](#id-02June2011liaisonmeeting-Agenda)
-   [Minutes](#id-02June2011liaisonmeeting-Minutes)
    -   [Moodle](#id-02June2011liaisonmeeting-Moodle)
        -   [Issues](#id-02June2011liaisonmeeting-Issues)
        -   [Developments](#id-02June2011liaisonmeeting-Developments)
            -   [Upgrade to 1.9.12 (Pete)](#id-02June2011liaisonmeeting-Upgradeto1.9.12(Pete))
            -   [Virtualisation(Jo)](#id-02June2011liaisonmeeting-Virtualisation(Jo))
            -   [Archive (Pete)](#id-02June2011liaisonmeeting-Archive(Pete))
            -   [CampusM (Pete)](#id-02June2011liaisonmeeting-CampusM(Pete))
        -   [Moodle development priorities](#id-02June2011liaisonmeeting-Moodledevelopmentpriorities)
    -   [Lecturecast](#id-02June2011liaisonmeeting-Lecturecast)
        -   [Issues (Jo/Adrian)](#id-02June2011liaisonmeeting-Issues(Jo/Adrian))
        -   [Developments](#id-02June2011liaisonmeeting-Developments.1)
    -   [MyPortfolio](#id-02June2011liaisonmeeting-MyPortfolio)
        -   [Issues (Adrian)](#id-02June2011liaisonmeeting-Issues(Adrian))
        -   [Developments(Adrian)](#id-02June2011liaisonmeeting-Developments(Adrian))
    -   [Opinio](#id-02June2011liaisonmeeting-Opinio)
        -   [Issues(Adrian)](#id-02June2011liaisonmeeting-Issues(Adrian).1)
        -   [Developments(Adrian)](#id-02June2011liaisonmeeting-Developments(Adrian).1)

# Minutes

Attendees:Adrian Birch, Annora Eyt'Dessus, Rod Digges, Jess Gramp, Jo Matthews, Pete Roberts
Apologies:Fiona Strawbridge, Matt Jenner

## [Moodle](Moodle)

##### Issues

Not aware of any performance problems other than the database server issue. Memory fragmentation problem.

##### Developments

###### Upgrade to 1.9.12 (Pete)

This will be done June 9th. Once out of the way we can then concentrate on the sits filter / sort the archive and schedule in outages for various database changes and maintenance. Everything on the test list (<https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+v1.9.12+Testing>) except Turnitin has been tested. Jess expressed a concern that the list of things to test was not as extensive as previous upgrades. PR confirmed that this was all that needed testing.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to ask Steve to test turnitin.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Pete to advertise outage on Moodle Home page

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo to advise cent-ops of moodle and mahara outage

###### Virtualisation(Jo)

Funding for Redhat licenses has now been authorised and the hardware has been ordered. Andrew will advise us when he gets a delivery date.

###### Archive (Pete)

Upgrading last year's archive today. We will now take the snapshot on Friday 17th now at around 5pm rather than the usual Monday after.

###### CampusM (Pete)

I've spoken with Anu from Ombiel. Basically ldap auth doesn't work. Seems unlikely Shibboleth will either for some time.

The manual account I set up for testing sort of works - it's not a true iPhone app yet - it's using their web app.

<https://ucl.ombiel.co.uk/chooseGrade>

Annora to find out how we suggest improvments to the app.

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
<td><p>Pete<br />
</p></td>
<td><p>things like sitsfilter and any other scripts that create users in Moodle. Pete to confirm whether sits filter and staff import script are unicode compliant by next meeting</p></td>
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
<td><p>Pete</p></td>
<td><p>will go ahead June 9th. <br />
</p></td>
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
<td><p>Pete<br />
</p></td>
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
<td><p>we need the hardware asap - snapshot will now be taken Friday 17th (it was changed at last minute)<br />
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
<td><p>some problems - Moodle creates new accounts if you already exist(!)<br />
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
<td><p>it seems a bit underwhelming. no ldap auth yet but the test account sort of works <br />
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

## Lecturecast

##### Issues (Jo/Adrian)

Rod requested a list of email addresses for all users who had echos in the unavailable state. This is so that these users could be emailed to ask if they could remove them. The query to get this data involves joining many tables and it is not obvious how these tables are related. Jo has posted on the forum and it has now been passed to the development team.The post can be viewed at <http://www.lecturecapture.com/index.php?showtopic=503&view=getnewpost> Jo is now awaiting a response.

##### Developments

## MyPortfolio

##### Issues (Adrian)

Adrian will upgrade to 1.3.4 on 9/06/11 at 8.30.

##### Developments(Adrian)

## Opinio

##### Issues(Adrian)

(!)Adrian to create tickets for recent opinion problems with Object planet

##### Developments(Adrian)

(!)Adrian has successfully moved opinio-dev to wasdev-c and is waiting for virtual host to be setup to point to new server.

Housekeeping is required to remove redundant users. Rod and Annora to specify requirements for removing users and Adrian will implement a solution.

(!)Jo to check whether leavers are removed from ldap.

Checked with Adrian Barker. Students are not removed from ldap as they need to access live@ucl. Staff are removed.
