# CourseBank

Overview:

<https://moodle.org/plugins/tool_coursebank>

 

Setup and Configuration:

<https://account.coursebank.biz/content/moodle-setup>

 

Cron Configuration:

1.  Navigate to **Site Adminstration -&gt; Plugins -&gt; Admin tools -&gt; Course Bank &gt;** Use external cron is ticked
2.  Add the following line below to the Cron File; adjust \* \* \* \* \* so set when the cron to run

\* \* \* \* \* /opt/rh/php54/root/usr/bin/php /path to moodle/admin/cli/cron.php

\* \* \* \* \* php /path to moodle/admin/tool/coursebank/cli/backup.php

 

      3. Navigate to **Site Adminstration &gt; Server &gt; Schedules Tasks &gt;** Automated backups &gt; change the minutes to \* so the backups run in sync with the Cron file
