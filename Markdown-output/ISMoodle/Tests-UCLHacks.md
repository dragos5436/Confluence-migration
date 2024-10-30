# Tests-UCLHacks

-   -   [UCL Customisations Test Scripts](#TestsUCLHacks-UCLCustomisationsTestScripts)
    -   [\[UCL001T\] 'All courses' link visiblity](#TestsUCLHacks-%5BUCL001T%5D'Allcourses'linkvisiblity)
    -   [\[UCL002T\] 'All courses' settings](#TestsUCLHacks-%5BUCL002T%5D'Allcourses'settings)
    -   [\[UCL003T\] Calendar export - This only checks for the string, actual event export checking is complicated (would need to script creation of events between 60 and 90 days in future) – unless Anto has some thoughts on it.](#TestsUCLHacks-%5BUCL003T%5DCalendarexport-Thisonlychecksforthestring,actualeventexportcheckingiscomplicated(wouldneedtoscriptcreationofeventsbetween60and90daysinfuture)–unlessAntohassomethoughtsonit.)
    -   [\[UCL004T\] Calendar import](#TestsUCLHacks-%5BUCL004T%5DCalendarimport)
    -   [\[UCL005T\] Course Reset (Also done as part of Tests-General )](#TestsUCLHacks-%5BUCL005T%5DCourseReset(Alsodoneaspartof))
    -   [\[UCL006T\] Fuzzy Search - the test accounts musnt be already enrolled on the course you are using to test - can discuss.](#TestsUCLHacks-%5BUCL006T%5DFuzzySearch-thetestaccountsmusntbealreadyenrolledonthecourseyouareusingtotest-candiscuss.)
    -   -   [\[UCL007T\] Country list - Kosovo](#TestsUCLHacks-%5BUCL007T%5DCountrylist-Kosovo)
    -   [\[UCL008T\] Alphabetical students - Harder to test as we need a test course with some data in it.](#TestsUCLHacks-%5BUCL008T%5DAlphabeticalstudents-Hardertotestasweneedatestcoursewithsomedatainit.)

-   [Test student account creation](#TestsUCLHacks-Teststudentaccountcreation)
    -   [\[UCL009T\] Test student account creation](#TestsUCLHacks-%5BUCL009T%5DTeststudentaccountcreation)

### UCL Customisations Test Scripts

NB. Screenshot to be taken on completion of each tests

##### \[UCL001T\]  'All courses' link visiblity

1.  Login as user that is enrolled on at least one course
2.  Make sure you are on   [https://moodle.ucl.ac.uk/my](https://moodle.ucl.ac.uk/my/)
3.  Check that string “Browse all courses on UCL Moodle ...” is visible

##### \[UCL002T\]  'All courses' settings

1.  Log in as a site admin
2.  Go to /admin/settings.php?section=blocksettingcourse\_overview
3.  Check the last setting "Hide 'Browse all courses on UCL Moodle' link"  is visible

##### \[UCL003T\]  Calendar export - This only checks for the string, actual event export checking is complicated (would need to script creation of events between 60 and 90 days in future) – unless Anto has some thoughts on it.

1.  Login as any user
2.  Go to <https://moodle.ucl.ac.uk/calendar/export.php>
3.  Check that string “Recent and next 90 days”  is visible

##### \[UCL004T\]  Calendar import

1.  Login as any user
2.  Go to <https://moodle.ucl.ac.uk/calendar/managesubscriptions.php>
3.  Check that Update interval dropdown shows “Never, Weekly, Monthly, Annually”

##### \[UCL005T\]  Course Reset (Also done as part of [Tests-General](Tests-General) )

1.  Login as tutor on the test course
2.  Go to<https://moodle.ucl.ac.uk/course/reset.php?id=xxxxxx>     (test course ID)
3.  At bottom of page click Select default
4.  Click expand all
5.  Check that Student is highlighted  (and participant not highlighted) in roles to remove

##### \[UCL006T\]  Fuzzy Search   -     the test accounts musnt be already enrolled on the course you are using to test - can discuss.

1.  Go to test course
2.  Go to **Course Admin &gt; Users &gt; Enrolled users**
3.  Click **'Enrol users'**
4.  Enter "Auto Student" and click 'Search'**
    **
5.  Check that the "Auto Test Student" accounts display

##### \[UCL007T\]  Country list - Kosovo

1.  Login as any test account
2.  Go to <https://moodle.ucl.ac.uk/user/editadvanced.php?id=xxxxxx&course=1&returnto=profile> (xxxxx = moodle account id)
3.  Open “Select a country” dropdown
4.  Check for “Kosovo”

##### \[UCL008T\]  Alphabetical students - Harder to test as we need a test course with some data in it.

1.  Login as tutor on the test course    EG  <https://moodle-pp.ucl.ac.uk/mod/lesson/essay.php?id=2207857>)
2.  Check the students' names listed alphabetically by surname

### Test student account creation

##### \[UCL009T\]  Test student account creation

-   Log in to Moodle as tutor
-   Go to test course xxxx

Part 1)

-   Go to settings -&gt; Create test user accounts     [https://moodle.ucl.ac.uk/local/testaccount\_automation/index.php?course=xxxxx](https://moodle.ucl.ac.uk/local/testaccount_automation/index.php?course=38267)
-   Leave number of test accounts on 1, leave days on 1
-   Enter a password xxxxxxxx
-   Enter an email  lta-learning   or whatever the test email will be
-   Click “Create my test accounts”
-   Verify that the next page loads with the name of the account created.  Eg   cceambu\_s5182 testaccount
-   Click continue

Part 2)

-   Go to settings -&gt; users -&gt;enrolled users     [https://moodle.ucl.ac.uk/enrol/users.php?id=xxxxx](https://moodle.ucl.ac.uk/enrol/users.php?id=38267)
-   Enter name of account (above) in search box and click filter
-   Check that the account is on the course.


