# Moodle Direct V2 Release Notes

    From version 2015040110 to 2016011101.

    ### Date: 2016-January-12
    ### Release: v2016011101

    - Instructors to be notified when a submission has been made.
    - Contrast changed for inbox error messages.
    - Check added to verify if php_mbstring is enabled.
    - Ensure filename to be sent to Turnitin is UTF-8 encoded
    - Unnecessary addition of user being updated in Turnitin and submission inbox being viewed removed from plugin activity logs.
    - Unused (pre Moodle 2.6) $module settings removed from version.php.
    - Moodle's cron will update OR scores if necessary after the due date has passed.
    - Use default values if user has no firstname or lastname.
    - Fixes:
     - Anonymous grades to gradebook after post date has passed processed by cron.
     - Grademark icon visibility now dependent on whether GradeMark feedback exists rather than a grade.
     - Multi-part assignment Delete icon missing from "delete parts".
     - Table sorting images shown in Submission inbox.
     - Fix object variable in ajax request for PHP7 compatability.
     - Additional user status checking added to view.php functions (Thanks to Skylar Kelty)
     - Replace deprecated mime_content_type function in submission to Turnitin process.

    ---

    ### Date: 2015-November-30
    ### Release: v2015040111

    - Verified against Moodle 3.0
    - Javascript is now minified.
    - Grades can now be shown as a percentage.
    - Datatables has been updated to the latest version.
    - Added a note to highlight the 24 hour Originality Report delay for resubmissions.
    - Fixes:
     - The assignment part displayed is now remembered upon submission deletion.
     - TII user record is removed if Moodle user does not exist when unlinked.
     - Fixed potential difference in temp directory path.
     - Fixed an issue where the Rubric view link is not visible for students.
     - Fixed an issue where the Grademark icon was not clickable if resubmissions are enabled.
     - Shared rubrics is now initialised when creating a Turnitin class.
     - Fixed an issue where course restore was grabbing the wrong class.
     - Student first name default is now saved in the plugin settings when student privacy is enabled.
     - Fixed an issue where student names are visible in the file name when student privacy is enabled.
     - An issue where the EULA modal would not open properly when certain themes are being used.

    ---
