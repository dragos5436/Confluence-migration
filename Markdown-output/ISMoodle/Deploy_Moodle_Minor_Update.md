# Deploy Moodle Minor Update

Deploy to Pre-Prod:

``` java
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app01p.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app02p.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app03p.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app04p.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-admin02p.ad.ucl.ac.uk:/data/apache/htdocs/

unzip artefact-moodlesite-374-release-January-2020-v2.zip && chcon -R --type=httpd_sys_content_t moodlesite-374-release-January-2020
cp moodlesite-373-release-November-2019/config.php moodlesite-374-release-January-2020/
rm moodle && ln -s moodlesite-374-release-January-2020 moodle && chcon -R --type=httpd_sys_content_t moodle
ls -lah
ls -lahZ
```

Run Upgrade manually through web interface

Purge Caches through web interface - https://moodle-pp.ucl.ac.uk/admin/purgecaches.php

``` java
cd /data/moodle/localcache/ && rm -rf *
```

Deploy on Prod:

``` java
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app01.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app02.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app03.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-app04.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-admin01.ad.ucl.ac.uk:/data/apache/htdocs/
scp artefact-moodlesite-374-release-January-2020-v2.zip cceaasp@mdl-admin02.ad.ucl.ac.uk:/data/apache/htdocs/


df -h
unzip artefact-moodlesite-374-release-January-2020-v2.zip && chcon -R --type=httpd_sys_content_t moodlesite-374-release-January-2020
ls -lah
ls -lahZ
cp moodlesite-373-release-November-2019/config.php moodlesite-374-release-January-2020/
cp moodlesite-373-release-November-2019/.htaccess-maint moodlesite-374-release-January-2020/.htaccess
chmod -R g+w moodlesite-374-release-January-2020/*

Put site in Maintenance Mode - https://moodle.ucl.ac.uk/admin/settings.php?section=maintenancemode
mv moodle/.htaccess-maint moodle/.htaccess

cd /data/mysql && mysqldump -u mysqlcceaasp -p moodle_live --ignore-table={moodle_live.mdl_logstore_standard_log,moodle_live.mdl_tool_ally_log} > moodle_live-bkp-24042020-PRODdeploy.sql

cd /data/moodle/localcache/ && rm -rf {0..9}* && rm -rf {a..f}*

rm moodle && ln -s moodlesite-374-release-January-2020 moodle && chcon -R --type=httpd_sys_content_t moodle
ls -lah
ls -lahZ


mv moodle/.htaccess moodle/.htaccess-maint
```


