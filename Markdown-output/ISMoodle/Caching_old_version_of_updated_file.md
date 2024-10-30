# Caching old version of updated file

When you update a file in the Moodle course file system that has been linked to from a Moodle course page with a new version that has exactly the same name, the old file continues to be downloaded and only updates after 24hrs has elapsed.

Further info is available at these addresses:

<http://moodle.org/mod/forum/discuss.php?d=109809>

<http://moodle.org/mod/forum/discuss.php?d=27774>

[http://moodle.org/mod/forum/discuss.php?d=109809â??](http://moodle.org/mod/forum/discuss.php?d=109809)

*Note: This last link suggests setting the $CFG-&gt;filelifetime variable in config.php to 1 second to overcome this problem. I'm not sure if this would affect performance though.*

JM 23/01/09

This has been set to 1 hour for both moodle 1.93 on pp and dev. 
