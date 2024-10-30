# My Feedback GDPR compliant

The My Feedback report predominately displays information already in Moodle; however, it does store 2 pieces of data in its own database table. These are for the self-reflective notes and manually-entered Turnitin feedback.

The plugin needs to be updated so that if a user asks to be deleted and this request is accepted and actioned within Moodle, their My Feedback data is also removed.

-   [Moodle Tracker](https://tracker.moodle.org/browse/CONTRIB-7258)
-   [Git Repo](https://git.automation.ucl.ac.uk/moodle/moodle-report_myfeedback/tree/CONTRIB-7258)

#### Test cases

1.  I cloned the repository to <https://snapshot1617.moodle-01-d.ucl.ac.uk> and installed on that instance. PHPUnit test installed and results from the test passed. It showed that the two tables which MyFeedback uses to store data - mdl\_feedback and mdl\_notes were not listed in the provider\_testcases:

    ``` bash
    33) provider_testcase::test_table_coverage
    The following tables with user fields must be covered with metadata providers:
      - block_admin_presets (userid)
      - block_admin_presets_app (userid)
      - block_quickmail_log (userid)
      - block_quickmail_signatures (userid)
      - block_quickmail_drafts (userid)
      - report_filetrash (userid)
      - plagiarism_turnitin_users (userid)
    ```

    So this indicates that the code implements a provider which stores data, this is part of the Moodle privacy api.

2.  Delete a user account by using Moodles Privacy and Policies Data request delete method. Once a request is approved and processed the data which exists in the two MyFeedback tables should be removed.

