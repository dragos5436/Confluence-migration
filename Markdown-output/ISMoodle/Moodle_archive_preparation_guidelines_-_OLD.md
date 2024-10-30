# Moodle archive preparation guidelines - OLD

# Moodle archive preparation guidelines

Each year a copy of Moodle is taken and made available for the UCL Community as a read-only faithful copy. The process involves:

-   Taking a snapshot of the database on the last teaching day in June
-   Copying the software
-   Copy the moodledata folder

These are added to a new folder on the <http://moodle-archive.ucl.ac.uk> web server under a folder for the academic year (i.e. <http://moodle-archive.ucl.ac.uk/09-10/>)

## Customisations to Moodle

### Changes to site settings:

-   Change cookie prefix to prevent session clashes (as more than one moodle instance on same server) : admin-&gt;server-&gt;session handling
-   Swith off 'shutdown' user alert
-   Users &gt; Authentication &gt; Manage authentication &gt; Guest login button = Hide
-   Security &gt; Site policies &gt; Site policy URL = <http://moodle-archive.ucl.ac.uk/yy-yy/policy/about_the_archive.html> (update yy with 10-11, 11-12 etc)
-   Remove the news section - turn editing on on home page
-   Add a Glossary to the homepage, exprt the entries from the previous archive, import the XML into this Glossary and edit any questions/answers as necessary.

### SQL Changes

[See this page for detailed SQL: https://wiki.ucl.ac.uk/display/ISMoodle/Archive+-+actions+required](https://wiki.ucl.ac.uk/display/ISMoodle/Archive+-+actions+required)

**mdl\_course** = set all guest access to 0 and all enrolment options to 0 – this disables all enrolments, guest functionality and student course ‘browsing’

**Moodle roles**

-   Map Tutor, Non-editing tutor, Course administrator, Course creator, UCL Support staff and administrator into the Staff (read only) role.
-   Map Student, participant, delegate, restricted student into Student (read only) role.

**Moodle database**

Set all instances of **<http://moodle.ucl.ac.uk/*>** **to \*\*\*\***<http://moodle-archive.ucl.ac.uk/yy-yy*>\* **(where yy-yy is the academic year, like 10-11) - this means all the hard set links to files and resources are replaced with the archive location and not the live - otherwise there are authentication issues and general chaos. \*&lt;Pete / Jo to elaborate&gt; : two ways to do this :**

-   admin/replace.php has a web form that runs through each text/varchar field in each table and updates once the migration is done.
-   Update the database dump before it is imported (see [moodle docs](http://docs.moodle.org/20/en/Moodle_migration)): \#sed -e 's/oldserver.com/newserver.com/g' oldmysqldump.sql &gt; newmysqldump.sql

### Site changes

-   Notification of archive banner to the top – this will be redesigned!

