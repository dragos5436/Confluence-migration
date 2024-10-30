# How to Test CMIS integration in MIM

## Testing in PreProd

-   SSH to Moodle MIM PreProd server [mdl-admin01p.ad.ucl.ac.uk](http://mdl-admin01p.ad.ucl.ac.uk)
-   create a test folder in you home directory
-   run git clone <git@git.automation.ucl.ac.uk>:moodle/moodle\_integration\_manager
-   In /moodle\_int\_management/app/Config folder view connection details with vi datababase.php and change accordingly. For CMIS change database to GENU and password where necessary
-   Back in app Run command Console/cake RunCmis runCmisCronJob
-   Wait for results


