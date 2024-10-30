# Moodle 2.8.7 upgrade - 11/08/15 (SCP 8061)

For this upgrade, none of the plugins will be upgraded

#### Date of upgrade: 11th August 2015, 8:00 - 9:00am

    Upgrading from: Moodle 2.8.6 (Build: 20150511)  - Release notes: https://docs.moodle.org/dev/Moodle_2.8.6_release_notes

    Upgrading to:   Moodle 2.8.7+ (Build: 20150723) - Release notes: https://docs.moodle.org/dev/Moodle_2.8.7_release_notes

### Tickets fixed

<https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/20>
<https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/22>
<https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/28>

[Release notes](https://docs.moodle.org/dev/Moodle_2.8.7_release_notes)
A lot of work has been done in dealing with unexpected grade changes in the gradebook which some users have experienced when upgrading from Moodle 2.7 to 2.8 or 2.9. See the user documentation Grades min max and Gradebook calculation changes for details.
MDL-48618 - Dealing with unexpected changes to grades after upgrading to Moodle 2.8
MDL-49257 - Adjusting weights when extra credit item is present causes unexpected behaviour
MDL-48239 - Changing the maximum grade of items with calculation to the value different from 100
Another release highlight is the introduction of the authorised access to the YouTube repository. After upgrading you will need to enter an API key from YouTube into your site's YouTube repository settings.
MDL-50176 - Authenticated access to the YouTube repository

### Functional changes

MDL-50089 - Gradebook export now respects aggregate only non-empty grades for percentage and letter
MDL-49680 - Sort by age option added when viewing question banks (backport of MDL-25721)
MDL-48467 - Atto: Clean the html even if submitting the form when Atto is in html view mode
API changes
MDL-49022 - sync\_users must trigger event core\\event\\user\_updated

### Security issues

MSA-15-0026 Possible phishing when redirecting to external site using referer header
MSA-15-0028 Possible XSS through custom text profile fields in Web Services
MSA-15-0029 Javascript injection in SCORM module

### Fixes and improvements

MDL-50177 - Upgrading assignments in 2.7/2.8 works even when conditional access is used
MDL-39353 - Connection to a hub from behind a proxy server
MDL-49742 - Enrolled users page no longer displays sorting by fields that are not used in user identity
MDL-47787 - After deleting a quiz, its question categories and questions remain in database
MDL-49764 - Fixed gradebook UI inconsistencies in Internet Explorer
MDL-49885 - The course overview block can now be added to My home
MDL-50675 - Display Wikimedia repository thumbnails (caused by the change in Wikimedia API)
MDL-50091 - Fixed fatal error in gradebook singleview after a module has been uninstalled
MDL-48664 - Messaging contacts paging bar no longer expands and overlaps other text
MDL-50092 - User unenrollment is now working with IMS Enterprise
MDL-49560 - SOAP web service now works with token
MDL-50004 - Fix coursename and enrolment icons in category combo on Frontpage
MDL-49061 - The activity completion report in a course correctly shortens headers when multi language filter is used
MDL-50275 - Added missing version bump after risk bitmap change in MDL-49941
MDL-50380 - Fixed missing parameter error when editing files in wiki
