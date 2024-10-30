# Snapshot preparation

## **Ahead of time**

**
**

**Data
**

Sam to talk to SnV about rsync for existing Moodle copies on snapshot**
**

LTA to raise ticket for initial Rsync to 15/16    folder  just filedir    data//moodle/15-16

 

**DB**

Once DCS confirm ready, LTA to ask

Vivek to set up new database - moodle\_live\_1516

and to Start replication between

 

**App**

Prepare a copy of the current code.

BG image

Local settings - find out what new Db name is, remove memcachd settings

 

Place copy in SVN repo (if exists),   and into GIT (Sammy to prepare location/permissions)

Copy to /data/apache/htdocs/moodle/15-16

 

## On Snapshot day

Shut down Moodle

Final rsync - WebTec

Vivek - switch off replication.

Run config script

Do gui changes

Webtec - start container

Uncomment link to 15-16 on index.

Edit holding

 

## One Month later

Staff roles

 
