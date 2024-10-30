# Activity Module - Questionnaire

Information on the Questionnaire Module can be found at: <http://moodle.org/mod/data/view.php?d=13&rid=84>

Check that the Questionnaire module is not already installed at <http://moodle.ucl.ac.uk/admin/modules.php>

## Installing the plugin after a Moodle upgrade if it was previously installed on our Moodle server:

We already had the questionnaire plugin installed in Moodle as part of 1.8.4. When we upgraded to Moodle1.9 this plugin is not included as part of the Moodle core code, but as the database has references to it, Moodle complains.

When you go to Administration &gt; Modules &gt; Activities &gt; Manage activities it lists 'questionnaire' at the end of the list (rather than in alphabetical order) and with a lower case 'q'. It may suggest you delete the questionnaire activity but **don't** do this as it will delete all references to it in the database, and delete all questionnaire content from users courses.

To over come this copy the moodle-backup/mod/questionnaire folder from the moodle folder that you backed up before you began the installation to the newly created (when you untarred the moodle core files) moodle/mod folder.

Copy the lang files to /moodle/lang/

Go to Notifications

Go to Administration &gt; Modules &gt; Activities &gt; Manage activities and you should see it listed there in alphabetical order and with a capital Q.

## Installing the plugin for the first time:

Download the questionnairezip file into the /data/apache/htdocs/moodle/mod folder using wget and unzip the file.

A new questionnairefolder will be created in the mod folder.

Move the language files from /data/apache/htdocs/moodle/mod/questionnaire/langto data/apache/htdocs/moodle/lang

Go to the web browser and click on 'notifications' to run the admin page and complete the install, a series of database changes will be made.

**Know Issues**

When using IE6/FF, viewing all the responses in a questionnaire does not display correctly. There's a line under the 2nd menu bar that should be displayed in FF. In IE it is only partially displayed.

When creating questions for the questionnaire, the 'possible answers box' does not display the first character in each line. The fix for this is to edit

file \\moodle\\mod\\questionnaire\\styles.php add the line in red

div.qoptcontainer div.ftextarea textarea.qopts {

width: 600px;

height: 10em;

margin-left: 1px;

}
