# Upgrade steps for 3.1.5

# **Page detailing steps for Moodle 3.1.5 upgrade**

**N.B.:** This example assumes that no changes are required to the 'local\_settings.php' configuration file as part of the upgrade.

If changes *are* required, then these should be applied as appropriate to the version-controlled 'local\_settings\_template.php' file, and a new 'local\_settings.php' derived accordingly.

In the following instructions, **\[vCURRENT\]** and **\[vNEW\]** refer to the current (i.e. pre-upgrade), and newly-deployed (i.e. post-upgrade) Moodle directories, and should be substituted accordingly.

**   
**

**AHEAD of time
**

**Moodle core work**

-   Deploy the code to moodle-[def] and moodle-admin, and ensure permissions are correct.

    Take code from GIT -

    The code block below need to be reviewed. It cannot work because one file, "robots.txt", belongs to the user 'root'.

    ~~`cd` `/data/apache/htdocs/``[vNEW]/ && \ `~~

    ~~`chown` `-R ccspmdl:ccsp . && \ `~~

    ~~`chmod` `-R 755 . && \ `~~

    ~~`find` `. -``type` `f -``exec` `chmod` `644 {} + && \ `~~

    ~~`chmod` `755 ``/data/apache/htdocs/``[vNEW]``/filter/tex/mimetex``.linux`~~

         **Make sure the latex filter is executable:**

       

-   `chmod` `755 ``/data/apache/htdocs/``[vNEW]``/filter/tex/mimetex``.linux`
-   Disable Moodle cron on 'Admin' (newly deployed code).

        Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vNEW]/admin/cli/cron.php - comment-out cron_run().

<!-- -->

-   Copy local_settings.php file from previous release into the new folder. Also copy config.php from [vCURRENT] to [vNEW]

    ``` bash
    cp /data/apache/htdocs/[vCURRENT]/local_settings.php /data/apache/htdocs/[vNEW]/local_settings.php
    ```

-   Create symlinks to ucl_tools/opcache-gui, on each of the moodle-[def] servers.

    ``` bash
    [ccspmdl@moodle-[def].ucl.ac.uk]
    cd /data/apache/htdocs/[vNEW]/ucl_tools/
    ln -s opcache-gui-2.1.0/ opcache-gui
    ```

         

    ## ****On Tuesday 7:30am****

<!-- -->

-   Disable Moodle cron on 'Admin' - current (i.e. pre-upgrade) version.

        Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vCURRENT]/admin/cli/cron.php - comment-out cron_run(),

        ...or email is-webteam@ucl.ac.uk if available, and ask them to stop the Moodle cron job on moodle-admin.

-   Check that the 7:40am cron does not run. (Optional)

    ``` bash
    [ccspmdl@moodle-admin.ucl.ac.uk]
    tail -f /var/log/moodlecron/moodle-main.log
    ```

-   Put Moodle into maintenance mode.

                Site admin -> Server -> Maintenance mode       

<!-- -->

-   Ask Vivek/DBA Team to perform a full database backup.

    ``` java
     
    ```

    **When Vivek confirms DB operations complete approx 8:30am
    **

         

<!-- -->

-   Reset OPcache on each of the app servers, to be safe...

        Visit the ucl_tools/opcache-gui page on each of the app servers, and click 'Reset cache' link...

        Moodle D: https://moodle-d.ucl.ac.uk/ucl_tools/opcache-gui/
              

        Moodle E: https://moodle-e.ucl.ac.uk/ucl_tools/opcache-gui/
              

        Moodle F: https://moodle-f.ucl.ac.uk/ucl_tools/opcache-gui/
              

-   Repoint the moodle symlink to '[vNEW]'. On all servers admin plus d,e,f

        The easiest way is to edit the link in WinSCP.

<!-- -->

-   Run the upgrade!

        Go to moodle, log in.    moodle.ucl.ac.uk/login

        New version should be detected. Click through the OK's

           

    or via command line

    sudo –u ccspwww /opt/rh/php54/root/usr/bin/php --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php --non-interactive

<!-- -->

-   Apply any required configuration settings. Leave on defaults. Make a note of new settings - reference PP if needed.

    **These can be done after the upgrade**

    Collaborate Ultra - copy from 315 UAT      <https://v315.moodle-uat.ucl.ac.uk/admin/settings.php?section=modsettingcollaborate>

    ALP, Media Cental

    **When the upgrade has completed successfully,**

<!-- -->

-   Purge caches      go to     /admin/purgecaches.php

    **Run the following command on all servers; moodle-{d,e,f,g,admin}**

-   sudo -u ccspwww  /usr/bin/php /data/apache/htdocs/moodle/admin/cli/alternative\_component\_cache.php --rebuild
-   Check lang string  admin    "My home"     is showing not   "Dashboard"

-   ask Digi-Ed Core to test.

    Digi Ed has to use: https://moodle.ucl.ac.uk/login/

    **Once Digi Ed confirm testing OK...**

-   Re-enable the cron job. Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vCURRENT]/admin/cli/cron.php - uncomment cron_run().

-   Check that the cron job completes successfully upon its next run...

        You can also list cron completions from today's logs (including time, memory usage and duration) by executing the following on moodle-admin...

-   Take Moodle out of maintenence mode.

    [Site admin -&gt; Server -&gt; Maintenance mode](https://moodle.ucl.ac.uk/admin/settings.php?section=maintenancemode)

-   Inform Digi-Ed Core + Service Desk that Moodle is live. Tell All to stand down + thanks

-   Complete RF Change ticket


