# Activity module - Scheduler

-   [About the Moodle Scheduler](#ActivitymoduleScheduler-AbouttheMoodleScheduler)
-   [Installing the Moodle Scheduler module and Setting up module tables](#ActivitymoduleScheduler-InstallingtheMoodleSchedulermoduleandSettingupmoduletables)
    -   [Options](#ActivitymoduleScheduler-Options)
-   [Using the Scheduler](#ActivitymoduleScheduler-UsingtheScheduler)
-   [Problems](#ActivitymoduleScheduler-Problems)
    -   [Hacks required](#ActivitymoduleScheduler-Hacksrequired)
        -   [Fix the emails:](#ActivitymoduleScheduler-Fixtheemails:)
-   [Recommendations](#ActivitymoduleScheduler-Recommendations)
-   [Users who requested this functionality](#ActivitymoduleScheduler-Userswhorequestedthisfunctionality)

# About the Moodle Scheduler

Activity that allows students to book times to see their tutor.

The **Scheduler module** helps you to schedule one-on-one appointments with all your students. You specify the periods during which you are available to see the students and the length of each appointment. The students then book themselves into one of the available timeslots. The module also lets you record the attendance and grade the appointment. Documentation can be found at <http://docs.moodle.org/en/Scheduler_module>

# Installing the Moodle Scheduler module and Setting up module tables

The Moodle scheduler is a self contained module which doesn't affect overwrite any existing moodle files.

3 new tables are created:

-   `mdl_scheduler`
-   `mdl_scheduler_slots`
-   `mdl_scheduler_appointment`

<!-- -->

-   Download the latest scheduler module from <http://download.moodle.org/download.php/plugins/mod/scheduler.zip>

<!-- -->

-   Extract the files and copy the scheduler folder to /data/apache/htdocs/moodle/mod

<!-- -->

-   Login in to Moodle as Administrator and select Administration &gt; Notifications. This will start the installation process.

<!-- -->

-   If all goes well the following out will be displayed in the browser:

> No warnings - Scroll to the continue button
>
> scheduler
>
> (mysql): CREATE TABLE mdl\_scheduler ( id BIGINT(10) unsigned NOT NULL auto\_increment, course BIGINT(10) NOT NULL DEFAULT 0, name VARCHAR(255) NOT NULL DEFAULT '', description TEXT NOT NULL, schedulermode VARCHAR(10) DEFAULT NULL, reuseguardtime BIGINT(10) DEFAULT NULL, defaultslotduration SMALLINT(4) DEFAULT 15, allownotifications SMALLINT(4) NOT NULL DEFAULT 0, staffrolename VARCHAR(40) NOT NULL DEFAULT '', teacher BIGINT(10) NOT NULL DEFAULT 0, scale BIGINT(10) NOT NULL DEFAULT 0, gradingstrategy TINYINT(2) NOT NULL DEFAULT 0, timemodified BIGINT(10) NOT NULL DEFAULT 0, CONSTRAINT PRIMARY KEY (id) ) 
>
> Success
>
> (mysql): ALTER TABLE mdl\_scheduler COMMENT='scheduler table retrofitted from MySQL' 
>
> Success
>
> (mysql): CREATE TABLE mdl\_scheduler\_slots ( id BIGINT(10) unsigned NOT NULL auto\_increment, schedulerid BIGINT(10) NOT NULL DEFAULT 0, starttime BIGINT(10) NOT NULL DEFAULT 0, duration BIGINT(10) NOT NULL DEFAULT 0, teacherid BIGINT(11) DEFAULT 0, appointmentlocation VARCHAR(50) NOT NULL DEFAULT '', reuse MEDIUMINT(5) unsigned DEFAULT 0, timemodified BIGINT(10) NOT NULL DEFAULT 0, notes TEXT, exclusivity SMALLINT(4) unsigned NOT NULL DEFAULT 1, appointmentnote TEXT, emaildate BIGINT(11) DEFAULT 0, hideuntil BIGINT(11) DEFAULT 0, CONSTRAINT PRIMARY KEY (id) ) 
>
> Success
>
> (mysql): ALTER TABLE mdl\_scheduler\_slots COMMENT='scheduler\_slots table retrofitted from MySQL' 
>
> Success
>
> (mysql): CREATE TABLE mdl\_scheduler\_appointment ( id BIGINT(11) unsigned NOT NULL auto\_increment, slotid BIGINT(11) NOT NULL, studentid BIGINT(11) NOT NULL, attended SMALLINT(4) NOT NULL, grade SMALLINT(4) DEFAULT NULL, appointmentnote TEXT, timecreated BIGINT(11) DEFAULT NULL, timemodified BIGINT(11) DEFAULT NULL, CONSTRAINT PRIMARY KEY (id) ) 
>
> Success
>
> (mysql): ALTER TABLE mdl\_scheduler\_appointment COMMENT='scheduler\_appointment table retrofitted from MySQL' 
>
> Success
>
> scheduler tables have been set up correctly

-   The scheduler module should now be visible in **Administration** &gt; **Modules** &gt; **Activities**

## Options

-   At **Administration** &gt; **Modules** &gt; **Activities** &gt; **Scheduler** there is an option to set:
        *scheduler\_allteachersgrading:    No/Yes    When enabled, teachers can grade appointmenents they are not assigned to.*
    We have currently left this as the default: (no)

# Using the Scheduler

Go to your Moodle course and turn editing on

Go to Add an Activity

Choose **Scheduler** from the drop down list

Fill in the details for your schedule and click on save.

Rachel: I keep seeing "Member of Staff: No teacher available" when I try to schedule something, am I doing this wrong or is their a problem with the Scheduler?
I can meet up to show you the error if you like ...

Jess: you need to add a tutor to the course and they will then appear in the Member of Staff drop down list.

# Problems

-   Help needs to be updated - bad English - doesn't make sense
    If anyone has suggestions for better worded help post it here and we can add it
-   Current text = A volatile slot will be automatically deleted in the above cases if it has to start to close to the current dat (it is considered you may not want to add a constraint so close to "right now"). The guard delay can be set by the instance-scoped configuration parameter "Reuse guard time".

<!-- -->

-   When I click on the thumbs down (revoke all) icon this error appeared: **Catchable fatal error**: Object of class stdClass could not be converted to string in **/data/apache/htdocs/moodle/lib/dmllib.php** on line **2136**
    This is just because we have debugging switched on on wasdev-a, when I switched debugging off the errors disappear so this won't be a problem on live moodle
    JESS: Even when debugging is disabled the page still errors out and so nothing is displayed. This happens when I click 'schedule'' &gt; 'save' &gt; then click on the thumbs down icon.
-   The Add and Delete labels are missing from the add and delete buttons in live \[Moodle|http://moodle.ucl.ac.uk/mod/scheduler/view.php?what=doaddupdateslot&id=154496&page=myappointments&slotid=&subaction=confirmdelete&sesskey=bQbERVVbMD&year=2009&month=2&day=27&hour=11&minute=30&displayyear=2009&displaymonth=2&displayday=23&duration=15&teacherid=58813&exclusivity=1&appointments=a%3A1%3A%7Bi%3A60471%3BO%3A8%3A%22stdClass%22%3A7%3A%7Bs%3A6%3A%22slotid%22%3Bi%3A-1%3Bs%3A9%3A%22studentid%22%3Bi%3A60471%3Bs%3A15%3A%22appointmentnote%22%3Bs%3A0%3A%22%22%3Bs%3A8%3A%22attended%22%3Bi%3A0%3Bs%3A5%3A%22grade%22%3Bs%3A0%3A%22%22%3Bs%3A11%3A%22timecreated%22%3Bi%3A1235734244%3Bs%3A12%3A%22timemodified%22%3Bi%3A1235734244%3B%7D%7D&notes=&reuse=1&appointmentlocation=\], but exist on \[moodle-pp-1-9-3|http://moodle-pp-1-9-3.ucl.ac.uk/mod/scheduler/view.php?what=doaddupdateslot&id=129465&page=allappointments&slotid=&subaction=confirmdelete&sesskey=fk8RXcELS7&year=2009&month=2&day=27&hour=11&minute=35&displayyear=2009&displaymonth=2&displayday=27&duration=15&teacherid=41131&exclusivity=1&appointments=a%3A0%3A%7B%7D&notes=&reuse=1&appointmentlocation=\]. For some reason Sonja appeared to be able to see the Add / Delete labels on WTS using Firefox, but I couldn't. I assumed she was on live Moodle at the time - Jess
-   When I create an appointment, no email is sent to student/teacher. An email only appears to get sent when an appointment is deleted and then it only gets sent to the teacher - Jo
-   In the email that gets sent to the teacher in the from field it says the students name even thought a teacher deleted the appointmen - Jo
-   The email that gets sent out when a slot is moved or canceled shows an ugly time code instead of the actual time  - Jess

## Hacks required

##### Fix the emails:

The following files need editing and the &lt;%%Time%%&gt; string removed:
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/applied\_html.tpl
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/applied.tpl
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/teachercancelled\_html.tpl
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/teachercancelled.tpl
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/cancelled.tpl
/data/apache/htdocs/moodle/mod/scheduler/mails/en\_utf8/cancelled\_html.tpl

# Recommendations

-   Easy to set up
-   Appears to function correctly

# Users who requested this functionality

-   Stephen Degabrielle

