# 03-11-11 ATS LTSS Liaison Meeting

-   [Minutes](#id-031111ATSLTSSLiaisonMeeting-Minutes)
    -   [Actions from last meeting:](#id-031111ATSLTSSLiaisonMeeting-Actionsfromlastmeeting:)
    -   [To start with](#id-031111ATSLTSSLiaisonMeeting-Tostartwith)
    -   [Turnitin](#id-031111ATSLTSSLiaisonMeeting-Turnitin)
    -   [Devolved support](#id-031111ATSLTSSLiaisonMeeting-Devolvedsupport)
    -   [Moodle](#id-031111ATSLTSSLiaisonMeeting-Moodle)
        -   [Moodle-a/b/c Virtualisation plan](#id-031111ATSLTSSLiaisonMeeting-Moodle-a/b/cVirtualisationplan)
        -   [echo360 moodle plugin (Jo/Jason)](#id-031111ATSLTSSLiaisonMeeting-echo360moodleplugin(Jo/Jason))
    -   [Moodle 2 (all)](#id-031111ATSLTSSLiaisonMeeting-Moodle2(all))
    -   [Informs (Adrian)](#id-031111ATSLTSSLiaisonMeeting-Informs(Adrian))
    -   [Lecturecast (Jo)](#id-031111ATSLTSSLiaisonMeeting-Lecturecast(Jo))
        -   [Upgrade](#id-031111ATSLTSSLiaisonMeeting-Upgrade)
        -   [Development](#id-031111ATSLTSSLiaisonMeeting-Development)
    -   [Opinio (Adrian)](#id-031111ATSLTSSLiaisonMeeting-Opinio(Adrian))
    -   [MyPortfolio (Adrian)](#id-031111ATSLTSSLiaisonMeeting-MyPortfolio(Adrian))

### Minutes

Attendees:Jessica gramp. Matt Jenner, Jo Matthews, Chris Gibson, Jason Norton, Adrian Birch, Rod Digges

Apologies:Fiona Strawbridge

#### Actions from last meeting:

Actions

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jo – arrange meeting to discuss change management (12/10/11 12pm)

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jess - experiment with a permanent message on the Moodle Home page of the dev instance. Awaiting feedback! Changed slightly based on Jo's feedback. Needs agreement

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Jess – change the wiki admin password

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Chris - identify which tables are affected during the ims import to facilitate a roll back plan. (done. It’s mdl\_users and mdl\_role\_assignments)

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Chris - ask Andy if we can use moodlevm-nfs for moodle 2 - This will finish today to allow preparation of the server for use in the live environment.

<img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> Chris - find a better location for the Opinio query scripts as ucl\_tools is just for moodle - on opinio dev this is at /ucl\_tools, which can be replicated on live.

Rod – Write a query to find orphaned surveys (ie those surveys where the user has been deleted)

Rod - Approve the footer changes for contacting ltss for support.

#### To start with

a SCORMy Story (Matt)

#### Turnitin

Turnitin problems experienced this week

#### Devolved support

Should/how can ATS handle 3rd-line support directly (starting with Turnitin & Opinio)?

#### Moodle

-   UAT Planning
-   SITS Filter - course creation turned on.
-   DB access. We are just waiting on another IP address, but Jess will soon send them to Andy from here so he can lock down DB access to these IP addresses: <https://wiki.ucl.ac.uk/display/ISLTSS/Team+computer+IP+addresses>
-   Moodle Home page regular scheduled outage message - see: [http://v1913.moodle-rhel6-dev.ucl.ac.uk](http://v1913.moodle-rhel6-dev.ucl.ac.uk/)
-   Archive outage message requirements / placement ? Outage between 17:00 and 20:00 on Tuesday 15<sup>th</sup> Nov , at risk until next morning.
-   Is it possible to truncate log table?
-   A request from Chemistry - needs a formal response

On another issue altogether...

Further to our conversation a few weeks ago, I would like to explore the possibility of developing a new module for Moodle that would enable me to use Moodle directly for checking the completion of pre-lab qualifying work. The scenario is as follows:

1. The students complete a Moodle lesson and quiz before attending the lab. The grades for each of these are stored in the Moodle gradebook.

2. When the students arrive in the lab they scan their ID cards. The new module would then check the gradebook to see whether the student had satisfactorily completed the pre-lab work (subject to some specified criteria).

3. The scanning would also function as a form of attendance monitoring and should allow for the students to scan in and out of the lab, recording the times of scan.

In order to function properly the module would have to run through a "tutor" account on the Moodle course - it can't be based on the students logging in individually. They should simply have to scan their card to be shown a message that they have either qualified or not for the lab.

I would imagine this a quite a straightforward thing to code. At the moment we do the same thing but by exporting the gradebook to Excel then running a macro to handle the scanning in process. We want to remove this bottleneck from the process so that everything runs in real time.

Is there any way that LTSS can assist in the development of such a project? I believe it would be of use to a number of departments in the University, certainly those spanning subjects with a practical component (MAPS departments, Life Sciences and Medicine in particular).

I would be grateful to hear your thoughts on this.

Best wishes,

Simon.

##### Moodle-a/b/c Virtualisation plan

An outage of 1 hour required for each phase

08/11/11 - Sync the data to the San

15/11/11 - add moodlevm-a to the farm

22/11/11 add moodlevm-b to the farm and remove moodle-a

29/11/11 add moodlevm-c to the farm and remove moodle-b

06/12/11 remove moodle-c

##### echo360 moodle plugin (Jo/Jason)

Installing this on 1.9 will complicate the upgrade. It will be installed on the moodle 2 pilot.

#### Moodle 2 (all)

Jo writes: There is a very interesting blog by a number of contributors about their experience in upgrading to moodle 2 at <http://moodle2upgrade.posterous.com/>

-   Upgrade - progress report from Chris
-   Using Shibboleth with Moodle - the enraged Andy approach:

That was the 'enraged hammer of Andy' approach.

What I really wanted to do was to intercept logins from Shibboleth where the fully-qualified username ended in '@ucl.ac.uk'. From there, I could strip the @ucl.ac.uk off so the username matched that in the database.

I also wanted to do something similar if the userid in the database had 'ldap'

set instead of 'shibboleth' - basically ignore this if the user came from Shibboleth.

Doing those two things would allow us to disable Shibboleth and switch back to LDAP in a disaster-situation by just disabling the Shibboleth module in the admin configuration. When we do have Shib problems (thankfully infrequent) they tend to be world-enders.

I spent a few hours digging through the Moodle core (on 1.9.x) looking at how the auth modules worked, and couldn't figure out where the hell I could hook a username modification, or where it makes the decision about 'ldap' and 'shibboleth' in the user record.

Thus, the enraged hammer of Andy added @ucl.ac.uk to everything, and switched everyone's login method to 'shibboleth'.

I've no idea if what I tried to do is feasible.

      Chris writes : This works well- existing users can log in via shibboleth. For new users, Matt says we need to have 'department' released by shibboleth and mapped by moodle (simple) and ideally student number which Andy says would require work from himself and Nosh.

#### Informs (Adrian)

Informs is a tool for the creation of online tutorials and was hosted externally by Mimas. Mimas are no longer providing this service and the library have asked if we could host this internally so that they can continue to run their tutorials. AB adds: Despite 2 emails sent to the relevant person at Mimas, I have heard nothing. <img src="images/icons/emoticons/sad.svg" alt="(sad)" class="emoticon emoticon-sad" />

#### Lecturecast (Jo)

##### Upgrade

Dev and Uat have been upgraded to v. 4.0.2011-09-02.1. Live will be upgraded on 4th November.

##### Development

Development for the cmis integration progressing.

#### Opinio (Adrian)

was migrated to new vm on 3rd November.

Adrian has updated email from ltss-team@ucl.ac.uk to \*<http://www.ucl.ac.uk/isd/staff/e-learning/ltss*> - Needs to be updated to <http://bitly.com/UCLeLearningContacts> for now, but from November 30th it can link directly to our new Opinio Support Form.  AB adds - where is this?

#### MyPortfolio (Adrian)

Adrian notes:

Myportfolio has now been installed on the NEW webappsvm-b server.   This has the URL :

<https://myportfolio.ucl.ac.uk/>

Matt: Has confirmed that all is OK. <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" />
