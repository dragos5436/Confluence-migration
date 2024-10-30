# Upgrade steps for 3.1 .

# **Upgrade steps for 3.1**

### **Page detailing steps for Moodle upgrade**

**N.B.:** This example assumes that no changes are required to the 'local\_settings.php' configuration file as part of the upgrade.
If changes *are* required, then these should be applied as appropriate to the version-controlled 'local\_settings\_template.php' file, and a new 'local\_settings.php' derived accordingly.
In the following instructions, **\[vCURRENT\]** and **\[vNEW\]** refer to the current (i.e. pre-upgrade), and newly-deployed (i.e. post-upgrade) Moodle directories, and should be substituted accordingly.
**         **

-   Prior to the morning of the upgrade...
-   On Friday 2pm
-   On Friday 5pm
-   On Saturday Morning . . . Snapshot work
-     The rest of Saturday  . . . Upgrade work
-   Sunday . . .  Digi Ed core to test
-   Monday . . .  DC migration

## **Prior to the morning of the upgrade...**

-   Deploy the code to moodle-\[def\] and moodle-admin, and ensure permissions are correct.

cd /data/apache/htdocs/\[vNEW\]/ && \\
chown -R ccspmdl:ccsp . && \\
chmod -R 755 . && \\
find . -type f -exec chmod 644 {} + && \\
chmod 755 /data/apache/htdocs/\[vNEW\]/filter/tex/mimetex.linux
 

-   Disable Moodle cron on 'Admin' (newly deployed code).

Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/\[vNEW\]/admin/cli/cron.php - comment-out cron\_run().
 

-   Activate maintenance message on the INCOMING version (copy .htaccess\_maint to .htaccess (moodle-\[def\]:/data/apache/htdocs/\[vNEW\]/)).

cp /data/apache/htdocs/\[vNEW\]/.htaccess\_maint /data/apache/htdocs/\[vNEW\]/.htaccess
 

-   Copy local\_settings.php file from previous release into the new folder.

cp /data/apache/htdocs/\[vCURRENT\]/local\_settings.php /data/apache/htdocs/\[vNEW\]/local\_settings.php
 

-   Create symlinks to ucl\_tools/opcache-gui, on each of the moodle-\[def\] servers.

\[ccspmdl@moodle-\[def\].ucl.ac.uk\]
cd /data/apache/htdocs/\[vNEW\]/ucl\_tools/
ln -s opcache-gui-2.1.0/ opcache-gui

## **On Friday 2pm**

-   Start posting 'countdown' messages on the Moodle alerts

## **On Friday 5pm**

-   Disable Moodle cron on 'Admin' - current (i.e. pre-upgrade) version.

Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/\[vCURRENT\]/admin/cli/cron.php - comment-out cron\_run(),
...or email [is-webteam@ucl.ac.uk](mailto:is-webteam@ucl.ac.uk?subject=Please%20stop%20the%20Moodle%20cron%20job%20on%20moodle-admin.) if available, and ask them to stop the Moodle cron job on moodle-admin.
 
 

-   Check that the 5:00pm cron does not run.

\[ccspmdl@moodle-admin.ucl.ac.uk\]
tail -f /var/log/moodlecron/moodle-main.log
 

-   Put Moodle into maintenance mode.

[Site admin -&gt; Server -&gt; Maintenance mode](https://moodle.ucl.ac.uk/admin/settings.php?section=maintenancemode)
 

-   Activate maintenance message - copy .htaccess\_maint to .htaccess (moodle-\[def\]:/data/apache/htdocs/\[vCURRENT\]/).

cp /data/apache/htdocs/\[vCURRENT\]/.htaccess\_maint /data/apache/htdocs/\[vCURRENT\]/.htaccess
 

-   Ask Vivek/DBA Team to perform a full database backup. Also ask to break replication between live and snapshot

From: Gagen, Tim
Sent: 26 January 2016 08:06
To: Viswanathan, Vivek &lt;vivek.viswanathan@ucl.ac.uk&gt;
Cc: +ISD.LTA-Learning &lt;lta-learning@ucl.ac.uk&gt;; +MS.Dbas &lt;ms.dbas@live.ucl.ac.uk&gt;
Subject: Moodle upgrade - please backup the moodle\_live database.
Hi Vivek,
Moodle is now in maintenance mode, and the cron job is not running. Please take a backup of the moodle\_live database.
Can you also break the replication between live and the snapshot databases.
 Thank you,
LTA

-   Ask SnV to kick off the final Rsync from Moodle data to Moodle snapshot 15/16

 
**While the database backup is running...**
 

-   Rename the release directory, if necessary.

This usually isn't necessary, depending on the type of release (i.e. initial release of a new version, or update to an existing release of a specific version).
 

-   Reset OPcache on each of the app servers, to be safe...

Visit the ucl\_tools/opcache-gui page on each of the app servers, and click 'Reset cache' link...
Moodle D: <https://moodle-d.ucl.ac.uk/ucl_tools/opcache-gui/>
Moodle E: <https://moodle-e.ucl.ac.uk/ucl_tools/opcache-gui/>
Moodle F: <https://moodle-f.ucl.ac.uk/ucl_tools/opcache-gui/>
**Vivek should confirm that the backup completed successfully...  later Friday**
 

## **On Saturday Morning . . . Snapshot work**

-   Sammy to run Moosh
-   Check local settings and config on the 15/16 folder

-   Add the archive banner

Modify
Settings -&gt; Appearance -&gt; Themes -&gt; UCL -&gt; General Settings
div\#archivetopstrap{
background: url(<https://moodle-archive.ucl.ac.uk/14-15/theme/ucl/pix/banner.jpg>);
height: 60px;
}
 

-   Remove 'guest login'

In
theme/ucl/layout/login.php     and
theme/ucl/layout/frontpage.php - remove
&lt;div
id='ucl-guest-login'&gt;
&lt;div id='ucl-guest-login-text'&gt;
&lt;?php if(!isloggedin())
{
?&gt;
&lt;form id="guestlogin" method="post" action="&lt;?php
echo
$CFG-&gt;httpthemewww;?&gt;/login/index.php"&gt;
&lt;div
class="guestform"&gt;
&lt;input
type="hidden"
value="guest"
name="username"&gt;
&lt;input
type="hidden"
value="guest" name="password"&gt;
&lt;input type="submit" value="&lt;?php echo get\_string('loginguest');?&gt;"&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;?php
}?&gt;
&lt;/div&gt;
&lt;/div&gt;
 

-   Modify sitename
-   remove news from front page   - 

Modify
theme/ucl/layout/frontpage.php     and
theme/ucl/layout/login.php and  remove
&lt;!-- UCL NEWS FORUM --&gt;
&lt;div id="banner"&gt;
&lt;?php
include($CFG-&gt;dirroot . "/theme/ucl/layout/newsforum.php");
?&gt;
&lt;/div&gt;
 

-    
-   Get rod to test
-   Remove maintenance.html and uncomment the link in index.php

## **  The rest of Saturday  . . . Upgrade work**

 
**Prepare outgoing moodle for upgrade**

-   Remove slideshow, TII V1  (approx 1 hour), block elluminate (Blackboard collaborate), block\_mass\_enroll, accessibility - ALLOW ABOUT 2 hrs
-   Remove language customisations for tii V2   - turnitintooltwo.php      'Assignment (Turnitin - V2)'  becomes   'Assignment (Turnitin)'   and same for plurals
-   Edit lang string  admin "Show all courses"   to "Show all my courses"
-   Change the my home to show 'course overview'   Settings -&gt; Site Admin -&gt; Appearance -&gt; Default my home page     /my/indexsys.php      blocks editing on    add a block 'course overview'  drag it to right place and delete 'course'
-   Reset all portico mappings  Site Admin -&gt; Plugins -&gt; Blocks -&gt; Portico Enrolments   "Deactivate all"

-   Repoint the moodle symlink to '\[vNEW\]'.

The easiest way is to edit the link in WinSCP.
 

-   Run the upgrade!

Either [Settings -&gt; Site administration -&gt; Notifications](https://moodle.ucl.ac.uk/admin/index.php)
or via command line - took 15 mins on DEV
time php --define memory\_limit=4096M --define max\_execution\_time=0 --define error\_log=/home/ccspmdd/php\_errors\_$(date +%Y%m%d).log /data/apache/moodle-vhosts/v31-0704/admin/cli/upgrade.php --non-interactive | tee /home/ccspmdd/v31-0704\_moodle-dev\_upgrade\_out\_$(date +%Y%m%d).txt
check paths and user accounts before running - above example is for DEV

-   Apply any required configuration settings. See settings page

-   Edit lang string  admin "Dashboard"   to "My home"     in core
-   Check language strings - may need to do a lang pack update - 'MY home'

## **Sunday . . .  Digi Ed core to test**

-   When the upgrade has completed successfully, ask [Digi-Ed Core](mailto:ele-core@ucl.ac.uk?subject=The%20Moodle%20upgrade%20is%20complete%20-%20please%20test.) to test.

 
 
**Once Digi Ed confirm testing OK...**
 
 

-   Re-enable the cron job.

 
 

-   Check that the cron job completes successfully upon its next run...

\[ccspmdl@moodle-admin.ucl.ac.uk\]
tail -f /var/log/moodlecron/moodle-main.log
You can also list cron completions from today's logs (including time, memory usage and duration) by executing the following on moodle-admin...
 grep -C1 'Cron completed' /var/log/moodlecron/moodle-main.log

## **Monday . . .  DC migration**

-   Look through LB laptop
-   We may need to remove htaccess - see June testing
-   Wait confirmation from DC migration

-   De-activate the maintenance message.

cp /data/apache/htdocs/\[vNEW\]/.htaccess\_live /data/apache/htdocs/\[vNEW\]/.htaccess

-   
    -   Take Moodle out of maintenence mode.

[Site admin -&gt; Server -&gt; Maintenance mode](https://moodle.ucl.ac.uk/admin/settings.php?section=maintenancemode)

-   Inform Digi-Ed Core + Service Desk that Moodle is live. Tell All to stand down + thanks

-   Complete SCP and RF release forms

 
 
