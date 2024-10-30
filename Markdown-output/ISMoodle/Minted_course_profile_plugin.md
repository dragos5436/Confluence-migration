# Minted course profile plugin

Note added on 28/05/08: It has been found that adding this plugin to Moodle 1.9 stops new courses being created properly. We think this is something in the moodle/course/lib.php file. This needs to be investigated further but in the meantime this plugin has been un-installed for <http://moodle-test.ucl.ac.uk> (on 28/05/08 at 16:00).
The files listed in the table below as overwriting existing Moodle files have been restored from the backups eg original files had the date *.php.20080519* appended to them. The minted course profile editions of these files are now saved as *.php.20080528*

# To install this plugin

-   Download the files from <https://studydirect.sussex.ac.uk/downloads> (there is a different version of this plugin for each version of Moodle).
-   Move the file to the /home.local/ccspmdl/ folder to be uncompressed (the instructions advise you move it to the moodle folder, but as this overwrites some of the existing files it is best to move them manually)
-   Decompress the file using the following command:
    ``` java
    tar -xzvf <minted_courseprofile.tar.gz>
    ```

    (using the file name of the file you have just downloaded)
-   Look at the table below and create backups of the files that will be overwritten
    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th><p>file name</p></th>
    <th><p>status</p></th>
    <th><p> </p></th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>admin/index.php</p></td>
    <td><p>existing file - backup first<br />
    </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/settings/courses.php</p></td>
    <td><p>existing file - backup first</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>admin/profiles/</p></td>
    <td><p>new folder/files<br />
    </p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/profiles/courseprofile/</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>admin/profiles/courseprofile/db/</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/profiles/courseprofile/db/mysql.sql</p></td>
    <td><p>new folder/files</p></td>
    <td><p>makes new DB table: <strong>mdl_course_default</strong></p></td>
    </tr>
    <tr class="odd">
    <td><p>admin/profiles/courseprofile/db/mysql.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/profiles/courseprofile/version.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>admin/profiles/blocksetting.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/profiles/block_edit_form.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>admin/profiles/course_edit_form.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>admin/profiles/coursesettings.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>course/edit.php</p></td>
    <td><p>existing file - backup first</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="even">
    <td><p>course/edit_form.php</p></td>
    <td><p>existing file - backup first</p></td>
    <td><p> </p></td>
    </tr>
    <tr class="odd">
    <td><p>course/lib.php</p></td>
    <td><p>existing file - backup first</p></td>
    <td><p>Beware, this file is also changed when you install <a href="Block_-_Activity_Locking">Activity Locking</a> - they may overwrite each other!<br />
    </p></td>
    </tr>
    <tr class="even">
    <td><p>lang/en_utf8/profiles.php</p></td>
    <td><p>new folder/files</p></td>
    <td><p> </p></td>
    </tr>
    </tbody>
    </table>

-   Go to the web browser and click on 'notifications' to run the admin page and complete the install.

The plugin instructions advise that if you uncompress the file in your 'moodle' directory it will put all the files in the right place (overwriting some files but not giving you a chance to backup first!). When I tried this on the moodle-test server last time it brought the whole moodle installation down and I had to start the installation again from scratch. Copying the files in manually seems to install the plugin successfully.

# **To test this:**

Go to Admin &gt; Courses and you should see a new Default Settings option.
