# moodle 3.9.2+ phpunit tests results

Logs : <https://jenkins.automation.ucl.ac.uk/job/moodle/job/candidate-builds/job/moodle-1819/job/MOODLE_39_STABLE/8/execution/node/70/log>

Assertions: <https://phpunit.readthedocs.io/en/9.3/assertions.html>

<table>
<thead>
<tr class="header">
<th>Failed</th>
<th>Reason</th>
<th>Troubleshooting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre><code>    1) core_plugin_manager_testcase::test_missing_dependencies
    Failed asserting that an array is empty.
  
    /var/www/html/lib/tests/plugin_manager_test.php:490
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;core_plugin_manager_testcase&quot; lib/tests/plugin_manager_test.php</code></pre></td>
<td><pre><code>Is happening:
assertEmpty() should return empty

Has happened:
assertEmpty() has returned with a value</code></pre></td>
<td><pre><code>/var/www/html/lib/tests/plugin_manager_test.php:490
edit file as

// $pluginman→missing_dependencies();
//$this-&gt;assertEmpty($pluginman→missing_dependencies());
var_dump($pluginman-&gt;missing_dependencies());

run single test function from cli
vendor/bin/phpunit --filter test_missing_dependencies -debug /var/www/html/MOODLE_SOLR/lib/tests/plugin_manager_test.php

array output showing which dependencies is missing.</code></pre></td>
</tr>
<tr class="even">
<td><pre><code>2) provider_testcase::test_all_providers_compliant with data set &quot;qtype_ddmatch&quot; (&#39;qtype_ddmatch&#39;, &#39;qtype_ddmatch\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    3) provider_testcase::test_all_providers_compliant with data set &quot;qtype_jme&quot; (&#39;qtype_jme&#39;, &#39;qtype_jme\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    4) provider_testcase::test_all_providers_compliant with data set &quot;mod_aspirelist&quot; (&#39;mod_aspirelist&#39;, &#39;mod_aspirelist\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    5) provider_testcase::test_all_providers_compliant with data set &quot;mod_helixmedia&quot; (&#39;mod_helixmedia&#39;, &#39;mod_helixmedia\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    6) provider_testcase::test_all_providers_compliant with data set &quot;enrol_dbuserrel&quot; (&#39;enrol_dbuserrel&#39;, &#39;enrol_dbuserrel\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    7) provider_testcase::test_all_providers_compliant with data set &quot;block_course_visibility&quot; (&#39;block_course_visibility&#39;, &#39;block_course_visibility\priva...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    8) provider_testcase::test_all_providers_compliant with data set &quot;block_library_resources&quot; (&#39;block_library_resources&#39;, &#39;block_library_resources\priva...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    9) provider_testcase::test_all_providers_compliant with data set &quot;block_library_search&quot; (&#39;block_library_search&#39;, &#39;block_library_search\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    10) provider_testcase::test_all_providers_compliant with data set &quot;block_massaction&quot; (&#39;block_massaction&#39;, &#39;block_massaction\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    11) provider_testcase::test_all_providers_compliant with data set &quot;block_news_slider&quot; (&#39;block_news_slider&#39;, &#39;block_news_slider\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    12) provider_testcase::test_all_providers_compliant with data set &quot;block_portico_enrolments&quot; (&#39;block_portico_enrolments&#39;, &#39;block_portico_enrolments\priv...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    13) provider_testcase::test_all_providers_compliant with data set &quot;block_quickmail&quot; (&#39;block_quickmail&#39;, &#39;block_quickmail\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    14) provider_testcase::test_all_providers_compliant with data set &quot;block_timetable&quot; (&#39;block_timetable&#39;, &#39;block_timetable\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    15) provider_testcase::test_all_providers_compliant with data set &quot;report_filetrash&quot; (&#39;report_filetrash&#39;, &#39;report_filetrash\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    16) provider_testcase::test_all_providers_compliant with data set &quot;gradereport_myfeedbacklink&quot; (&#39;gradereport_myfeedbacklink&#39;, &#39;gradereport_myfeedbacklink\pr...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    17) provider_testcase::test_all_providers_compliant with data set &quot;qformat_hotpot&quot; (&#39;qformat_hotpot&#39;, &#39;qformat_hotpot\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    18) provider_testcase::test_all_providers_compliant with data set &quot;local_hub&quot; (&#39;local_hub&#39;, &#39;local_hub\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    19) provider_testcase::test_all_providers_compliant with data set &quot;local_mass_enroll&quot; (&#39;local_mass_enroll&#39;, &#39;local_mass_enroll\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    20) provider_testcase::test_all_providers_compliant with data set &quot;local_repositoryfileupload&quot; (&#39;local_repositoryfileupload&#39;, &#39;local_repositoryfileupload\pr...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    21) provider_testcase::test_all_providers_compliant with data set &quot;local_testaccount_automation&quot; (&#39;local_testaccount_automation&#39;, &#39;local_testaccount_automation\...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    22) provider_testcase::test_all_providers_compliant with data set &quot;local_ucl_tools&quot; (&#39;local_ucl_tools&#39;, &#39;local_ucl_tools\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    23) provider_testcase::test_all_providers_compliant with data set &quot;local_userprofilefields_import&quot; (&#39;local_userprofilefields_import&#39;, &#39;local_userprofilefields_impor...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    24) provider_testcase::test_all_providers_compliant with data set &quot;assignsubmission_helixassign&quot; (&#39;assignsubmission_helixassign&#39;, &#39;assignsubmission_helixassign\...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    25) provider_testcase::test_all_providers_compliant with data set &quot;assignfeedback_helixfeedback&quot; (&#39;assignfeedback_helixfeedback&#39;, &#39;assignfeedback_helixfeedback\...ovider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    26) provider_testcase::test_all_providers_compliant with data set &quot;atto_fontsize&quot; (&#39;atto_fontsize&#39;, &#39;atto_fontsize\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    27) provider_testcase::test_all_providers_compliant with data set &quot;atto_helixatto&quot; (&#39;atto_helixatto&#39;, &#39;atto_helixatto\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    28) provider_testcase::test_all_providers_compliant with data set &quot;atto_pastespecial&quot; (&#39;atto_pastespecial&#39;, &#39;atto_pastespecial\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    29) provider_testcase::test_all_providers_compliant with data set &quot;logstore_caliper&quot; (&#39;logstore_caliper&#39;, &#39;logstore_caliper\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:178
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  </code></pre></td>
<td><pre><code>Is happening:
assertTrue() should return true indicating providers are compliant with data

Has happened:
assertTrue() has returned false boolean </code></pre></td>
<td><pre><code>/var/www/html/privacy/tests/provider_test.php:178
edit file as

//$this-&gt;assertTrue($manager-&gt;component_is_compliant($component));
var_dump($manager→component_is_compliant($component));

run single test function from cli
vendor/bin/phpunit --filter test_all_providers_compliant -debug /var/www/html/MOODLE_SOLR/privacy/tests/provider_test.php

output shows false booleans</code></pre></td>
</tr>
<tr class="odd">
<td><pre><code>30) provider_testcase::test_userdata_provider_implements_userlist with data set &quot;mod_hotquestion&quot; (&#39;mod_hotquestion&#39;, &#39;mod_hotquestion\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:212
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    31) provider_testcase::test_userdata_provider_implements_userlist with data set &quot;mod_hvp&quot; (&#39;mod_hvp&#39;, &#39;mod_hvp\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:212
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php
  
    32) provider_testcase::test_userdata_provider_implements_userlist with data set &quot;report_myfeedback&quot; (&#39;report_myfeedback&#39;, &#39;report_myfeedback\privacy\provider&#39;)
    Failed asserting that false is true.
  
    /var/www/html/privacy/tests/provider_test.php:212
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php</code></pre></td>
<td><pre><code>Is happening:
assertTrue() should return true boolean


Has happened:
assertTrue() has returned false boolean</code></pre></td>
<td><pre><code>/var/www/html/privacy/tests/provider_test.php:212
edit file as

// $this-&gt;assertTrue(is_subclass_of($classname, \core_privacy\local\request\core_userlist_provider::class));
var_dump(is_subclass_of($classname, \core_privacy\local\request\core_userlist_provider::class));

run single test function from cli
vendor/bin/phpunit --filter test_userdata_provider_implements_userlist -debug /var/www/html/MOODLE_SOLR/privacy/tests/provider_test.php

output shows false booleans</code></pre></td>
</tr>
<tr class="even">
<td><pre><code> 33) provider_testcase::test_table_coverage
    The following tables with user fields must be covered with metadata providers:
      - block_admin_presets (userid)
      - block_admin_presets_app (userid)
      - block_quickmail_signatures (user_id)
      - block_quickmail_messages (user_id)
      - block_quickmail_msg_recips (user_id)
      - block_quickmail_alt_emails (setup_user_id, user_id)
      - block_quickmail_notifs (user_id)
      - block_quickmail_event_notifs (usermodified)
      - block_quickmail_rem_notifs (usermodified)
      - block_quickmail_event_recips (user_id)
      - block_sharing_cart_plugins (userid)
      - report_filetrash (userid)
      - logstore_caliper_log (userid)
  
    /var/www/html/privacy/tests/provider_test.php:327
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;provider_testcase&quot; privacy/tests/provider_test.php</code></pre></td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><pre><code>34) block_quickmail_draft_repo_testcase::test_sorts_get_for_user
    Failed asserting that &#39;233000&#39; matches expected 144000.
  
    /var/www/html/blocks/quickmail/tests/unit/draft_repo_test.php:167
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_draft_repo_testcase&quot; blocks/quickmail/tests/unit/draft_repo_test.php</code></pre></td>
<td><pre><code>Is happening:
asserEqual() should have matched the value

Has happened:
assertEqual() hasn&#39;t matched the value</code></pre></td>
<td><pre><code>/var/www/html/blocks/quickmail/tests/unit/draft_repo_test.php:167
edit file as

var_dump($drafts);

run single test function from cli
vendor/bin/phpunit --filter test_sorts_get_for_user -debug /var/www/html/MOODLE_SOLR/blocks/quickmail/tests/unit/draft_repo_test.php

array ouput visible</code></pre>
<pre><code>array(21) {

[&quot;id&quot;]=&gt;

string(6) &quot;226000&quot;</code></pre>
<pre><code></code></pre></td>
</tr>
<tr class="even">
<td><pre><code> 35) block_quickmail_draft_repo_testcase::test_sorts_get_for_user_and_course
    Failed asserting that &#39;233000&#39; matches expected 144000.
  
    /var/www/html/blocks/quickmail/tests/unit/draft_repo_test.php:243
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_draft_repo_testcase&quot; blocks/quickmail/tests/unit/draft_repo_test.php</code></pre></td>
<td><pre><code>see previous assertEqual() for details</code></pre></td>
<td><pre><code>see previous assertEqual() for details</code></pre></td>
</tr>
<tr class="odd">
<td><pre><code>  36) block_quickmail_edit_reminder_notification_form_validator_testcase::test_validate_schedule_time_unit_is_valid_for_reminder_notifications
    Failed asserting that false is true.
  
    /var/www/html/blocks/quickmail/tests/unit/edit_reminder_notification_form_validator_test.php:47
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_edit_reminder_notification_form_validator_testcase&quot; blocks/quickmail/tests/unit/edit_reminder_notification_form_validator_test.php
  
    37) block_quickmail_edit_reminder_notification_form_validator_testcase::test_validate_schedule_time_amount_is_valid_for_reminder_notifications
    Failed asserting that false is true.
  
    /var/www/html/blocks/quickmail/tests/unit/edit_reminder_notification_form_validator_test.php:74
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_edit_reminder_notification_form_validator_testcase&quot; blocks/quickmail/tests/unit/edit_reminder_notification_form_validator_test.php
  
    38) block_quickmail_event_notification_assignment_submitted_model_testcase::test_model_key_is_available
    Failed asserting that an array contains &#39;assignment_submitted&#39;.
  
    /var/www/html/blocks/quickmail/tests/unit/event_notification_assignment_submitted_model_test.php:42
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_event_notification_assignment_submitted_model_testcase&quot; blocks/quickmail/tests/unit/event_notification_assignment_submitted_model_test.php</code></pre></td>
<td><pre><code>see previous assertTrue() for details </code></pre></td>
<td><pre><code>see previous assertTrue() for details</code></pre></td>
</tr>
<tr class="even">
<td><pre><code>39) block_quickmail_parses_compose_message_body_testcase::test_replaces_message_recipient_compose_message_body_with_user_data
    Failed asserting that two strings are equal.
    --- Expected
    +++ Actual
    @@ @@
    -&#39;Hey there . Don&#39;t I know you? Your last name is , right? In fact, I believe that your full name is  . 
Your middle name must be Michael, but we will call you . Is your email still student1@example.com?&#39;
    +&#39;Hey there .\n
    +                      Don&#39;t I know you? Your last name is , right?\n
    +                      In fact, I believe that your full name is  .\n
    +                      Your middle name must be Michael, but we will call you .\n
    +                      Is your email still student1@example.com?&#39;
  
    /var/www/html/blocks/quickmail/tests/unit/formats_message_recipient_compose_message_body_test.php:56
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_parses_compose_message_body_testcase&quot; blocks/quickmail/tests/unit/formats_message_recipient_compose_message_body_test.php
  
    40) block_quickmail_parses_compose_message_body_testcase::test_replaces_message_recipient_compose_message_body_with_course_data
    Failed asserting that two strings are equal.
    --- Expected
    +++ Actual
    @@ @@
    -&#39;Welcome to Test course 1! Let&#39;s shorten the name to tc_1 if that&#39;s ok with you. The ID number will remain as  though. If I had to summarize this course, I&#39;d say it would be: Test course 1\n
    +&#39;Welcome to Test course 1! Let&#39;s shorten the name to tc_1 if that&#39;s ok with you.\n
    +                          The ID number will remain as  though.\n
    +                          If I had to summarize this course, I&#39;d say it would be: Test course 1\n
     Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla non arcu lacinia neque faucibus fringilla. 
Vivamus porttitor turpis ac leo. Integer in sapien. Nullam eget nisl. Aliquam erat volutpat. Cras elementum. Mauris suscipit, 
ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Integer malesuada. Nullam lectus justo, 
vulputate eget mollis sed, tempor sed magna. Mauris elementum mauris vitae tortor. Aliquam erat volutpat.\n
     Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et 
molestiae non recusandae. Pellentesque ipsum. Cras pede libero, dapibus nec, pretium sit amet, tempor quis. Aliquam ante. Proin in tellus 
sit amet nibh dignissim sagittis. Vivamus porttitor turpis ac leo. Duis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis
 enim ipsum id lacus. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Aliquam erat volutpat. Nulla est.\n
     Vivamus luctus egestas leo. Aenean fermentum risus id tortor. Mauris dictum facilisis augue. Aliquam erat volutpat. Aliquam ornare wisi 
eu metus. Aliquam id dolor. Duis condimentum augue id magna semper rutrum. Donec iaculis gravida nulla. Pellentesque ipsum. Etiam dictum tincidunt dia
m. Quisque tincidunt scelerisque libero. Etiam egestas wisi a erat.\n
     Integer lacinia. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris tincidunt sem sed arcu. 
Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam id dolor. Maecenas sollicitudin.
 Et harum quidem rerum facilis est et expedita distinctio. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis 
velit mauris vel metus. Nullam dapibus fermentum ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas
. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi ne
sciunt. Pellentesque sapien. Duis risus. Mauris elementum mauris vitae tortor. Suspendisse nisl. Integer rutrum, orci vestibulum ullamcorper ultricie
s, lacus quam ultricies odio, vitae placerat pede sem sit amet enim.\n
    -In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Proin pede metus, vulputate nec, ferment
um fringilla, vehicula vitae, justo. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Quis autem vel eum iure reprehenderit 
qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Maecenas lorem. Etiam 
posuere lacus quis dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Curabitur ligula sapien, pulvina
r a vestibulum quis, facilisis vel sapien. Nam sed tellus id magna elementum tincidunt. Suspendisse nisl. Vivamus luctus egestas leo. Nulla non arcu 
lacinia neque faucibus fringilla. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam. Etiam dictum tincidunt diam. Etiam commodo dui ege
t wisi. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem seq
ui nesciunt. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Duis ante orci, molestie vitae vehicula venenatis, tincidunt a
c pede. Pellentesque sapien.. You can always access the course online by going to https://www.example.com/moodle/course/view.php?id=166000. The course 
will begin on October 17, 2020 and end on Never. Do we have a mutual understanding?&#39;
    +In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Proin pede metus, vulputate nec, ferment
um fringilla, vehicula vitae, justo. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Quis autem vel eum iure reprehenderit qu
i in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Maecenas lorem. Etiam posue
re lacus quis dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Curabitur ligula sapien, pulvinar a vest
ibulum quis, facilisis vel sapien. Nam sed tellus id magna elementum tincidunt. Suspendisse nisl. Vivamus luctus egestas leo. Nulla non arcu lacinia nequ
e faucibus fringilla. Etiam dui sem, fermentum vitae, sagittis id, malesuada in, quam. Etiam dictum tincidunt diam. Etiam commodo dui eget wisi. Nemo enim
 ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Proin pe
de metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Pellentesque sapien..\n
    +                          You can always access the course online by going to https://www.example.com/moodle/course/view.php?id=166000.\n
    +                          The course will begin on October 17, 2020 and end on Never.\n
    +                          Do we have a mutual understanding?&#39;
  
    /var/www/html/blocks/quickmail/tests/unit/formats_message_recipient_compose_message_body_test.php:85
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_parses_compose_message_body_testcase&quot; blocks/quickmail/tests/unit/formats_message_recipient_compose_message_body_test.php</code></pre></td>
<td><pre><code>see previous assertEqual() for details</code></pre></td>
<td><pre><code>see previous assertEqual() for details</code></pre></td>
</tr>
<tr class="odd">
<td><pre><code>41) block_quickmail_message_persistent_testcase::test_getters
    Failed asserting that two strings are equal.
    --- Expected
    +++ Actual
    @@ @@
    -&#39;2020-10-17 1:42 am&#39;
    +&#39;17 October 2020, 1:42 AM&#39;
  
    /var/www/html/blocks/quickmail/tests/unit/message_persistent_test.php:91
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_message_persistent_testcase&quot; blocks/quickmail/tests/unit/message_persistent_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>  42) block_quickmail_messenger_compose_testcase::test_messenger_sends_composed_email_now
    Failed asserting that 0 matches expected 4.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:63
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_compose_testcase&quot; blocks/quickmail/tests/unit/messenger_compose_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code>43) block_quickmail_messenger_compose_testcase::test_messenger_sends_composed_email_including_mentors_now
    Failed asserting that 0 matches expected 5.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:96
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_compose_testcase&quot; blocks/quickmail/tests/unit/messenger_compose_test.php
  
    44) block_quickmail_messenger_compose_testcase::test_messenger_sends_composed_message_now
    Failed asserting that 0 matches expected 4.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:146
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_compose_testcase&quot; blocks/quickmail/tests/unit/messenger_compose_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>45) block_quickmail_messenger_compose_testcase::test_skips_invalid_user_ids_when_sending
    Failed asserting that 0 matches expected 1.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:171
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code>46) block_quickmail_messenger_compose_testcase::test_messenger_sends_to_additional_emails
    Failed asserting that 3 matches expected 7.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:227
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80</code></pre>
<pre><code>To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_compose_testcase&quot; blocks/quickmail/tests/unit/messenger_compose_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>47) block_quickmail_messenger_compose_testcase::test_messenger_sends_a_receipt_if_asked
    Failed asserting that 1 matches expected 5.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_compose_test.php:258
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80</code></pre>
<pre><code> To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_compose_testcase&quot; blocks/quickmail/tests/unit/messenger_compose_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code>48) block_quickmail_messenger_drafting_testcase::test_messenger_saves_draft_email
    Failed asserting that actual size 0 matches expected size 4.
  
    /var/www/html/blocks/quickmail/tests/unit/messenger_drafting_test.php:66
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_messenger_drafting_testcase&quot; blocks/quickmail/tests/unit/messenger_drafting_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>  49) block_quickmail_persistent_concerns_testcase::test_get_readable_date
    Failed asserting that two strings are equal.
    --- Expected
    +++ Actual
    @@ @@
    -&#39;2020-10-17 1:42 am&#39;
    +&#39;17 October 2020, 1:42 AM&#39;
  
    /var/www/html/blocks/quickmail/tests/unit/persistent_concerns_test.php:88
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_persistent_concerns_testcase&quot; blocks/quickmail/tests/unit/persistent_concerns_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code>    50) block_quickmail_queue_scheduled_notifications_task_testcase::test_send_all_ready_messages_task_sends_messages
    Failed asserting that 0 matches expected 8.
  
    /var/www/html/blocks/quickmail/tests/unit/queue_scheduled_notifications_task_test.php:67
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_queue_scheduled_notifications_task_testcase&quot; blocks/quickmail/tests/unit/queue_scheduled_notifications_task_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>  51) block_quickmail_run_schedulable_notification_adhoc_task_testcase::test_runs_scheduled_via_adhoc_task
    Failed asserting that 0 matches expected 4.
  
    /var/www/html/blocks/quickmail/tests/unit/run_schedulable_notification_adhoc_task_test.php:84
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_run_schedulable_notification_adhoc_task_testcase&quot; blocks/quickmail/tests/unit/run_schedulable_notification_adhoc_task_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code> 52) block_quickmail_schedulable_testcase::test_increments_next_run_time_for_non_expired_schedule
    Failed asserting that 1526778000 matches expected 1526776200.
  
    /var/www/html/blocks/quickmail/tests/unit/schedulable_test.php:124
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_schedulable_testcase&quot; blocks/quickmail/tests/unit/schedulable_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>   53) block_quickmail_schedule_persistent_testcase::test_calculates_next_time_from_timestamp_for_active_schedule
    Failed asserting that 1603474977 matches expected null.
  
    /var/www/html/blocks/quickmail/tests/unit/schedule_persistent_test.php:118
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_schedule_persistent_testcase&quot; blocks/quickmail/tests/unit/schedule_persistent_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code> 54) block_quickmail_send_all_ready_messages_task_testcase::test_send_all_ready_messages_task_sends_messages
    Failed asserting that 0 matches expected 16.
  
    /var/www/html/blocks/quickmail/tests/unit/send_all_ready_messages_task_test.php:62
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_send_all_ready_messages_task_testcase&quot; blocks/quickmail/tests/unit/send_all_ready_messages_task_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>    55) block_quickmail_send_message_adhoc_task_testcase::test_send_message_adhoc_task_sends
    Failed asserting that 0 matches expected 4.
  
    /var/www/html/blocks/quickmail/tests/unit/send_message_adhoc_task_test.php:79
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_send_message_adhoc_task_testcase&quot; blocks/quickmail/tests/unit/send_message_adhoc_task_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code>    56) block_quickmail_sent_repo_testcase::test_sorts_get_for_user
    Failed asserting that &#39;233000&#39; matches expected 144000.
  
    /var/www/html/blocks/quickmail/tests/unit/sent_repo_test.php:93
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_sent_repo_testcase&quot; blocks/quickmail/tests/unit/sent_repo_test.php
  
    57) block_quickmail_sent_repo_testcase::test_sorts_get_for_user_and_course
    Failed asserting that &#39;233000&#39; matches expected 144000.
  
    /var/www/html/blocks/quickmail/tests/unit/sent_repo_test.php:169
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;block_quickmail_sent_repo_testcase&quot; blocks/quickmail/tests/unit/sent_repo_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="even">
<td><pre><code>  58) qformat_wordtable_export_test::test_export_description
    Failed asserting that two strings are equal.
    --- Expected
    +++ Actual
    @@ @@
     &lt;tr&gt;\n
     &lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;The question text.&lt;/p&gt;&lt;/td&gt;\n
     &lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;QFType&quot;&gt;DE&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n
    +\n
    +&lt;tr&gt;\n
    +&lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;TableRowHead&quot; style=&quot;text-align: right&quot;&gt;ID number:&lt;/p&gt;&lt;/td&gt;\n
    +&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;QFID&quot;&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n
     &lt;tr&gt;\n
     &lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;\n
     &lt;td style=&quot;width: 5.0cm&quot;&gt;&lt;p class=&quot;TableHead&quot;&gt;&lt;/p&gt;&lt;/td&gt;\n
  
    /var/www/html/question/format/wordtable/tests/wordtableformat_test.php:62
    /var/www/html/question/format/wordtable/tests/wordtableformat_test.php:116
    /var/www/html/lib/phpunit/classes/advanced_testcase.php:80
  
    To re-run:
     vendor/bin/phpunit &quot;qformat_wordtable_export_test&quot; question/format/wordtable/tests/wordtableformat_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
<tr class="odd">
<td><pre><code> 59) qformat_wordtable_export_test::test_export_essay29 Failed asserting that two strings are equal. 
--- Expected 
+++ Actual 
@@ @@ 
&lt;tr&gt;\n &lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;TableRowHead&quot; style=&quot;text-align: right&quot;&gt;Require attachments:&lt;/p&gt;&lt;/td&gt;\n 
&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;0&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n +\n &lt;tr&gt;\n 
+&lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;TableRowHead&quot; style=&quot;text-align: right&quot;&gt;Accepted file types:&lt;/p&gt;&lt;/td&gt;\n 
+&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n 
+\n +&lt;tr&gt;\n +&lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;TableRowHead&quot; style=&quot;text-align: right&quot;&gt;ID number:&lt;/p&gt;&lt;/td&gt;\n 
+&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;QFID&quot;&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n 
+&lt;tr&gt;\n &lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;\n 
&lt;td style=&quot;width: 5.0cm&quot;&gt;&lt;p class=&quot;TableHead&quot;&gt;Response template&lt;/p&gt;&lt;/td&gt;\n 
&lt;td style=&quot;width: 6.0cm&quot;&gt;&lt;p class=&quot;TableHead&quot;&gt;Information for graders&lt;/p&gt;&lt;/td&gt;\n 
@@ @@ 
&lt;td style=&quot;width: 6.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;\n 
&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n &lt;tr&gt;\n 
-&lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;i&gt;Allows a response of a few sentences or paragraphs. This must then be graded manually.&lt;/i&gt;&lt;/p&gt;&lt;/td&gt;\n 
+&lt;td colspan=&quot;3&quot; style=&quot;width: 12.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;i&gt;Allows a response of a file upload and/or online text. This must then be graded manually.&lt;/i&gt;&lt;/p&gt;&lt;/td&gt;\n 
&lt;td style=&quot;width: 1.0cm&quot;&gt;&lt;p class=&quot;Cell&quot;&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;\n &lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;/p&gt;\n &lt;/body&gt;\n 
&lt;/html&gt;\n &#39; 

/var/www/html/question/format/wordtable/tests/wordtableformat_test.php:62 
/var/www/html/question/format/wordtable/tests/wordtableformat_test.php:203 
/var/www/html/lib/phpunit/classes/advanced_testcase.php:80 

To re-run: vendor/bin/phpunit &quot;qformat_wordtable_export_test&quot; question/format/wordtable/tests/wordtableformat_test.php</code></pre></td>
<td>see previous assertEqual() for details</td>
<td>see previous assertEqual() for details</td>
</tr>
</tbody>
</table>


