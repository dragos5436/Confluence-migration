# Production deployment initial setup

When
task
 
 
**Before 8th September 2015**
 
Configure Moodle with REST web-service

 
 
 
Enable the webservice and protocols
 
 
 
Create the webservice user and disable email
 
 
 
Create a new role
 
 
 
Create a new webservice and add external functions
 
 
 
Authorise the user for the webservice
 
 
 
Generate the token
 
 
**Tuesday 8th September 2015**
 

 

 

Deploy the CMIS group import code from <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_release/> to /usr/local/sits\_filter2/ on moodle-admin.

 
 
 
Deploy the code for the Portico Enrolments block <https://svn.ucl.ac.uk/repos/isd/moodle28/branches/moodle_ucl-develop/blocks/portico_enrolments>
to /data/apache/moodle-vhosts/v287/blocks on moodle-d/e/f and moodle-admin.
 
 
 
Create the tables in moodle\_sits\_management\_2 on moodle-db-a from<https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/branches/moodle-sits-filter-2_release/documentation/>.
 
 
 
Modify the following configuration files in /usr/local/sits\_filter2/app/Config:-

    /usr/local/sits_filter2/app/Config/config_settings.php

    /usr/local/sits_filter2/app/Config/database.php

    /usr/local/sits_filter2/app/Controller/RestConfig.php

 
 
 
Add the following to /data/apache/moodle-vhosts/v287/config.php on moodle-d/e/f moodle-admin:-

    /data/apache/moodle-vhosts/v287/config.php

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
