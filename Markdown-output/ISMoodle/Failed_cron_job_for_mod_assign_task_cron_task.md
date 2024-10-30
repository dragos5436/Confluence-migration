# Failed cron job for mod\_assign\\task\\cron\_task

### Current issue

The cron task for mod\_assign has been failing since September 2021.

Error message: "Scheduled task failed: Background processing for assignment module (mod\_assign\\task\\cron\_task),Invalid course module ID"

### Investigation

After some investigation work, I found a fix in https://tracker.moodle.org/browse/MDL-66597. The tracker was for a different issue but in the comments someone suggested a fix that was applicable to this issue as well. The fix involved using a CLI tool to fix the cron task.

### Testing fix

| Scenario                  | Steps                                                                       | Expected Behaviour                       | Pass/Fail |
|---------------------------|-----------------------------------------------------------------------------|------------------------------------------|-----------|
| Run the cron task         | 1.  php admin/cli/fix_course_sequence.php -c=* --fix                        | The command completes successfully       | Pass      |
| Check the task is passing | 1.  php admin/cli/scheduled_task.php --execute='\mod_assign\task\cron_task' | The task no longer fails when running it | Pass      |


