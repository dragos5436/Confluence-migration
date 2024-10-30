# 20 July 2011 liaison meeting

# Agenda

-   [Agenda](#id-20July2011liaisonmeeting-Agenda)
-   [Minutes](#id-20July2011liaisonmeeting-Minutes)
    -   [Moodle](#id-20July2011liaisonmeeting-Moodle)
        -   [Developments](#id-20July2011liaisonmeeting-Developments)
    -   [Moodle archive server](#id-20July2011liaisonmeeting-Moodlearchiveserver)
    -   [Moodle virtualisation 'project'](#id-20July2011liaisonmeeting-Moodlevirtualisation'project')
    -   [CampusM](#id-20July2011liaisonmeeting-CampusM)
    -   [Housekeeping](#id-20July2011liaisonmeeting-Housekeeping)
    -   [The sits filter](#id-20July2011liaisonmeeting-Thesitsfilter)
        -   [Moodle development priorities](#id-20July2011liaisonmeeting-Moodledevelopmentpriorities)
-   [Lecturecast](#id-20July2011liaisonmeeting-Lecturecast)
    -   [Issues](#id-20July2011liaisonmeeting-Issues)
    -   [Developments](#id-20July2011liaisonmeeting-Developments.1)
-   [MyPortfolio](#id-20July2011liaisonmeeting-MyPortfolio)
    -   [Issues](#id-20July2011liaisonmeeting-Issues.1)
    -   [Upgrade](#id-20July2011liaisonmeeting-Upgrade)
-   [Opinio](#id-20July2011liaisonmeeting-Opinio)
    -   [Issues](#id-20July2011liaisonmeeting-Issues.2)
    -   [Developments](#id-20July2011liaisonmeeting-Developments.2)
-   [AOB](#id-20July2011liaisonmeeting-AOB)

# Minutes

Attendees:
Appologies:

Actions from Last Meeting (04/07/11)

-   TBC

## [Moodle](Moodle)

##### Developments

Jo is still away.

#### Moodle archive server

This is live here: <http://moodle-archive.ucl.ac.uk/09-10/> and <http://moodle-archive.ucl.ac.uk/10-11/> - any issues?

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Chris to fix the references to Live / Archive

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Send amessage to all Designers (and update list) before The Week@UCL message

#### Moodle virtualisation 'project'

We have a virtual db and web server. It seems to work. Awaiting

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Jo's return to finalise the roll out plan with Chris and Vivek.

#### CampusM

It's still a little underwhelming.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Start / continue with testing for Android and iPhone

#### Housekeeping

There are courses in Moodle that have not been accessed for 800 days. They'll be in both archive instances. Time to get zapping.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Start housekeeping actions from 27th July (<https://wiki.ucl.ac.uk/display/ISLTSS/Moodle+Housekeeping+-+planning%2C+actions+and+instructions>)

#### The sits filter

I want to get this running on the live server this week and hand it over to Chris and Jo.

In the meantime - Pete will provide a short demo, illustrating mapping management and course creation...

<http://v1912.moodle-rhel6-dev.ucl.ac.uk/>

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
<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Delegate role will move to Participant but may make dupes<br />
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

## Lecturecast

##### Issues

18/19 July 2011 TEST - problems have developed, which have now luckily been resolved. This was worrying as the software is the same version as LIVE. This delayed the TEST upgrade to Version 4.

##### Developments

20 July 2011 - TEST upgrade to Version 4. UPgrade itself was fine, but there are 3 problems I have found. See <https://wiki.ucl.ac.uk/display/ISPodcast/Echo360+TEST+upgrade+to+Version+4.0.2011-06-28.1#Echo360TESTupgradetoVersion4.0.2011-06-28.1-Upgradeproblems>

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> I am v. concerned about this as Jason wants to the LIVE upgrade on Monday 25th July. Personally I am not convinced.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Planning to upgrade on Monday JN/AB

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> Noficiation on the Moodle homepage of a Lecturecast outage - pending a decision on times/date - JN

## MyPortfolio

##### Issues

None really, but I have did have to make an extra UCL customisation after testing on the PP instance. A minor cosmetic change.

##### Upgrade

LIVE upgrade went ahead without problem.

## Opinio

##### Issues

None that I have hear of, after the upgrade.

##### Developments

LIVE upgrade went ahead without problem. 2 post-hoc comsmetic changes needed.

<img src="images/icons/emoticons/warning.svg" alt="(warning)" class="emoticon emoticon-warning" /> bug still hanging around - running out of Heap Space - ABi

## AOB

Something fun - what's the *competition* up to? (Matt)
