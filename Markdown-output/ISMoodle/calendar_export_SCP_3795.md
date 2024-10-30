# calendar export SCP 3795

The default setting in Moodle allows you to export 60 days from your calendar. We have had a request to change this to 90 days.

To do this edit the following files:

**/data/apache/htdocs/moodle/calendar/export\_execute.php** (around line 97)
 

``` java
case 'recentupcoming':
                //Events in the last 5 or next 60 days
                $timestart = time() - 432000;

                // ADDED BY RACHEL GRIFFITH ON 15/09/2008
                //comment out the following line (5184000) which exports 60 days
                //and add a line with 7776000 which exports 90 days
                //Also need to change lang/en_utf8/calendar.php file so that the
                //text the user sees is correct

                //$timeend = time() + 5184000;
                $timeend = time() + 7776000;
            break;
```

The other file that needs to be changed is:

**/data/apache/htdocs/moodle/lang/en\_utf8/calendar.php** (around line 89)

``` java
//$string['recentupcoming'] = 'Recent and next 60 days';
$string['recentupcoming'] = 'Recent and next 90 days';
```

At the time of writing (10am on 15/09/2008) this has been applied to Moodle Development (wasdev-a) and LTSS have been asked to test it before it is applied to moodle-pp for the user to test.
