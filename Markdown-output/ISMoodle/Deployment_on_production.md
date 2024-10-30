# Deployment on production

# Deployment

add the following to local\_settings.php

//-----------------------------

// UCL SITS Filter 2 database.

//-----------------------------

$LS-&gt;ucl\_sf2\_dbname = 'moodle\_sits\_management\_2';

add the following to config.php

// UCL SITS Filter 2 database.

$CFG-&gt;ucl\_sf2\_dbname = $LS-&gt;ucl\_sf2\_dbname;

## Portico enrolment block

export <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/trunk/moodle/blocks/portico_enrolments/> to /data/apache/htdocs/moodle\_vxxx/blocks/portico\_enrolments

go to [https://moodle.ucl.ac.uk/admin/index.php](https://v267.moodle-dev.ucl.ac.uk/admin/index.php) and select 'upgrade moodle database now'

Enable the block by clicking on the eye for Portico Enrolments in Site administration&gt;Plugins&gt;Blocks&gt;Manage blocks.

 

## Database schema

checkout [https://svn.ucl.ac.uk/projects/isd/moodle-sits-filter-2/browser/trunk/documentation/releases/Releasex.x.sql](https://svn.ucl.ac.uk/projects/isd/moodle-sits-filter-2/browser/trunk/documentation/releases/Release%201.2.sql) and ensure that the correct database is reference as the same file is used for prod, uat and dev.

Run the sql specified in the file

Code

checkout from <https://svn.ucl.ac.uk/repos/isd/moodle-sits-filter-2/trunk/moodle-admin/usr/local/sits_filter2/> it needs to be installed on moodle-admin in /usr/local/sits\_filter2/

Before deploying the code, ensure app/Config/database.php has the correct database settings.

 
