# Plugin functions run during cron

The plugin functions that are run as part of cron

\\lib\\classes\\task\\legacy\_plugin\_cron\_task.php

-- goes through all plugins, blocks, activity modules etc

Targets

    Occurrences of '\_cron(' in Directory N:\\Git\\moodleucl

Found Occurrences  (95 usages found)

    Unclassified occurrence  (81 usages found)

        moodleucl  (81 usages found)

            admin\\tool\\coursebank  (3 usages found)

                lib.php  (3 usages found)

                    57 function tool\_coursebank\_cron() {

                    72 $canrun = tool\_coursebank\_can\_run\_cron($type);

                    109 function tool\_coursebank\_can\_run\_cron($type) {

            badges  (5 usages found)

                cron.php  (5 usages found)

                    30 function badge\_cron() {

                    34 badge\_review\_cron();

                    35 badge\_message\_cron();

                    45 function badge\_review\_cron() {

                    94 function badge\_message\_cron() {

            calendar  (1 usage found)

                lib.php  (1 usage found)

                    3308 function calendar\_cron() {

            calendar\\tests  (2 usages found)

                lib\_test.php  (2 usages found)

                    93 calendar\_cron();

                    112 calendar\_cron();

            lib  (6 usages found)

                deprecatedlib.php  (3 usages found)

                    2262 function completion\_cron() {

                    3704 function tag\_cron() {

                    4118 function events\_cron($eventname='') {

                gradelib.php  (1 usage found)

                    1521 function grade\_cron() {

                plagiarismlib.php  (1 usage found)

                    167 function plagiarism\_cron() {

                portfoliolib.php  (1 usage found)

                    937 function portfolio\_cron() {

            lib\\classes\\task  (6 usages found)

                badges\_cron\_task.php  (1 usage found)

                    48 badge\_cron();

                calendar\_cron\_task.php  (1 usage found)

                    49 calendar\_cron();

                events\_cron\_task.php  (1 usage found)

                    45 events\_cron();

                grade\_cron\_task.php  (1 usage found)

                    48 grade\_cron();

                plagiarism\_cron\_task.php  (1 usage found)

                    48 plagiarism\_cron();

                portfolio\_cron\_task.php  (1 usage found)

                    49 portfolio\_cron();

            local\\testaccount\_automation  (1 usage found)

                lib.php  (1 usage found)

                    121 function local\_testaccount\_automation\_cron(){

            local\\userprofilefields\_import  (1 usage found)

                lib.php  (1 usage found)

                    32 function local\_userprofilefields\_import\_cron() {

            mod  (1 usage found)

                README.txt  (1 usage found)

                    34          modulename\_cron()

            mod\\assign  (1 usage found)

                lib.php  (1 usage found)

                    1025 function assign\_cron() {

            mod\\assign\\tests  (2 usages found)

                locallib\_test.php  (2 usages found)

                    1114 public function test\_cron() {

                    1157 public function test\_markingworkflow\_cron() {

            mod\\cpblog  (1 usage found)

                lib.php  (1 usage found)

                    134 function cpblog\_cron() {

            mod\\cpcontentitem  (1 usage found)

                lib.php  (1 usage found)

                    134 function cpcontentitem\_cron() {

            mod\\cppodcast  (1 usage found)

                lib.php  (1 usage found)

                    134 function cppodcast\_cron() {

            mod\\cpprivatejournal  (1 usage found)

                lib.php  (1 usage found)

                    134 function cpprivatejournal\_cron() {

            mod\\cpwiki  (1 usage found)

                lib.php  (1 usage found)

                    134 function cpwiki\_cron() {

            mod\\elluminate  (2 usages found)

                forcecron.php  (1 usage found)

                    13 elluminate\_cron();

                lib.php  (1 usage found)

                    80 function elluminate\_cron() {

            mod\\forum  (1 usage found)

                lib.php  (1 usage found)

                    452 function forum\_cron() {

            mod\\forum\\classes\\task  (1 usage found)

                cron\_task.php  (1 usage found)

                    45 forum\_cron();

            mod\\forum\\tests  (5 usages found)

                mail\_test.php  (4 usages found)

                    215 forum\_cron();

                    244 forum\_cron();

                    803 forum\_cron();

                    1093 forum\_cron(); // It's really annoying that we have to run cron to test this.

                maildigest\_test.php  (1 usage found)

                    162 forum\_cron();

            mod\\hsuforum  (1 usage found)

                lib.php  (1 usage found)

                    469 function hsuforum\_cron() {

            mod\\hsuforum\\classes\\task  (1 usage found)

                cron\_task.php  (1 usage found)

                    45 hsuforum\_cron();

            mod\\hsuforum\\tests  (5 usages found)

                mail\_test.php  (4 usages found)

                    213 hsuforum\_cron();

                    242 hsuforum\_cron();

                    834 hsuforum\_cron();

                    1123 hsuforum\_cron(); // It's really annoying that we have to run cron to test this.

                maildigest\_test.php  (1 usage found)

                    175 hsuforum\_cron();

            mod\\quiz  (1 usage found)

                lib.php  (1 usage found)

                    548 function quiz\_cron() {

            mod\\quiz\\accessrule  (1 usage found)

                upgrade.txt  (1 usage found)

                    20 function quizaccess\_mypluginname\_cron() {};

            mod\\quiz\\report  (2 usages found)

                upgrade.txt  (2 usages found)

                    16 called quiz\_myreportname\_cron(). The statistics report is an example of how

                    46 function quiz\_myreportname\_cron() {};

            mod\\quiz\\report\\statistics  (1 usage found)

                lib.php  (1 usage found)

                    66 function quiz\_statistics\_cron() {

            mod\\turnitintooltwo  (1 usage found)

                lib.php  (1 usage found)

                    623 function turnitintooltwo\_cron() {

            mod\\turnitintooltwo\\classes\\task  (1 usage found)

                turnitintooltwo\_task.php  (1 usage found)

                    42 turnitintooltwo\_cron();

            mod\\wiki  (1 usage found)

                lib.php  (1 usage found)

                    339 function wiki\_cron() {

            mod\\workshop  (1 usage found)

                lib.php  (1 usage found)

                    1006 function workshop\_cron() {

            mod\\workshop\\allocation\\scheduled  (1 usage found)

                lib.php  (1 usage found)

                    254 function workshopallocation\_scheduled\_cron() {

            plagiarism  (2 usages found)

                lib.php  (1 usage found)

                    110 public function plagiarism\_cron() {

                upgrade.txt  (1 usage found)

                    5 1) The plagiarism\_plugin::plagiarism\_cron() and plagiarism\_plugin::cron() methods have been deprecated.

            question  (1 usage found)

                previewlib.php  (1 usage found)

                    335 function question\_preview\_cron() {

            question\\behaviour  (1 usage found)

                upgrade.txt  (1 usage found)

                    75 function qbehaviour\_mypluginname\_cron() {};

            question\\engine  (3 usages found)

                bank.php  (2 usages found)

                    423 question\_preview\_cron();

                    427 question\_usage\_statistics\_cron();

                statisticslib.php  (1 usage found)

                    32 function question\_usage\_statistics\_cron() {

            question\\format  (1 usage found)

                upgrade.txt  (1 usage found)

                    7 function qformat\_mypluginname\_cron() {};

            question\\tests  (3 usages found)

                previewlib\_test.php  (3 usages found)

                    68 public function test\_question\_preview\_cron() {

                    77 question\_preview\_cron();

                    105 question\_preview\_cron();

            question\\type  (1 usage found)

                upgrade.txt  (1 usage found)

                    165 function qtype\_mypluginname\_cron() {};

            repository\\dropbox  (1 usage found)

                lib.php  (1 usage found)

                    949 function repository\_dropbox\_cron() {

            repository\\filesystem  (1 usage found)

                lib.php  (1 usage found)

                    860 function repository\_filesystem\_cron() {

|                               |                                                          |
|-------------------------------|----------------------------------------------------------|
| **component**                 | **classname**                                            |
| moodle                        | \\core\\task\\session\_cleanup\_task                     |
| moodle                        | \\core\\task\\delete\_unconfirmed\_users\_task           |
| moodle                        | \\core\\task\\delete\_incomplete\_users\_task            |
| moodle                        | \\core\\task\\backup\_cleanup\_task                      |
| moodle                        | \\core\\task\\tag\_cron\_task                            |
| moodle                        | \\core\\task\\context\_cleanup\_task                     |
| moodle                        | \\core\\task\\cache\_cleanup\_task                       |
| moodle                        | \\core\\task\\messaging\_cleanup\_task                   |
| moodle                        | \\core\\task\\send\_new\_user\_passwords\_task           |
| moodle                        | \\core\\task\\send\_failed\_login\_notifications\_task   |
| moodle                        | \\core\\task\\create\_contexts\_task                     |
| moodle                        | \\core\\task\\legacy\_plugin\_cron\_task                 |
| moodle                        | \\core\\task\\grade\_cron\_task                          |
| moodle                        | \\core\\task\\events\_cron\_task                         |
| moodle                        | \\core\\task\\portfolio\_cron\_task                      |
| moodle                        | \\core\\task\\plagiarism\_cron\_task                     |
| moodle                        | \\core\\task\\calendar\_cron\_task                       |
| moodle                        | \\core\\task\\blog\_cron\_task                           |
| moodle                        | \\core\\task\\question\_cron\_task                       |
| moodle                        | \\core\\task\\registration\_cron\_task                   |
| moodle                        | \\core\\task\\check\_for\_updates\_task                  |
| moodle                        | \\core\\task\\cache\_cron\_task                          |
| moodle                        | \\core\\task\\automated\_backup\_task                    |
| moodle                        | \\core\\task\\badges\_cron\_task                         |
| moodle                        | \\core\\task\\file\_temp\_cleanup\_task                  |
| moodle                        | \\core\\task\\file\_trash\_cleanup\_task                 |
| moodle                        | \\core\\task\\stats\_cron\_task                          |
| moodle                        | \\core\\task\\password\_reset\_cleanup\_task             |
| mod\_forum                    | \\mod\_forum\\task\\cron\_task                           |
| mod\_hsuforum                 | \\mod\_hsuforum\\task\\cron\_task                        |
| enrol\_imsenterprise          | \\enrol\_imsenterprise\\task\\cron\_task                 |
| tool\_langimport              | \\tool\_langimport\\task\\update\_langpacks\_task        |
| tool\_messageinbound          | \\tool\_messageinbound\\task\\pickup\_task               |
| tool\_messageinbound          | \\tool\_messageinbound\\task\\cleanup\_task              |
| tool\_monitor                 | \\tool\_monitor\\task\\clean\_events                     |
| logstore\_legacy              | \\logstore\_legacy\\task\\cleanup\_task                  |
| logstore\_standard            | \\logstore\_standard\\task\\cleanup\_task                |
| editor\_atto                  | \\editor\_atto\\task\\autosave\_cleanup\_task            |
| report\_customsql             | \\report\_customsql\\task\\run\_reports                  |
| moodle                        | \\core\\task\\completion\_regular\_task                  |
| moodle                        | \\core\\task\\completion\_daily\_task                    |
| moodle                        | \\core\\task\\search\_index\_task                        |
| moodle                        | \\core\\task\\search\_optimize\_task                     |
| moodle                        | \\core\\task\\complete\_plans\_task                      |
| moodle                        | \\core\\task\\sync\_plans\_from\_template\_cohorts\_task |
| mod\_questionnaire            | \\mod\_questionnaire\\task\\cleanup                      |
| mod\_turnitintooltwo          | \\mod\_turnitintooltwo\\task\\turnitintooltwo\_task      |
| auth\_cas                     | \\auth\_cas\\task\\sync\_task                            |
| auth\_ldap                    | \\auth\_ldap\\task\\sync\_task                           |
| enrol\_flatfile               | \\enrol\_flatfile\\task\\flatfile\_sync\_task            |
| enrol\_lti                    | \\enrol\_lti\\task\\sync\_grades                         |
| enrol\_lti                    | \\enrol\_lti\\task\\sync\_members                        |
| tool\_cohortroles             | \\tool\_cohortroles\\task\\cohort\_role\_sync            |
| tool\_recyclebin              | \\tool\_recyclebin\\task\\cleanup\_course\_bin           |
| tool\_recyclebin              | \\tool\_recyclebin\\task\\cleanup\_category\_bin         |
| assignfeedback\_editpdf       | \\assignfeedback\_editpdf\\task\\convert\_submissions    |
| mod\_scheduler                | \\mod\_scheduler\\task\\send\_reminders                  |
| mod\_scheduler                | \\mod\_scheduler\\task\\purge\_unused\_slots             |
| tool\_monitor                 | \\tool\_monitor\\task\\check\_subscriptions              |
| plagiarism\_turnitin          | \\plagiarism\_turnitin\\task\\update\_reports            |
| plagiarism\_turnitin          | \\plagiarism\_turnitin\\task\\send\_submissions          |
| block\_lecturecast\_connector | \\block\_lecturecast\_connector\\task\\lcast\_cron       |


