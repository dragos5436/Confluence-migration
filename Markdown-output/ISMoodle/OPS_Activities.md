# OPS Activities

The following Releases need to be checked **before each sprint** to capture updates that need to be applied:

-   <https://git.mahara.org/catalyst/mahara/-/releases> 
-   <https://docs.docker.com/engine/release-notes/>
-   <https://moodledev.io/general/releases#version-support>
-   <https://dev.mysql.com/doc/relnotes/mysql/8.0/en/>
-   <https://github.com/SafeExamBrowser/seb-win-refactoring/releases> - if there is a new SEB version browser follow [Moodle Safe Exam Browser process](Moodle_Safe_Exam_Browser_process) to get it installed in PC cluster rooms.

Review vulnerabilities identified here

-   <https://vulnerability-assessment.ucl.ac.uk/group.jsp?groupid=118>
-   <https://artifact-repository.automation.ucl.ac.uk/ui/scans-list/repositories/isd-docker-local/scan-descendants>

Moodle Monitoring:

-   <https://moodle.ucl.ac.uk/report/courserollover/> → acknowledge rollovers which have taken place through separate requests, try re-running or contacting the requestor to try a new rollover request & investigate cause of failure.
-   Marks Transfer error report → tbc
-   MIM email notifications - SITS Filter and  CMIS groups processing need to complete without errors on daily basis.
-   LDAP user sync and Entra user sync jobs - need to run successfully on daily basis
-   new relic monitoring Moodle and Extend

**PHP EOL - <https://www.php.net/supported-versions.php>**

8.0 EOL = November 2023

8.1 EOL = November 2024

8.2 EOL = November 2025

Cyclical

Moodle - Global Deactivation SITS (Portico) Enrolment - Termly - x? weeks after start of term

Moodle SITS year switchover - yearly early August (after confirmation from SITS team)

All services - Renew TLS certificates 

| Service                                                        | next renewal     | where                                                                                                                                                                    |
|----------------------------------------------------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| moodle.ucl.ac.uk                                               | 26 Nov 2024      | Catalyst/AWS & Cloudflare [Renewing SSL Certificate for Moodle in Cloudflare](https://wiki.ucl.ac.uk/display/ISMoodle/Renewing+SSL+Certificate+for+Moodle+in+Cloudflare) |
| reflect.ucl.ac.uk                                              | N/A              | CampusPress  - they are now using the Let's Encrypt CA and it's automated renewal process                                                                                |
| moodle-snapshot.ucl.ac.uk                                      | 8 June 2025      | F5                                                                                                                                                                       |
| moodle-staging.ucl.ac.uk                                       | 11 June 2025     | Catalyst/AWS & Cloudflare [Renewing SSL Certificate for Moodle in Cloudflare](https://wiki.ucl.ac.uk/display/ISMoodle/Renewing+SSL+Certificate+for+Moodle+in+Cloudflare) |
| \*.[preview-moodle.ucl.ac.uk](http://preview-moodle.ucl.ac.uk) | 29 June 2025     | AWS                                                                                                                                                                      |
| wiki-test.ucl.ac.uk                                            | 26 October 2024  | <https://git.automation.ucl.ac.uk/wiki/wiki-cicd/-/tree/master/wiki-ansible/certs>                                                                                       |
| wiki-pp.ucl.ac.uk    <br>                                         
                                                                 
 myportfolio-pp.ucl.ac.uk   <br>                                     
                                                                 
 ~~opinio-pp.ucl.ac.uk~~                                         | 26 October 2024  | F5                                                                                                                                                                       |
| [myportfolio.ucl.ac.uk](http://myportfolio.ucl.ac.uk)   <br>       
                                                                 
 ~~[opinio.ucl.ac.uk](http://opinio.ucl.ac.uk)~~   <br>              
                                                                 
 [wiki.ucl.ac.uk](https://wiki.ucl.ac.uk/)                       | 14 November 2024 | F5                                                                                                                                                                       |


