# Moodle 1.9.12 upgrade

## URL

<http://v1912.moodle-pp.ucl.ac.uk/>

## These are the issues fixed

These are the release notes for v1.9.12 

#### Bug

-   [MDL-4633](http://tracker.moodle.org/browse/MDL-4633) - Profiles requires entry in Description field
-   [MDL-9376](http://tracker.moodle.org/browse/MDL-9376) - Q and A forum editing time allows students to see other posts and modify their own
-   [MDL-20946](http://tracker.moodle.org/browse/MDL-20946) - Grade book averages are wrong if a student has multiple roles or has been deleted
-   [MDL-21446](http://tracker.moodle.org/browse/MDL-21446) - Excel export does not work with &gt;31 character worksheet names
-   [MDL-26450](http://tracker.moodle.org/browse/MDL-26450) - use of undefined $scorm-&gt;pkgtype in function scorm\_parse($scorm)
-   [MDL-26502](http://tracker.moodle.org/browse/MDL-26502) - 'Symbian' is misspelt, so browser check gives false positives
-   [MDL-26505](http://tracker.moodle.org/browse/MDL-26505) - Overall quiz grades are rounded before storing in the database
-   [MDL-26528](http://tracker.moodle.org/browse/MDL-26528) - Problem restoring forums with wrong forum\_read information
-   [MDL-26605](http://tracker.moodle.org/browse/MDL-26605) - Multimedia plugin - Missing HTML between link and media
-   [MDL-26634](http://tracker.moodle.org/browse/MDL-26634) - LDAP NTLM SSO Multiple subnet separator is not specified and people use a wrong one
-   [MDL-26757](http://tracker.moodle.org/browse/MDL-26757) - glossary\_print\_recent\_activity() function causes PHP fatal error
-   [MDL-26937](http://tracker.moodle.org/browse/MDL-26937) - Intermittent error from the quiz reports on MySQL because of subtracting two unsigned columns
-   [MDL-26981](http://tracker.moodle.org/browse/MDL-26981) - Restore of random question states sets incorrect question id in question\_states (1.9)
-   [MDL-27069](http://tracker.moodle.org/browse/MDL-27069) - Notice in the add image dialogue when editing a course summary.
-   [MDL-27108](http://tracker.moodle.org/browse/MDL-27108) - Invalid SQL in mod/data/field/latlong/mod.html
-   [MDL-27468](http://tracker.moodle.org/browse/MDL-27468) - Block edit ('config') page is displayed two times on any admin page

#### Improvement

-   [MDL-25770](http://tracker.moodle.org/browse/MDL-25770) - hotpot: missing "return" keyword in mod/hotpot/template/v6.php
-   [MDL-26534](http://tracker.moodle.org/browse/MDL-26534) - Allow iframes in course category descriptions

## Security fixes

These are all 'serious' - no 'critical'. We could potentially hold on a while.

#### MSA-11-0013: Group/Quiz permissions issue

Topic: Quiz review page does not check and enforce separate groups mode
Severity/Risk: Serious
Issue no.: MDL-25122
Solution: upgrade to latest version
Workaround: remove permission to view quiz reports

Description:
When a teacher is assigned to a group they can view quiz reports for all students, not just the students in their group.

#### MSA-11-0015: Cross Site Scripting through URL encoding

Topic: Cross Site Scripting in multiple pages
Severity/Risk: Serious
Issue no.: MDL-26966
Solution: upgrade to latest version

Description:
A vulnerability assessment done by the Acunetix Web Scanner revealed possible XSS vulnerabilities in some pages.  These have all been fixed.

## Testing required

#### **Non-standard plugins**

-   filter/jmol
-   mod/book - the book plugin
-   mod/flv - JW media player plugin
-   mod/questionnaire
-   mod/quiz responses (detailed report for quizzes)
-   mod/scheduler
-   mod/slideshow
-   blocks/course\_menu
-   blocks/email\_list
-   blocks/library\_resources
-   blocks/library\_search
-   blocks/mycourses
-   blocks/Quickmail
-   mod/turnitintool (esp. does the layout look ok for submission inbox)?

#### The UCL hacks - changes to the code specific to UCL

-   showing userid field in user lists (admin - browse list of users)
-   calendar export - recent activity is hard coded to 90 days instead of 60
-   course edit form - a new course should default to being hidden from students
-   essay grading in lesson module - page sorts by surname - check Case of the month (id=5407)
-   flv module - when adding/editing - click advanced - you'll see entries in the drop-downs for the UCL streaming service
-   Kosovo added to list of countries
-   quiz question numbering wraps instead of sitting on 1 long line (test with 50+ questions with 1 per page)
-   IMS enterprise enrolment - check auth type (Pete tests this)

