# Upgrade steps (example)

### **Page detailing steps for Moodle upgrade**

**N.B.:** This example assumes that no changes are required to the 'local\_settings.php' configuration file as part of the upgrade.

If changes *are* required, then these should be applied as appropriate to the version-controlled 'local\_settings\_template.php' file, and a new 'local\_settings.php' derived accordingly.

In the following instructions, **\[vCURRENT\]** and **\[vNEW\]** refer to the current (i.e. pre-upgrade), and newly-deployed (i.e. post-upgrade) Moodle directories, and should be substituted accordingly.

**         **

**          Prior to the morning of the upgrade...**

**
**

-   Deploy the code to moodle-[defg] and moodle-admin, and ensure permissions are correct.

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

    **On the morning of the upgrade...**

<!-- -->

-   Disable Moodle cron on 'Admin' - current (i.e. pre-upgrade) version.

        Update moodle-admin.ucl.ac.uk:/data/apache/htdocs/[vCURRENT]/admin/cli/cron.php - comment-out cron_run(),

        ...or email is-webteam@ucl.ac.uk if available, and ask them to stop the Moodle cron job on moodle-admin.

-   Check that the 8:00am cron does not run.

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

-   Ask Vivek/DBA Team to perform a full database backup.

    ``` java
    From: Gagen, Tim 
    Sent: 26 January 2016 08:06
    To: Viswanathan, Vivek <vivek.viswanathan@ucl.ac.uk>
    Cc: +ISD.LTA-Learning <lta-learning@ucl.ac.uk>; +MS.Dbas <ms.dbas@live.ucl.ac.uk>
    Subject: Moodle upgrade - please backup the moodle_live database.

    Hi Vivek,

    Moodle is now in maintenance mode, and the cron job is not running. Please take a backup of the moodle_live database.

    Thank you,
    t
    ```

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
              

    **When Vivek has confirmed that the backup completed successfully...**

-   Repoint the moodle symlink to '[vNEW]'.

        The easiest way is to edit the link in WinSCP.

<!-- -->

-   Run the upgrade!

                  Settings -> Site administration -> Notifications
              

-   Apply any required configuration settings. (Make a note of any new settings and add to SCP? - although this should have been done at DEV/UAT stage).

-   When the upgrade has completed successfully, ask Digi-Ed Core to test.

    **Once Digi Ed confirm testing OK...**

-   De-activate the maintenance message.

    ``` bash
    cp /data/apache/htdocs/[vNEW]/.htaccess_live /data/apache/htdocs/[vNEW]/.htaccess
    ```

-   Take Moodle out of maintenence mode.

                    Site admin -> Server -> Maintenance mode 

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

<!-- -->

-   Inform Digi-Ed Core that Moodle is live. Tell Vivek to stand down.

-   Complete SCP and RF release forms


