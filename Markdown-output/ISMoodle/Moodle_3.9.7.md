# Moodle 3.9.7

Release date: Thursday 13th May 1am-2am

Release Lead: AS

Deadline to add changes to this release: Friday 8th May 8pm

Deadline to handover release to Catalyst: Monday 11th May 8pm

Must sign-off staging deployment by: Tuesday 12th May 5pm

1) Minor Release of Moodle 3.9.7

Update from 3.9.5

2)Theme update:

Add the following to the customcss

``` java
/* CSS for Header to meet UCL branding guidelines */
#main-navbar {
border-top: solid #ecefe7 1px;
}
#logo {
margin-bottom: -8px;
}
/* End of CSS for Header to meet UCL branding guidelines */
```

Setting

Before

After

Tab

headersearchandsocial
Search in header and navbar for mobiles
None
Header
Not enabling search yet
blockheaderbordertop
0
0
Block settings
headerstyle
Header 1
Header 1
Header
pageheaderlayout
Original
Alternative
Header
UCL branding layout incorporated upstream

3) Changes to the language pack:

<table>
<tbody>
<tr class="odd">
<td><strong>Component</strong></td>
<td><strong>Stringname</strong></td>
<td><strong>Before</strong></td>
<td><strong>After</strong></td>
<td><strong>Reason</strong></td>
</tr>
<tr class="even">
<td>mod_turnitintooltwo</td>
<td>modulename</td>
<td>Turnitin Assignment 2</td>
<td>Assignment (Turnitin)</td>
<td>Reinstated some lost language pack changes. See JIRA <a href="https://ucldata.atlassian.net/browse/CTP-207">CTP-207</a> and <a href="https://ucldata.atlassian.net/browse/CTP-236">CTP-236</a>.</td>
</tr>
<tr class="odd">
<td>mod_turnitintooltwo</td>
<td>modulenameplural</td>
<td>Turnitin Assignments</td>
<td>Assignments (Turnitin)</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_turnitintooltwo</td>
<td>norepository</td>
<td>No Repository</td>
<td>No Repository - (not stored in Turnitin, for drafts/testing)</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_turnitintooltwo</td>
<td>pluginadministration</td>
<td>Turnitin Assignment 2 Administration</td>
<td>Turnitin Assignment Administration</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_turnitintooltwo</td>
<td>pluginname</td>
<td>Turnitin Assignment 2</td>
<td>Assignment (Turnitin)</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_turnitintooltwo</td>
<td>turnitintooltwoadministration</td>
<td>Turnitin Assignment 2 Administration</td>
<td>Turnitin Assignment Administration</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_collaborate</td>
<td>collaborate</td>
<td>Collaborate</td>
<td>Blackboard Collaborate Ultra</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_collaborate</td>
<td>modulename</td>
<td>Collaborate</td>
<td>Blackboard Collaborate Ultra</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_collaborate</td>
<td>pluginname</td>
<td>Collaborate Ultra</td>
<td>Blackboard Collaborate Ultra</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_hsuforum</td>
<td>forumtype_help</td>
<td>There are 5 forum types: * A single simple discussion - A single discussion topic to which everyone can reply (cannot be used with separate groups) * Each person posts one discussion - Each student can post exactly one new discussion topic, to which everyone can then reply * Q and A forum - Students must first post their perspectives before viewing other students' posts * Standard forum displayed in a blog-like format - An open forum where anyone can start a new discussion at any time, and in which discussion topics are displayed on one page with &quot;Discuss this topic&quot; links * Standard forum for general use - An open forum where anyone can start a new discussion at any time</td>
<td>There are 5 forum types: * A single simple discussion - A single discussion topic to which everyone can reply (cannot be used with separate groups). * Each person posts one discussion - Each student can post exactly one new discussion topic, to which everyone can then reply. * Q and A forum - Students must first post their perspectives before viewing other students' posts. You must post a question in order for student to be able to answer it. * Standard forum displayed in a blog-like format - An open forum where anyone can start a new discussion at any time, and in which discussion topics are displayed on one page with &quot;Discuss this topic&quot; links. * Standard forum for general use - An open forum where anyone can start a new discussion at any time.</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_hsuforum</td>
<td>hsuforum:revealpost</td>
<td>Reveal yourself in an anonymous forum</td>
<td>Reveal your identity in an anonymous forum</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_hsuforum</td>
<td>modulename</td>
<td>Open Forum</td>
<td>Forum (Advanced)</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_hsuforum</td>
<td>modulename_help</td>
<td>The Open Forum activity module enables participants to have asynchronous discussions, i.e., discussions that take place over an extended period of time. There are several forum types to choose from, such as a standard forum where anyone can start a new discussion at any time; a forum where each student can post exactly one discussion; or a question and answer forum where students must first post before being able to view other students' posts. A teacher can allow files to be attached to forum posts. Attached images are displayed in the forum post. Participants can subscribe to a forum to receive notifications of new forum posts. A teacher can set the subscription mode to optional, forced or auto, or prevent subscription completely. If required, students can be blocked from posting more than a given number of posts in a given time period; this can prevent individuals from dominating discussions. Forum posts can be rated by teachers or students (peer evaluation). Ratings can be aggregated to form a final grade which is recorded in the gradebook. Forums have many uses, such as: * A social space for students to get to know each other * For course announcements (using a news forum with forced subscription) * For discussing course content or reading materials * For continuing online an issue raised previously in a face-to-face session * For teacher-only discussions (using a hidden forum) * A help centre where tutors and students can give advice * A one-on-one support area for private student-teacher communications (using a forum with separate groups and with one student per group) * For extension activities, for example ‘brain teasers’ for students to ponder and suggest solutions</td>
<td>&lt;p&gt;The Advanced Forum activity module enables participants to have asynchronous discussions with the additional option of allowing anonymous forum posts. (see '&lt;span class=&quot;&quot; style=&quot;color: rgb(255, 51, 102);&quot;&gt;Caution&lt;/span&gt;' note in &lt;a href=&quot;<a href="https://wiki.ucl.ac.uk/x/RgU8AQ" class="uri">https://wiki.ucl.ac.uk/x/RgU8AQ</a>&quot; target=&quot;_blank&quot;&gt;Miniguide &lt;/a&gt;regarding anonymity and subscription)&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The anonymous posting setting can be enabled in the Advanced Forum settings and students and staff can then choose whether or not to post anonymously. They can also go back to posts at any point in the future, and change their post to reveal their identity or make it anonymous.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Other advanced features include the ability for tutors to bookmark posts and mark posts as substantive (important or meaningful). A 'View posters' page allows tutors to see how many posts each student has started, how many posts they have replied to, as well as how many have been marked as substantive.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;All other settings are similar to the standard Moodle forum (see the Forum activity for more information).&lt;/p&gt;</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_hsuforum</td>
<td>modulenameplural</td>
<td>Open Forums</td>
<td>Forums (Advanced)</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_hsuforum</td>
<td>pluginname</td>
<td>Open Forum</td>
<td>Forum (Advanced)</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_hsuforum</td>
<td>qandanotify</td>
<td>This is a question and answer forum. In order to see other responses to these questions, you must first post your answer</td>
<td>This is a question and answer forum. In order to see other responses to these questions, you must first reply to the question below. If you cannot see a question, please ask your tutor to post one first.</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_hsuforum</td>
<td>reveal</td>
<td>Reveal yourself in this post</td>
<td>Reveal your identity in this post</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>enrol_imsenterprise</td>
<td>pluginname</td>
<td>IMS Enterprise file</td>
<td>Portico enrolment</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>consumer_key</td>
<td>MEDIAL Consumer Key</td>
<td>MediaCentral Consumer Key</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>consumer_key2</td>
<td>The consumer key used for access to the MEDIAL LTI server.</td>
<td>The consumer key used for access to the MediaCentral LTI server.</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>helixmedia:addinstance</td>
<td>Add a new MEDIAL Resource</td>
<td>Add a new MediaCentral Resource</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>helixmedia:manage</td>
<td>Manage MEDIAL Resources</td>
<td>Manage MediaCentral Resources</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>helixmedia:view</td>
<td>View MEDIAL Resources</td>
<td>View MediaCentral Resources</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>hml_in_new_window</td>
<td>Open MEDIAL Resource</td>
<td>Open MediaCentral Resource</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>invalid_launch</td>
<td>Invalid parameters supplied for MEDIAL LTI launch request. Aborting.</td>
<td>Invalid parameters supplied for MediaCentral LTI launch request. Aborting.</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>launch_url</td>
<td>MEDIAL LTI Launch URL</td>
<td>MediaCentral LTI Launch URL</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>launch_url2</td>
<td>Put the LTI launch URL of the MEDIAL server here. This should be a URL in the format: <a href="https://upload.mymedialserver.org/Lti/Launch" class="uri">https://upload.mymedialserver.org/Lti/Launch</a></td>
<td>Put the LTI launch URL of the MediaCentral server here. This should be a URL in the format: <a href="https://upload.mymedialserver.org/Lti/Launch" class="uri">https://upload.mymedialserver.org/Lti/Launch</a></td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>log_launch</td>
<td>MEDIAL LTI Launch</td>
<td>MediaCentral LTI Launch</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>log_launchedit</td>
<td>MEDIAL LTI Edit Launch</td>
<td>MediaCentral LTI Edit Launch</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>log_launcheditnew</td>
<td>MEDIAL LTI New Instance Edit Launch</td>
<td>MediaCentral LTI New Instance Edit Launch</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>modulename</td>
<td>MEDIAL</td>
<td>Media Resource</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>modulename_help</td>
<td>The MEDIAL module provides a customised LTI based Moodle for the integration of MEDIAL server into Moodle</td>
<td>The Media Resource module provides a method of adding media content securely to a course via integration with UCL media servers.<br />
&lt;br&gt;<br />
&lt;a href=&quot;<a href="https://www.ucl.ac.uk/mediacentral/moodle" class="uri">https://www.ucl.ac.uk/mediacentral/moodle</a>&quot; target=&quot;_blank&quot;&gt;UCL help pages&lt;/a&gt;</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>modulenameplural</td>
<td>MEDIAL</td>
<td>MediaCentral</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>modulenamepluralformatted</td>
<td>MEDIAL Instances</td>
<td>MediaCentral Instances</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>nohelixmedias</td>
<td>No MEDIAL Instances found.</td>
<td>No MediaCentral Instances found.</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>not_authorised</td>
<td>You are not authorised to perform this MEDIAL operation.</td>
<td>You are not authorised to perform this MediaCentral operation.</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>org_id2</td>
<td>The organisation ID or name which will be sent to the MEDIAL server. The URL of your Moodle installation will be sent if this is left blank.</td>
<td>The organisation ID or name which will be sent to the MediaCentral server. The URL of your MediaCentral installation will be sent if this is left blank.</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>pluginadministration</td>
<td>MEDIAL</td>
<td>MediaCentral</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>pluginname</td>
<td>MEDIAL</td>
<td>MediaCentral</td>
<td>&quot;</td>
</tr>
<tr class="odd">
<td>mod_helixmedia</td>
<td>shared_secret</td>
<td>MEDIAL Shared Secret</td>
<td>MediaCentral Shared Secret</td>
<td>&quot;</td>
</tr>
<tr class="even">
<td>mod_helixmedia</td>
<td>shared_secret2</td>
<td>The shared secret used for comunications between Moodle and the MEDIAL server via LTI.</td>
<td>The shared secret used for comunications between Moodle and the MediaCentral server via LTI.</td>
<td>&quot;</td>
</tr>
</tbody>
</table>

Release Notes:

**Update Moodle to version 3.9.7**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.9.7_release_notes) and security issues
-   fix an issue with Quickmail when applying an alternate email
-   various fixes with Zoom acxtivity

**New Moodle assignment report - Export component grades**

-   Miniguide: [M09a6 - Getting data out of a Moodle Assignment](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M09a6+-+Getting+data+out+of+a+Moodle+Assignment)

**IPAC - LTI integration**

-   Miniguide: [M65 - IPAC - Individual Peer Assessed Contribution Tool](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M65+-+IPAC+-+Individual+Peer+Assessed+Contribution+Tool)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/161881838/161881837.png) (image/png)

