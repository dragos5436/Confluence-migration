# Moodle 3.7.1 - bug fix release 1

1) IN03758026

``` java
cd /data/apache/htdocs/moodle/question/type/ddmatch/ && git remote add ucl git@git.automation.ucl.ac.uk:moodle/moodle-qtype_ddmatch.git && git fetch ucl && git checkout -b ucl-master ucl/master
```

Added to build - <https://git.automation.ucl.ac.uk/moodle/moodle-1819/merge_requests/14/diffs>

2) Hub errors in logs

``` java
cd /data/apache/htdocs/moodle/local/hub/ && git fetch && git checkout -b v2 origin/v2
```

3) Flash Apocalypse error fails on Aspire

``` java
cd /data/apache/htdocs/moodle/report/apocalypse/ && git pull
```

Fixed by 9984fd92fd5f5f3de4c09f8e4e03730078edef55

4) Quickmail

``` java
cd /data/apache/htdocs/moodle/blocks/quickmail/ && git checkout -b master origin/master && git pull
```

Migrate to V2:

a) Ensure that plugin is enabled. <https://moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?action=edit&task=block_quickmail%5Ctasks%5Cmigrate_legacy_data_task> - Enable task

b) <https://moodle.ucl.ac.uk/admin/search.php?query=block_quickmail_migration_chunk_size> increase 'block\_quickmail\_migration\_chunk\_size' to 100000000000

c) <https://moodle.ucl.ac.uk/admin/tool/task/schedule_task.php?task=block_quickmail%5Ctasks%5Cmigrate_legacy_data_task> and run now 

d) Review progress at <https://moodle.ucl.ac.uk/blocks/quickmail/migrate.php> - this should complete in one go but if need be repeat step c) until complete

e) on each of the app servers run - php admin/cli/purge\_caches.php (clears errors about Cannot find info for: "{$a}" or Exception - Class 'block\_quickmail\_string' not found . )

f) <https://moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php?action=edit&task=block_quickmail%5Ctasks%5Cmigrate_legacy_data_task> and disable task

g) Go to <https://moodle.ucl.ac.uk/blocks/quickmail/migrate.php> and click on "delete old quickmail tables"

5)   MDL-66071 - LDAP account issue

``` java
cd /data/apache/htdocs/moodle && git fetch && git reset --hard && git pull
```

<https://git.automation.ucl.ac.uk/moodle/moodle-core/commit/233720399c02899f1952a078161eee2232b6c60c>

6) Pattern Match Molecule Editor Question Type

``` java
cd /data/apache/htdocs/moodle/question/type/jme/ && git stash && git remote add segun https://github.com/segunb/moodle-qtype_jme.git && git fetch segun && git checkout -b segun-fix segun/Editor-not-looading-in-Moodle371

cd /data/apache/htdocs/moodle/question/type/pmatchjme/ && git stash && git remote add segun https://github.com/segunb/moodle-qtype_pmatchjme.git && git fetch segun && git checkout -b segun-fix segun/Fails-to-save-on-Moodle371
```

Segun's fixes submitted upstream <https://github.com/moodleou/moodle-qtype_pmatchjme/issues/16> & <https://github.com/jmvedrine/moodle-qtype_jme/pull/5>

7) Catchup with latest version of Adaptable

``` java
cd /data/apache/htdocs/moodle/theme/adaptable && git fetch && git checkout -b UCL_master-cc0605e ucl/UCL_master-cc0605e
```

8) Update redis session prefix to be no more than 5 characters as per Moodle recommendation

"sess\_" instead of "ucl\_us\_"

9) Uninstall Certificate mod and Essential theme

Fix an issue with Moodle Mobile App not working. cleanup


