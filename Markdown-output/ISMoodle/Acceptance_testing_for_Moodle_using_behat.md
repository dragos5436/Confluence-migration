# Acceptance testing for Moodle using behat

-   [Automated tests](#AcceptancetestingforMoodleusingbehat-Automatedtests)
-   [Download](#AcceptancetestingforMoodleusingbehat-Download)
-   [Install behat on moodle server](#AcceptancetestingforMoodleusingbehat-Installbehatonmoodleserver)
-   [Before running the tests](#AcceptancetestingforMoodleusingbehat-Beforerunningthetests)
-   [Run tests](#AcceptancetestingforMoodleusingbehat-Runtests)
    -   [Run all the tests](#AcceptancetestingforMoodleusingbehat-Runallthetests)
        -   [Run all the tests](#AcceptancetestingforMoodleusingbehat-Runallthetests.1)
        -   [Run all the tests that don't require JavaScript](#AcceptancetestingforMoodleusingbehat-Runalltheteststhatdon'trequireJavaScript)
    -   [Run only the tests with/without specific tags](#AcceptancetestingforMoodleusingbehat-Runonlythetestswith/withoutspecifictags)
    -   [Combinations of tags](#AcceptancetestingforMoodleusingbehat-Combinationsoftags)
    -   [Available tags](#AcceptancetestingforMoodleusingbehat-Availabletags)
        -   [Tags by category](#AcceptancetestingforMoodleusingbehat-Tagsbycategory)
        -   [Tags by JavaScript](#AcceptancetestingforMoodleusingbehat-TagsbyJavaScript)
    -   [Run only the tests I automated](#AcceptancetestingforMoodleusingbehat-RunonlythetestsIautomated)
        -   [Including tests with JavaScript](#AcceptancetestingforMoodleusingbehat-IncludingtestswithJavaScript)
        -   [Excluding tests with JavaScript](#AcceptancetestingforMoodleusingbehat-ExcludingtestswithJavaScript)
-   [Output](#AcceptancetestingforMoodleusingbehat-Output)
-   [What if tests fail?](#AcceptancetestingforMoodleusingbehat-Whatiftestsfail?)
-   [Write other behat tests](#AcceptancetestingforMoodleusingbehat-Writeotherbehattests)
-   [After running the tests](#AcceptancetestingforMoodleusingbehat-Afterrunningthetests)

# Automated tests

Category
Test
File name
Specific tag
Assignment
A student can submit or edit a group assignment with "Require all members to submit" enabled
groupassingment\_submit\_edit
groupassingment\_submit\_edit
A teacher can allocate group or individual feedback to students submitting a group assignment
feedback\_grade\_group\_individual
feedback\_group\_individual
A teacher can allocate group or individual grade to students submitting a group assignment
feedback\_grade\_group\_individual
grade\_group\_individual
Question
A teacher can import questions in a choice of formats
question\_import
question\_import
A teacher can create, edit and preview a numerical question with optional units
question\_numerical
question\_numerical
Quiz
A teacher can set a quiz with certainty-based marking
quiz\_cbm
quiz\_cbm
Students can navigate around a quiz attempt
quiz\_attempt
quiz\_attempt
A teacher can set a quiz question to be dependent on a previous one
quiz\_dependent\_questions
quiz\_dependent\_questions
Forum
In a Q & A forum students must post first before they can view other posts
forum\_Q&A
forum\_qa
A teacher can set a certain number of replies as a completion condition for a forum
forum\_completion\_condition\_replies
forum\_completion\_condition\_replies
The word count can be displayed in forum posts
forum\_word\_count
forum\_word\_count
Pin forum discussions
forum\_pin
forum\_pin
Gradebook
Showing and hiding of grade items works
grade\_item\_show\_hide
grade\_item\_show\_hide
Overriding a grade prevents grade updating in the module
grade\_override
grade\_override

# Download

Connect to the moodle server:

``` bash
ssh ccspmdd@moodle-dev.ucl.ac.uk
```

In order to run run the tests that require JavaScript, you have to download [PhantomJS](http://phantomjs.org/download.html) (for Linux 64-bit) and copy it on the moodle server, in */data/moodle/behat\_javascript *folder. Decompress PhantomJS (replace 2.1.1 with your PhantomJS version)

``` bash
cd /data/moodle/behat_javascript
tar xvf phantomjs-2.1.1-linux-x86_64.tar.bz2
```

# Install behat on moodle server

*Note: in this tutorial, behat is installed on moodle 2.8 so, in the following commands, replace everything related to moodle 2.8 (v2812, b2812\_, behatdataroot2812 etc.) with the equivalents for the moodle version where you want to install behat*

Copy the moodle directory from */data/apache/moodle-vhosts* to */data/apache/htdocs*:

``` bash
rsync -vaz /data/apache/moodle-vhosts/v2812_sammy /data/apache/htdocs/
```

Rename it:

``` bash
mv /data/apache/htdocs/v2812_sammy /data/apache/htdocs/behat_v2812_sammy
```

Create a link to moodle from the *htdocs *folder:

``` bash
ln -s /data/apache/htdocs/behat_v2812_sammy /data/apache/htdocs/acceptance_testing_v2812_sammy
```

Navigate to moodle dirroot:

``` bash
cd /data/apache/htdocs/behat_v2812_sammy
```

Edit local\_settings.php so that *wwwroot *is the copy of the moodle you just created (the one from *htdocs*) and change the protocol from *https *to *http*:

``` php
//=========================================================================
// 3. WEB SITE LOCATION
//=========================================================================
$LS->wwwroot = 'http://moodle-dev.ucl.ac.uk/behat_v2812_sammy';
```

·         Create a new PHP file, called behat\_settings.php*      *

``` bash
touch behat_settings.php
```

      Edit behat\_settings.php such that it will look like this:     

``` php
<?php
$CFG->behat_prefix = 'b2812_';
$CFG->behat_dataroot = '/data/moodle/behatdataroot2812';
$CFG->behat_wwwroot = 'http://moodle-dev.ucl.ac.uk/acceptance_testing_v2812_sammy';
```

Comment the line *$CFG-&gt;sslproxy = true; *from *config.php*.

``` php
// Please note that site may be accessible via http: or https:, but not both!
// $CFG->sslproxy = true;
```

Include *behat\_settings.php* in the main configuration file by adding the following lines before* require\_once(dirname(\_\_FILE\_\_) . '/lib/setup.php'); *in *config.php *file:

``` php
//for behat testing
require_once(dirname(__FILE__) . '/behat_settings.php');
```

Install *Composer* which will automatically install behat when you run tests for the first time

``` bash
curl http://getcomposer.org/installer | php
```

Initialize behat. The first time you run this command, behat will be installed. You also have to use this command when adding new test files.

``` bash
php admin/tool/behat/cli/init.php
```

Change *wd\_host *in */data/moodle/behatdataroot2812/behat/behat.yml* from http://localhost:4444/wd/hub to http://localhost:8643/wd/hub (we will later start PhantomJS on port 8643):

``` bash
wd_host: 'http://localhost:8643/wd/hub'
```

# Before running the tests

In order to run the tests that require JavaScript, you have to start PhantomJS on port 8643:

``` bash
/data/moodle/behat_javascript/phantomjs-2.1.1-linux-x86_64/bin/phantomjs --webdriver=8643 &
```

If PhantomJS started correctly, you should see *GhostDriver - Main - running on port 8643* on the last line of the terminal.

# Run tests

## Run all the tests

Moodle comes with a variety of behat tests. Running all of them might take several hours.

### Run all the tests

*Note: PhantomJS required*

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml
```

### Run all the tests that don't require JavaScript

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags ~javascript
```

## Run only the tests with/without specific tags

If you just want to test a specific feature, you can run only the tests that contain a specific tag. The tags are named after what the tests are related to. So, if you want to run only the tests for the forum (with tag *forum*), you should run:

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags forum
```

You can also run tests without a specific tag (i.e. *question\_import*):

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags ~question_import
```

## Combinations of tags

Combinations of tags are also possible:

-   with tag *quiz *AND without the tag *javascript*:

    ``` bash
    vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags "quiz&&~javascript"
    ```

-   with *question* tag OR with the tag *quiz*:

    ``` bash
    vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags "question,quiz"
    ```

## Available tags

Each item from the lists below represent a specific tag. So, when you run the tag *assignment*, all the tests from the *Assignment *category will be run.

These are all the tags from the test I automated:

#### Tags by category

-   tudor
    -   assignment
        -   groupassingment\_submit\_edit
        -   feedback\_grade\_group\_individual
            -   feedback\_group\_individual
            -   grade\_group\_individual
    -   question
        -   question\_import
        -   question\_numerical
    -   quiz
        -   quiz\_cbm
        -   quiz\_attempt
        -   quiz\_dependent\_questions
    -   forum
        -   forum\_qa
        -   forum\_completion\_condition\_replies
        -   forum\_word\_count
        -   forum\_pin
    -   gradebook
        -   grade\_item\_show\_hide
        -   grade\_override

#### Tags by JavaScript

-   tudor
    -   javascript *(these tests require Selenium and PhantomJS to be turned on)*
        -   groupassingment\_submit\_edit
        -   feedback\_grade\_group\_individual
        -   feedback\_group\_individual
        -   grade\_group\_individual
        -   question\_import
        -   question\_numerical
        -   quiz\_attempt
        -   quiz\_dependent\_questions
        -   grade\_override
    -   ~javascript
        -   quiz\_cbm

        <!-- -->

        -   forum\_qa
        -   forum\_completion\_condition\_replies
        -   forum\_word\_count
        -   forum\_pin

        <!-- -->

        -   grade\_item\_show\_hide

## Run only the tests I automated

### Including tests with JavaScript

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags tudor
```

### Excluding tests with JavaScript

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags "tudor&&~javascript"
```

# Output

Each test consists of multiple steps (like pressing a button or filling in a form). Each step is printed in the command line as a green dot (passed step), a red F (failed step), or blue dash (skipped step). If a step fails, an error message will be printed at the end of the output (which is usually human readable) and all the steps after the failed one will be skipped (will be printed in blue), until the tests ends.

There is also the option to print the steps as they are executed instead of just a dot, an F or a dash. The colour of the printed step will be the same as above (green for passed, red for failed and blue for skipped). To do this, add the *pretty* format* *to the command you are tunning the tests with:

``` bash
vendor/bin/behat -c /data/moodle/behatdataroot2812/behat/behat.yml --tags tudor -f pretty
```

*Note: If you run behat in a Windows command line, the colours won't be displayed properly. You can install [Ansicon](https://github.com/adoxa/ansicon) to solve this issue.*

# What if tests fail?

-   Try rerunning the failing tests.
-   Try to spot what's wrong by doing what behat was supposed to do. Open a browser and follow the steps from the failing test and try to spot the problem. The steps are usually human readable (i.e. *And I set the field "Answer" to "931"*). You can also find some comments about the steps in the *tudor\_tests/category/tests/behat* folder (replace *category* with any folder from *tudor\_tests)*, in the file related to the failing test (open it in a text editor).

# Write other behat tests

Every behat test has the same structure:

 

@tags (optional)

**Feature:** Description of what the feature tests (can be empty)

    **Background:** Description of what you do before each scenario (optional)

        Steps

    @tags (optional)

    **Scenario**: Description of what the scenario does (can be empty)

        Steps

    @tags (optional)

    **Scenario:** Description of what the scenario does (can be empty)

        Steps

 

Observations:

-   All the descriptions are interpreted by behat as comments.
-   All the steps from the **Background** section** **are executed before each scenario. 
-   You can find a list of the steps you can use in your new behat tests and instructions for using them in *Site administration &gt; Development &gt; Acceptance testing* on your moodle site (you have to be logged in as admin). Note that these are all the steps that you can use.
-   A step has to begin with one of these words: *Given, When, Then, And, But*. For behat, they are all the same (i.e. *Given I log in as admin *does exactly the same thing as *Then I log in as admin*). These words only help the test scripts to be human readable.
-   It is recommended to have the @javascript tag in the scenarios under development (to tell behat you need a browser in order to run them) in order to be sure that they work as expected. You can try to remove the @javascript tag after you finish writing the test and see if the test still works. If behat doesn't pass the test anymore, it means that it needs the @javascript tag. Otherwise, try failing the test deliberately (by changing some steps from that test, like referring to elements that don't exist) and check if the test fails. If it doesn't, it needs the @javascript tag. If it does fail, the test doesn't have to be run in a browser.
-   It may be useful to have some knowledge about xpath, as it may help you easier refer to the elements on the page you want behat to interact with.
-   The behat tests are placed in *.feature *files, under *any/folder/inside/moodle/tests/behat *(for example, the assignment tests I automated are palced in *tudor\_tests/Assignment tests/tests/behat*)
-   After you create a test, in order to add it to the moodle test suite, you have to do again the last 2 steps from **[Install behat on moodle server](#AcceptancetestingforMoodleusingbehat-Installbehatonmoodleserver) **part (initializing behat and setting the port for behat to 8643).

For further instructions, you can check the [Moodle Docs](https://docs.moodle.org/dev/Behat_integration) page.

# After running the tests

After running the tests you have to close PhantomJS. If you don't, it will continue to run in the background and the next time you will try to start it, you will get an error, so don't just close the terminal window.

Kill PhantomJS:

``` bash
pkill -f "/data/moodle/tudor/phantomjs-2.1.1-linux-x86_64/bin/phantomjs --webdriver=8643"
```
