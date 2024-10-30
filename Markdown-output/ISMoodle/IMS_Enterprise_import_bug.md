# IMS Enterprise import bug

The cron job that imports student data from SITS can take longer than the 15 minutes before the next jobs runs. This can lead to multiple concurrent imports, and have a large performance impact on Moodle. This fix ensures that the second instance does not start.

In /data/apache/htdocs/moodle/enrol/imsenterprise/enrol.php:

Just after "if($fileisnew){" on line 265, add:

``` java
set_config('enrol_ims_prev_time', $filemtime);  // Save previous time BEFORE doing the processing
```

RG: This has been implemented on moodle-c (the live moodle service) on 26/06/2008. Moodle version 1.9
