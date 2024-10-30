# Upgrade steps for 3.1

### **Page detailing steps for Moodle upgrade**

**N.B.:** This example assumes that no changes are required to the 'local\_settings.php' configuration file as part of the upgrade.

If changes *are* required, then these should be applied as appropriate to the version-controlled 'local\_settings\_template.php' file, and a new 'local\_settings.php' derived accordingly.

In the following instructions, **\[vCURRENT\]** and **\[vNEW\]** refer to the current (i.e. pre-upgrade), and newly-deployed (i.e. post-upgrade) Moodle directories, and should be substituted accordingly.

**         **

-   [Prior to the morning of the upgrade...](#Upgradestepsfor3.1-Priortothemorningoftheupgrade...)
-   [On Friday 2pm](#Upgradestepsfor3.1-OnFriday2pm)
-   [On Friday 5pm](#Upgradestepsfor3.1-OnFriday5pm)
-   [On Saturday Morning . . . Snapshot work](#Upgradestepsfor3.1-OnSaturdayMorning...Snapshotwork)
-   [The rest of Saturday . . . Upgrade work](#Upgradestepsfor3.1-TherestofSaturday...Upgradework)
-   [Sunday . . . Digi Ed core to test](#Upgradestepsfor3.1-Sunday...DigiEdcoretotest)
-   [Monday . . . DC migration](#Upgradestepsfor3.1-Monday...DCmigration)

## **Prior to the morning of the upgrade...**

**
**

#### Snapshot

All this initial work is done in the moodle core code prepared for the Snapshot and in the GIT repo   'branch\_15-16'

 

 

-   Add banner image to theme -&gt; ucl -&gt; pix
-   Add '15-16' to mydashboard.php       &lt;form method="get" action="/15-16/course/search.php"&gt;
-   Remove 'guest login' fron index\_from.php     comment out

``` java
<!--
                        <form id="guestlogin" method="post" action="<?php echo $CFG->httpthemewww;?>/login/index.php">
                            <div class="guestform">
                                <input type="hidden" value="guest" name="username">
                                <input type="hidden" value="guest" name="password">
                                <input type="submit" value="<?php echo get_string('loginguest');?>">
                            </div>
                        </form>
                        -->
```

**
**

**
**

**Moodle core work
**

**
**

**
**

-   Deploy the code to moodle-[def] and moodle-admin, and ensure permissions are correct.

    ``` bash
    cd /data/apache/htdocs/[vNEW]/ && \
    chown -R ccspmdl:ccsp . && \
    chmod -R 755 . && \
    find . -type f -exec chmod 644 {} + && \
    chmod 755 /data/apache/htdocs/[vNEW]/filter/tex/mimetex.linux
    ```

 

-   Disable Moodle cron on 'Admin' (newly deployed code).

        Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vNEW]/admin/cli/cron.php - comment-out cron_run().

 

-   Activate maintenance message on the INCOMING version (copy .htaccess_maint to .htaccess (moodle-[def]:/data/apache/htdocs/[vNEW]/)).

    ``` bash
    cp /data/apache/htdocs/[vNEW]/.htaccess_maint /data/apache/htdocs/[vNEW]/.htaccess
    ```

 

-   Copy local_settings.php file from previous release into the new folder.

    ``` bash
    cp /data/apache/htdocs/[vCURRENT]/local_settings.php /data/apache/htdocs/[vNEW]/local_settings.php
    ```

 

-   Create symlinks to ucl_tools/opcache-gui, on each of the moodle-[def] servers.

    ``` bash
    [ccspmdl@moodle-[def].ucl.ac.uk]
    cd /data/apache/htdocs/[vNEW]/ucl_tools/
    ln -s opcache-gui-2.1.0/ opcache-gui
    ```

    ## **On Friday 2pm**

-   Start posting 'countdown' messages on the Moodle alerts

         

    ## ****On Friday 5pm****

<!-- -->

-   Disable Moodle cron on 'Admin' - current (i.e. pre-upgrade) version.

        Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vCURRENT]/admin/cli/cron.php - comment-out cron_run(),

        ...or email is-webteam@ucl.ac.uk if available, and ask them to stop the Moodle cron job on moodle-admin.

     

 

-   Check that the 5:00pm cron does not run.

    ``` bash
    [ccspmdl@moodle-admin.ucl.ac.uk]
    tail -f /var/log/moodlecron/moodle-main.log
    ```

 

-   Put Moodle into maintenance mode.

                Site admin -> Server -> Maintenance mode
              

 

-   Activate maintenance message - copy .htaccess_maint to .htaccess (moodle-[def]:/data/apache/htdocs/[vCURRENT]/).

    ``` bash
    cp /data/apache/htdocs/[vCURRENT]/.htaccess_maint /data/apache/htdocs/[vCURRENT]/.htaccess
    ```

 

-   Ask Vivek/DBA Team to perform a full database backup. Also ask to break replication between live and snapshot

    ``` java
    From: Gagen, Tim 
    Sent: 26 January 2016 08:06
    To: Viswanathan, Vivek <vivek.viswanathan@ucl.ac.uk>
    Cc: +ISD.LTA-Learning <lta-learning@ucl.ac.uk>; +MS.Dbas <ms.dbas@live.ucl.ac.uk>
    Subject: Moodle upgrade - please backup the moodle_live database.

    Hi Vivek,

    Moodle is now in maintenance mode, and the cron job is not running. Please take a backup of the moodle_live database.

    Can you also break the replication between live and the snapshot databases.
     Thank you,

    LTA
    ```

-   Ask SnV to kick off the final Rsync from Moodle data to Moodle snapshot 15/16

     

    **While the database backup is running...**

         

<!-- -->

-   Rename the release directory, if necessary.

        This usually isn't necessary, depending on the type of release (i.e. initial release of a new version, or update to an existing release of a specific version).

     

<!-- -->

-   Reset OPcache on each of the app servers, to be safe...

        Visit the ucl_tools/opcache-gui page on each of the app servers, and click 'Reset cache' link...

        Moodle D: https://moodle-d.ucl.ac.uk/ucl_tools/opcache-gui/
              

        Moodle E: https://moodle-e.ucl.ac.uk/ucl_tools/opcache-gui/
              

        Moodle F: https://moodle-f.ucl.ac.uk/ucl_tools/opcache-gui/
              

    **Vivek should confirm that the backup completed successfully...  later Friday**

 

## ****On Saturday Morning . . . Snapshot work
****

     

     

-   Change cookie prefix to prevent session clashes (as more than one moodle instance on same server) : admin-&gt;server-&gt;session handling

<!-- -->

    eg uclmoodle2016_17

-   Disable self enrollment - Self enrollment has been disable to prevent students from self enrolling - [/admin/settings.php?section=manageenrols](https://moodle.ucl.ac.uk/admin/settings.php?section=manageenrols)
-   Swith off 'shutdown' user alert
-   Users &gt; Authentication &gt; Manage authentication &gt; Guest login button = Hide
-   Security &gt; Site policies &gt; Site policy URL = <http://moodle-archive.ucl.ac.uk/yy-yy/policy/about_the_archive.html> (update yy with 10-11, 11-12 etc)
-   Add the archive banner CSS to the Theme custom CSS

``` java
Modify
Settings -> Appearance -> Themes -> UCL -> General Settings
div#archivetopstrap{
    background: url(https://moodle-archive.ucl.ac.uk/15-16/theme/ucl/pix/banner.jpg);
    height: 60px;
}
```

 

 

-   Modify sitename
-   remove news from front page   -  Settings -&gt; Site Admin -&gt; Appearance -&gt; Themes -&gt; UCL -&gt; Frontpage news    - toggle news display 'never'
-   [SQL](https://wiki.ucl.ac.uk/display/ISMoodle/Archive+-+actions+required) !?
-   **mdl\_course** = set all guest access to 0 and all enrolment options to 0 – this disables all enrolments, guest functionality and student course ‘browsing’
-   Set all instances of **<http://moodle.ucl.ac.uk/*>** **to \*\*\*\***<http://moodle-archive.ucl.ac.uk/yy-yy*>\* **(where yy-yy is the academic year, like 10-11) - this means all the hard set links to files and resources are replaced with the archive location and not the live - otherwise there are authentication issues and general chaos.**

<!-- -->

-   Get rod to test
-   Remove maintenance.html and uncomment the link in index.php

<!-- -->

## **  **The rest of Saturday  . . . Upgrade work****

 

**Prepare outgoing moodle for upgrade**

 

Remove

-   mod-slideshow,
-   mod-TII V1  (approx 1 hour),
-   block elluminate (Blackboard collaborate),
-   block\_mass\_enroll,
-   block-accessibility - ALLOW ABOUT 2 hrs in total
-   Remove language customisations for tii V2   - turnitintooltwo.php      'Assignment (Turnitin - V2)'  becomes   'Assignment (Turnitin)'   and same for plurals
-   Edit lang string  admin "Show all courses"   to "Show all my courses"
-   Change the my home to show 'course overview'   Settings -&gt; Site Admin -&gt; Appearance -&gt; Default my home page     /my/indexsys.php      blocks editing on    add a block 'course overview'  drag it to right place and delete 'course'
-   Reset all portico mappings  Site Admin -&gt; Plugins -&gt; Blocks -&gt; Portico Enrolments   "Deactivate all"

 

-   Repoint the moodle symlink to '[vNEW]'.

        The easiest way is to edit the link in WinSCP.

     

<!-- -->

-   Run the upgrade!

-   Set up seeion with Tmux and screen

           

    or via command line - took 15 mins on DEV

     

-   sudo –u ccspwww /opt/rh/php54/root/usr/bin/php --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php --non-interactive

     

     

     

-   this took approx 25 mins on PP  - multianswer qtype and standard logstore take the longest

<!-- -->

-   Apply any required configuration settings. See settings page

     

<!-- -->

-   Edit lang string  admin "Dashboard"   to "My home"     in core
-   Edit lang string "Default Dashboard page" to "Default 'My home' page"
-   Check language strings - may need to do a lang pack update - 'MY home'

    ## **Sunday . . .  Digi Ed core to test**

-   When the upgrade has completed successfully, ask Digi-Ed Core to test.

     

     

    **Once Digi Ed confirm testing OK...**

 

 

-   Re-enable the cron job.

     

 

-   Check that the cron job completes successfully upon its next run...

    ``` bash
    [ccspmdl@moodle-admin.ucl.ac.uk]
    tail -f /var/log/moodlecron/moodle-main.log
    ```

        You can also list cron completions from today's logs (including time, memory usage and duration) by executing the following on moodle-admin...

    ``` bash
     grep -C1 'Cron completed' /var/log/moodlecron/moodle-main.log
    ```

## Monday . . .  DC migration

 

-   Look through LB laptop
-   We may need to remove htaccess - see June testing
-   Wait confirmation from DC migration

 

-   De-activate the maintenance message.

    ``` bash
    cp /data/apache/htdocs/[vNEW]/.htaccess_live /data/apache/htdocs/[vNEW]/.htaccess
    ```

-   
    -   Take Moodle out of maintenence mode.

            Site admin -> Server -> Maintenance mode

<!-- -->

-   Inform Digi-Ed Core + Service Desk that Moodle is live. Tell All to stand down + thanks

     

-   Complete SCP and RF release forms

     

 
