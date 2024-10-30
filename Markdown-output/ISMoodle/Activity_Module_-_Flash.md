# Activity Module - Flash

Information can be found at

-   <http://jamiep.org/course/view.php?id=6>
-   <http://docs.moodle.org/en/Flash_module>
-   <http://moodle.org/mod/data/view.php?d=13&rid=323>

Check that the Flash module is not already installed at <http://moodle.ucl.ac.uk/admin/modules.php>

## If you had flash installed on a previous version of your moodle installation (e.g. before you upgraded): 

On the current live Moodle 1.9 service flash is listed on this page out of alphabetical order and with a lower case 'f'. This is because there are references to flash in the Moodle database but there is no flash folder at /data/apache/htdocs/moodle/mod/

In order to get flash running on Moodle: copy the /data/apache/htdocs/moodle-184-2008-06-23/mod/flash folder to /data/apache/htdocs/moodle/mod/ and go to the Notfications page. Although this should be low risk it may be worth waiting for an outage to do this on the live server.

You will also need to copy the languages files to /data/apache/htdocs/moodle/lang

## To install flash from scratch (if you have never had it installed in your Moodle installation)

Download the flash zip file into the /data/apache/htdocs/moodle/mod folder. To do this I downloaded it to my R: drive and used FTP to move it onto the moodle server as it would not download properly using wget. Unzip the file and a new flash folder will be created in the modfolder.
Move the language files from /data/apache/htdocs/moodle/mod/flash/langto data/apache/htdocs/moodle/lang

Go to the web browser and click on 'notifications' to run the admin page and complete the install, a series of database changes will be made.
