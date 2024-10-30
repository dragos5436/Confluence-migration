# Tests-Test Account Automation

### Staff Tests Scripts

\[TA01\]  Create test accounts

1.  Log in to Moodle as tutor
2.  Go to test course xxxx
3.  Go to course administrator -&gt; Create test user accounts     [https://moodle.ucl.ac.uk/local/testaccount\_automation/index.php?course=xxxxx](https://moodle.ucl.ac.uk/local/testaccount_automation/index.php?course=38267)
4.  Leave number of test accounts on 1, leave days on 1
5.  Enter a password xxxxxxxx
6.  Enter an email  lta-learning   or whatever the test email will be
7.  Click “Create my test accounts”
8.  Verify that the next page loads with the name of the account created.  Eg   cceambu\_s5182 testaccount
9.  Click continue
10. Go to settings -&gt; users -&gt;enrolled users     [https://moodle.ucl.ac.uk/enrol/users.php?id=xxxxx](https://moodle.ucl.ac.uk/enrol/users.php?id=38267)
11. Enter name of account (above) in search box and click filter
12. Check that the account is on the course.

\[TA02\]  Delete tests accounts

1.  Navigate to <https://39.preview-moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?lastchanged=local_testaccount_automation%5Ctask%5Ccron_task>
2.  run task &gt; tasks completed with expired accounts deleted


