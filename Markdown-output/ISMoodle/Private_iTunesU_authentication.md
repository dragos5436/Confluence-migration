# Private iTunesU authentication

The private iTunesU authentication relies  on three files:

-   The list of courses obtained each day from SITS: */nfs/rcs/sysman/cso/sits/webct\_SIS.xml*
-   A list of courses that make use of iTunesU authentication: */nfs/rcs/sysman/cso/sits\_extra/required\_courses.*
-   A list of additional courses and the userids that need access to the courses: */nfs/rcs/sysman/cso/sits\_extra/extra\_webct\_SIS.* This file is used to add userids to existing SITS courses, if they are not in the SITS data, or to add courses that are not in the SITS data.

Once a day, the script *extract-sits-data-pl* runs on the wwwa-a/c machines. For each of the required courses, it extracts the list of userids from the SITS data and adds the extra entries, and outputs the file */applications/data/itunes/module-data*. This file contains a list of userids and the courses that they are on.

The PHP script to perform the authentication and access control is  */applications/data/apache/htdocs/itunes-private/index.php*.  This script reads the 'module-data' file to decide whether the user is allowed access to the course. The PHP script is in a directory that is protected by Shibboleth authentication.

