# SITS Interface

**Dev**

database - moodle\_int\_management

user - mdlintuser\_dev

**Uat**

database - moodle\_int\_management

user - mdlintuser\_uat

**Pre-prod**

database - moodle\_int\_management

user - mdlintuser\_pp

**Prod**

database - moodle\_int\_management

user - mdlintuser\_live

Cron

\# Puppet Name: Run the SITS Filter 2 XML export process
15 1 \* \* \* /usr/local/bin/mdl\_int\_mgmt\_RunSits.sh &gt; /dev/null 2&gt;&1

How to run

$ cd /path-to-moodle\_int\_management/app

$ Console/cake RunSits runCronJob


