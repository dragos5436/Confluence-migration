# Summer 2019

An initial page - can be split as content grows

## Snapshot and decomission of Legacy Moodle

**Questions**

Will legacy moodle become future hardware for ongoing snapshots

Decide minimum hardware needed to run

What happens to older snapshots.

**Actions**

Remove extra three app servers - test on PP

Remove slave database.

Reduce CPU and memory of legacy database

Change DNS of instance

Revert login page - did we keep original?

Perform 'read only' actions

Add URL to 'snapshot' page

Completely decomission Legacy PP, Legacy Dev and Legacy UAT

## Snapshot of Current Moodle

Rsync data across to new location. Make copy of database and start replicating

Perform 'read only' actions

Add URL to 'snapshot' page

## Upgrade New moodle including  URL change

**Questions -**

better to upgrade and then do DNS, or other way round?

Check with PI about SSL / DNS considerations

**Actions**

Raise CR

Back up moodle

Change New moodle DNS from 1819 to plain moodle

Certificates

Upgrade moodle

Test

Make live


