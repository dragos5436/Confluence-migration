# \[Draft\] Bulk backups and restore process

1) Get Moosh code

``` java
cd /data/apache/htdocs/
git clone git://github.com/tmuras/moosh.git moosh-as
cd moosh-as
```

2) Install Composer in that directory - <https://getcomposer.org/download>

3) Run install & and add to cli commands

``` java
php composer.phar install
cd ~
mkdir bin
ln -s /data/apache/htdocs/moosh-as/moosh.php ~/bin/moosh
moosh -p /data/apache/htdocs/moodle course-backup --help
 
```

4) Backup courses

``` java
nano ~/backups.sh

Insert the below and amend to relevant courses you need to backup/restore

#!/bin/bash
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=9247 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=9248 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=9249 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=987 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1016 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1010 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=9151 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1009 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1028 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1030 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=1013 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=968 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=970 --destination=/moodlefs/repository/bulk-cli-rollovers/
php /data/apache/htdocs/moodle/admin/cli/backup.php --courseid=969 --destination=/moodlefs/repository/bulk-cli-rollovers/

chmod +x backups.sh
./backups.sh
```

5) Restore courses

``` java
nano ~/restore.sh

Insert the below and amend to relevant courses you need to backup/restore

#!/bin/bash
moosh -p /data/apache/htdocs/moodle -n course-restore /moodlefs/repository/bulk-cli-rollovers/backup-moodle2-course-1009-benv0051_19-20-20200612-1553.mbz 509

chmod +x restore.sh
./restore.sh
```


