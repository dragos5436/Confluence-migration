# Moodle\_v3.4 PHPUnit Testing

Instruction on how to run phpuit test on dev environment

1.  Prepare moodledata directory for running PHPUnit tests

    ``` bash
    $ cd /data/moodle/moodle_v34
    $ mkdir phpu_moodle_v34

    // Change the permissions on phpunit data directory
    $ chmod -R 02777 phpu_moodle_v34
    ```

2.  Edit moodle config file 

    ``` bash
    // Edit config.php with values as below
    $CFG->phpunit_prefix = 'phpu_';
    $CFG->phpunit_dataroot = '/data/moodle/moodle_v34/phpu_moodle_v34';
    $CFG->phpunit_directorypermissions = 02777; // optional
    ```

3.  Initialise phpunit environment

    ``` bash
    $ cd /data/apache/moodle-vhosts/moodle

    // This command has to be repeated after any upgrade, plugin (un)installation or if you have added tests to a plugin you are developing
    $ php admin/tool/phpunit/cli/init.php


    // If there are any errors running above command, rum composer install to install any dependencies missing
    $ php composer.phar install 
    ```

4.  Run PHPUnit tests

    ``` bash
    // Run phpunit tests 
    $ cd /data/apache/moodle-vhosts/moodle

    // outputs results within terminal
    $ vendor/bin/phpunit
    ```

5.  Output file after running phpunit tests on dev environment
    [<img src="rest/documentConversion/latest/conversion/thumbnail/91029752/1" height="250" />](/download/attachments/90179259/phpunit_output_20180428.txt?version=1&modificationDate=1525003264000&api=v2)

**Issues addressed from phpunit test results**

1.

Failed to run phpunit testsuite due to reference to a file that doesn't exist in /mod/collaborate/tests/calendar\_test.php

``` bash
[ccspmdd@moodle-01-d v34]$ vendor/bin/phpunit
Moodle 3.4.2+ (Build: 20180425)
Php: 7.1.3, mysqli: 5.6.36-enterprise-commercial-advanced-log, OS: Linux 2.6.32-642.11.1.el6.x86_64 x86_64
PHP Warning:  require_once(/data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/../../../local/mr/bootstrap.php): failed to open stream: No such file or directory in /data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/calendar_test.php on line 30

Warning: require_once(/data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/../../../local/mr/bootstrap.php): failed to open stream: No such file or directory in /data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/calendar_test.php on line 30
PHP Fatal error:  require_once(): Failed opening required '/data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/../../../local/mr/bootstrap.php' (include_path='/data/apache/moodle-vhosts/v3.4.2+_build-20180425/lib/pear:.:/usr/share/pear:/usr/share/php') in /data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/calendar_test.php on line 30

Fatal error: require_once(): Failed opening required '/data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/../../../local/mr/bootstrap.php' (include_path='/data/apache/moodle-vhosts/v3.4.2+_build-20180425/lib/pear:.:/usr/share/pear:/usr/share/php') in /data/apache/moodle-vhosts/v3.4.2+_build-20180425/mod/collaborate/tests/calendar_test.php on line 30
```

##### Fix

<https://github.com/moodlerooms/moodle-mod_collaborate/issues/4>

2.

``` bash
22) core_dml_testcase::test_unique_index_collation_trouble
Unique index is accent insensitive, this may cause problems for non-ascii languages. This is usually caused by accent insensitive default collation.

/data/apache/moodle-vhosts/v3.4.2+_build-20180425/lib/dml/tests/dml_test.php:3823
/data/apache/moodle-vhosts/v3.4.2+_build-20180425/lib/phpunit/classes/database_driver_testcase.php:143

To re-run:
 vendor/bin/phpunit core_dml_testcase lib/dml/tests/dml_test.php
```

##### Fix

**Solution** Use the utf8mb4\_bin collation on your database for unit tests on MySQL/MariaDB
Ref :: <https://docs.moodle.org/dev/Common_unit_test_problems#moodlesimplepie_testcase::test_redirect>

## Related articles

-   Page:

    [Moodle\_v3.4 Unoconv Monitoring](/display/ISMoodle/Moodle_v3.4+Unoconv+Monitoring)

-   Page:

    [Moodle\_v3.4 Redis caching](/display/ISMoodle/Moodle_v3.4+Redis+caching)

-   Page:

    [Moodle\_v3.4 PHPUnit Testing](/display/ISMoodle/Moodle_v3.4+PHPUnit+Testing)

-   Page:

    [Moodle\_v3.4 Document Converter](/display/ISMoodle/Moodle_v3.4+Document+Converter)

-   Page:

    [Moodle\_v3.4 Acceptance Testing(Using Behat)](../ISMoodle/Moodle_v3.4_Acceptance_Testing_Using_Behat_)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [phpunit\_output\_20180428.txt](attachments/90179259/91029752.txt) (text/plain)

