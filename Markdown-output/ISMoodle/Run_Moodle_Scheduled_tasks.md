# Run Moodle Scheduled tasks

Reference: <https://docs.moodle.org/31/en/Administration_via_command_line#Scheduled_tasks>

**ssh onto the server of your choice**

I use the shell (bash) to pass multiple scheduled task; as I am not sure the CLI accepts multiple tasks.

The example below is for DEV/UAT

For **PP/Prod comment and uncomment** lines as appropriate

``` bash
#On moodle-admin and moodle-admin-pp
#it's better to run the command below prior to the real one.
#You'll be prompted for the password
#The password will be cached/saved for a certain amount of time.
#You can then run the 'for loop' without being prompted for a password.
#command to run first (on pp/prod):
#sudo -v -u ccspwww


for task in '\core\task\context_cleanup_task' \
'\tool_monitor\task\clean_events' \
'\core\task\file_trash_cleanup_task'
do
    #on dev and uat: run as ccspmd(d|u), no password required)
    time php admin/tool/task/cli/schedule_task.php --execute=$task
    #on PP and Prod
    #time sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task
done
```

## Code ready for moodle-admin-pp

**ready for pp**

``` bash
NOW=$(date +"%Y-%m-%d")
output_file="exec_scheduled_task_${NOW}.txt"
touch $output_file

#You'll be prompted for the password; it'll then be cached (timeout is predefined).
sudo -v -u ccspwww
 
for task in '\core\task\plagiarism_cron_task' \
'\core\task\search_index_task' \           
'\tool_recyclebin\task\cleanup_category_bin' \
'\mod_scheduler\task\purge_unused_slots' \
'\core\task\delete_unconfirmed_users_task' \
'\core\task\check_for_updates_task' \
'\core\task\password_reset_cleanup_task' \
'\editor_atto\task\autosave_cleanup_task' \
'\tool_cohortroles\task\cohort_role_sync' \
'\core\task\backup_cleanup_task' \
'\enrol_imsenterprise\task\cron_task'
do
    echo -e "\ntime sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \n" >> $output_file
    time sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \
2>&1 |tee -a $output_file
done

for task in '\report_customsql\task\run_reports' \
'\core\task\sync_plans_from_template_cohorts_task' \
'\tool_langimport\task\update_langpacks_task' \
'\core\task\search_optimize_task' \
'\core\task\complete_plans_task' \
'\mod_questionnaire\task\cleanup' \
'\core\task\context_cleanup_task' \
'\core\task\delete_incomplete_users_task' \
'\core\task\automated_backup_task' \
'\core\task\file_trash_cleanup_task'
do
    echo -e "\ntime sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \n" >> $output_file
    time sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \
2>&1 |tee -a $output_file
done

for task in '\core\task\stats_cron_task' 
do
    echo -e "\ntime sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \n" >> $output_file
    time sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/tool/task/cli/schedule_task.php --execute=$task \
2>&1 |tee -a $output_file
done

```


