# Moodle Snapshot Upgrade Steps

### Snapshot 13-14

ssh onto [moodle-pp-a.ucl.ac.uk](http://moodle-pp-a.ucl.ac.uk)/data/apache/htdocs/moodle

CHECK CONFIG!!

php admin/cli/upgrade.php

Copy hsuforum to app server

install plugin

git checkout MOODLE\_28\_STABLE

php admin/cli/upgrade.php

git checkout MOODLE\_30\_STABLE

php admin/cli/upgrade.php

git checkout MOODLE\_31\_STABLE

php admin/cli/upgrade.php

ssh to mdl-snpsht-app01

cd /data/apache/htdocs/moodle/moodle-snapshot-site-356-release-May-2019-13-14/

CHECK CONFIG!!

php admin/cli/upgrade.php

Update config.php with correct wwwroot

Test

remove maintenance mode

release by moving .htaccess to .htaccess-maint

### Snapshot 14-15

ssh onto [moodle-pp-a.ucl.ac.uk](http://moodle-pp-a.ucl.ac.uk)/data/apache/htdocs/moodle

php admin/cli/upgrade.php

git checkout MOODLE\_30\_STABLE

php admin/cli/upgrade.php

git checkout MOODLE\_31\_STABLE

php admin/cli/upgrade.php

\*\*switch to mdl-snpsht-app01\*\*

ssh to [mdl-snpsht-ap01.ad](http://mdl-snpsht-ap01.ad) 

cd /data/apache/htdocs/moodle/moodle-snapshot-site-356-release-May-2019-14-15/

CHECK CONFIG!!

php admin/cli/upgrade.php

Update config.php with correct wwwroot

Test

remove maintenance mode

release by moving .htaccess to .htaccess-maint

### Snapshot 15-16

Check maintenance mode on

ssh onto [moodle-pp-a.ucl.ac.uk](http://moodle-pp-a.ucl.ac.uk)/data/apache/htdocs/moodle

Check config

php admin/cli/upgrade.php

git checkout MOODLE\_31\_STABLE

php admin/cli/upgrade.php

ssh to mdl-snpsht-ap01.ad 

cd /data/apache/htdocs/moodle/moodle-snapshot-site-356-release-May-2019-15-16/

Check config

php admin/cli/upgrade.php

Update config.php with correct wwwroot

Test

remove maintenance mode

release by moving .htaccess to .htaccess-maint

### Snapshot 16-17

ssh onto  [mdl-snpsht-ap01.ad.ucl.ac.uk](http://mdl-snpsht-ap01.ad.ucl.ac.uk)/data/apache/htdocs/moodle/moodle-snapshot-site-356-release-May-2019-16-17/

php admin/cli/upgrade.php

Update config.php with correct wwwroot

Test

remove maintenance mode

release new server
