# Moodle Snapshot Upgrade Process

## Preparation:

In preview:

-   -   Dry run upgrade in preview
    -   Check test results in Jenkins and see if new errors have been introduced by the new build.

-   CR - clone previous snapshot upgrade ticket. Submit for SOM approval using queue ISD.SOM.Learning and Media apps (Goes to Alistair Spark, Deborah O, James F, etc.)
-   Send TBC calendar invite for date time of upgrade outage to <rde.learning@ucl.ac.uk> and Anisa Patel, Zaman Wong, Tom Walters, Pauline Harding, Jason Norton. 
-   Request ISD news item
-   Once CR is approved update the calendar invite with Confirmed CR\#

### Once you are happy with the build start snapshot upgrade preparation.

-   Go to /data/apache/htdocs/ & clone snapshot dir-root in new folder with git clone git@github.com:ucl-isd/dirroot-snapshot\_index\_page.git 3-11-14
-   In the folder created above copy build from preview to snapshot (look for the latest build number from Jenkins and create a zip file for it)
-   unzip, mv build in folder with the right snapshot name. Unzip again until all instances are created x4
-   copy config.php from current build to new build folder x4

In Moodle:

Schedule outage manager warning to start 30mins before start of Moodle planned maintenance
    Go to Site administration-&gt; Plugins-&gt; Authentication-&gt; Outage manager

-   17/18
-   18/19
-   19/20
-   20/21    

## On the day of upgrade:

Put Moodle into maintenance mode. x4
    Site administration-&gt; Server-&gt; Maintenance mode

-   17/18
-   18/19
-   19/20
-   20/21    

Point to the new version of Moodle with mv moodle moodle-old && mv moodle-3-11-14 moodle

Optional: Apply .htaccess redirect to ISD News maintenance page x4

-   update .htaccess to news item
    -   mv .htaccess\_maint .htaccess 
            - if you have file persmission issues just copy the .htaccess\_maint file to the newly created Moodle folders and update the symlinks

<!-- -->

-   -   17/18
    -   18/19
    -   19/20
    -   20/21    

- If applied remove .htaccess redirect to ISD News maintenance page x4
    mv .htaccess .htaccess\_maint 
- Upgrade moodle through web interface x4
- Check and confirm that the expected changes have taken effect (post-change testing). x4
- Take Moodle out of maintenance mode. x4

Mark the CR as successful and send update in the Teams VLE team→ Moodle channel

### 
Hints:

Access server:

ssh mdl-preview01u.ad.ucl.ac.uk -l 'username' (preview server)

ssh mdl-snpsht-ap01.ad.ucl.ac.uk -l 'username' (snapshot)

Copy from one server to another command:

   scp artefact-cicd-moodlesnapshot-3517-release-Mar-2021.zip [cceanbo@](mailto:cceanbo@ad.ucl.ac.uk)[mdl-snpsht-ap01](http://mdl-snpsht-ap01/data/apache/htdocs/moodle).[ad.ucl.ac.uk](mailto:cceanbo@ad.ucl.ac.uk)[:/data/apache/htdocs/moodle](http://mdl-snpsht-ap01/data/apache/htdocs/moodle)

Move command:

   mv cicd-moodlesnapshot-3517-release-Mar-2021 moodle-snapshot-site-3517-release-March-2021-17-18

Update symlink
    ln -snf path linkname 
    ln -snf /data/apache/htdocs/cicd-moodlesnapshot-3516-release-Jan-2021\_nb snap3516

Removing symlink:
    rm &lt;symlink name&gt; without /
    
Rename folder
    mv oldname newname (eg. mv moodle moodle-31112 && mv moodle-31113 moodle)
    
Copy config.php
    cp config.php /folder
    
Delete file
    rm filename 

Delete multiple non-empty write-protected folders 

    rm -rf foldername1 foldername2 foldername3

Zip folder into file

    zip -r zipname.zip foldername

Unzip file

   unzip zipname.zip

Moodle login - /login/index.php

chmod -R 777 directory - give correct permission to moodle root dir
    
Moodle dir in snapshot
/data/apache/htdocs/moodle/

to copy snapshot zip file into snapshot server:

1) cd into folder where you want to copy
2) run: aws s3 cp --profile s3access s3://mdl-buildzip-test-out/moodle\_zip/artefact-SNAPSHOT\_43-2019.zip .

Snapshot error log location: /var/log/httpd/ssl\_error\_log

Example ISD News item -<https://www.ucl.ac.uk/isd/news/2022/dec/moodle-snapshot-maintenance-9-5pm-20-december-2022>
