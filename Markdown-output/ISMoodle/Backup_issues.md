# Backup issues

# Failed backups

There are some major problems at the moment (Nov 2009) with the automated course backups. A number are failing.

Course 1 is a typical example of one of the problems in that it takes 45 to 50 mins to complete. The way the backups works is that if nothing is written to the backup log in the last 30 mins - it assumes it isn't running and the next cron job kicks off a second backup run. We effectively have two backups running simultaneously - occasionally conflicting and creating errors. Occasionally it kicks off again - and again.

Some courses are simply too big for it to work. Examples below:

-   <http://moodle.ucl.ac.uk/course/view.php?id=204> - 6Gb files - maybe move to streaming server?
-   <http://moodle.ucl.ac.uk/course/view.php?id=3047> - 7Gb files - lots of huge zip files
-   <http://moodle.ucl.ac.uk/course/view.php?id=425> - 1.5Gb

# Time wasting...

Some courses seem to be being backed up that are redundant, test courses or unused. Not clear why these aren't being skipped. Most likely explanation is that they are set to live and are being viewed (and an entry being put into the mdl\_log table) and are therefore being backed up twice a week for no good reason.

Some examples:

-   <http://moodle.ucl.ac.uk/course/view.php?id=3163> (260Mb)
-   <http://moodle.ucl.ac.uk/course/view.php?id=102> - tiny but it all adds up to the backup time!
-   <http://moodle.ucl.ac.uk/course/view.php?id=1030> - ditto

There are a lot of redundant courses.

# Performance

Moodle C was under strain Wednesday morning and afternoon - largely down to the backups still struggling on. They completed shortly after 3pm and Nagios reported high CPU load and moodledata disk space issues most of the day. That said - I bypassed the SLB and Moodle C's performance seemed acceptable - but it is clearly only going to get worse.

# Disk space

The difference between Moodles A and C is that C contains a backupdata folder for each course folder - the zipped archive of the course. This has the effect of halvig the disk space available on the volume:

-   Moodle C - 419Gb used 
-   Moodle A - 210Gb used

# Switching off backups

It might be feasible hacking the code to fix the current issues and maybe take Moodle-C out of the farm to ease the performance hit - but is it worth it? The problem is going to get worse as we get more courses and more files in moodledata.

**The case for keeping backups**

-   It's a quick and convenient means to restore a course (actually no - given some of them fail and if you delete a course you lose the folder with the backupdata!)
-   We think people might be using them <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> - not possible to tell by Moodle logs unfortunately.

**The case for switching them off**

-   They fail frequently so cannot be relied on
-   They only happen twice a week - you potentially lose days worth of content
-   If you delete a course - the backupdata folder goes with it so we have to get the storage team to restore it anyway
-   Run from 23.00 to mid day the following day (or later - recently into mid afternoon)
-   Consume disk space (effectively halve the amount we have - plus the temp folders make it worse)
-   Impact performance - other large sites (Bath for example) have switched them off for performance reasons
-   It's a problem that can only get worse as our Moodle gets bigger
-   There's no reason why tutors/course admins can't do backups manually - but this raises possible problems - they could potentially cause problems if they restore courses themselves

**Alternative approach**

If a course is deleted - the following approach can be taken instead:

-   request that is-storage team restore the moodledata folder for the course
-   get the latest and most appropriate backup of the Moodle database
-   create a local instance of Moodle using the rescued bits and check that the course looks ok - then take a backup of the course - include everything
-   restore this to live Moodle

It can be turned around pretty quickly but relies on is-storage responding in timely manner - maybe state that 24 hours is the norm. This approach isn't significantly more fiddly than using the course backup.

# Additional info

Pete tried to work out from the logs if anyone is actually using them. It seems Moodle doesn't log restores.

Pete was also curious as to the number of folders in moodledata that are orphaned (turns out not that many - three dozen or so).

