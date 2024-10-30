# Notes on Skype conversation with Catalyst on 31st March 2009

**Present:**
Martin Langhoff
Rachel Cooper
Jo Matthews
Peter Roberts

**Martin's recommendations included the following:**

-   Installing systat to get load statistics on the database and apache web server.

<!-- -->

-   Make sure that the cron is just running on one machine. I checked this with Austin and it's only running on moodle-a.

<!-- -->

-   Ensure the Apache web server and database are communicating at optimal speeds. It is essential that bandwidth and latency are optimal and at least 100mb. If not a possible cause could be link speed auto-negotiation.

<!-- -->

-   Session Data - Session data should be using the nfs mount
    We should be using hashed sessions
    The following setting should be specified in the config.php
    `$CFG->respectsessionsettings=true;`
    `set_ini("session_save_path,'4,600';path/on/nfs")`
    The set up a cron entry to do the garbage collection.

<!-- -->

-   Moodle Data - Move moodledata to the DB server. (it is currently on one of the application servers: `moodle-b`, and copied to `moodle-a` and `moodle-c`)
    (Should we then have it `rsync`-ing between `moodledb-a` and `moodledb-b`?)

<!-- -->

-   MySQL database - try using insert delayed
    The DELAYED option for the INSERT statement is a MySQL extension to standard SQL that is very useful if you have clients that cannot or need not wait for the INSERT to complete. This is a common situation when you use MySQL for logging and you also periodically run SELECT and UPDATE statements that take a long time to complete.
    When a client uses INSERT DELAYED, it gets an okay from the server at once, and the row is queued to be inserted when the table is not in use by any other thread.
    Another major benefit of using INSERT DELAYED is that inserts from many clients are bundled together and written in one block. This is much faster than performing many separate inserts.
    Note that INSERT DELAYED is slower than a normal INSERT if the table is not otherwise in use. There is also the additional overhead for the server to handle a separate thread for each table for which there are delayed rows. This means that you should use INSERT DELAYED only when you are really sure that you need it.
    The queued rows are held only in memory until they are inserted into the table. This means that if you terminate mysqld forcibly (for example, with kill -9) or if mysqld dies unexpectedly, any queued rows that have not been written to disk are lost.

Switch the `mdl_log` table to use the InnoDB storage engine. This will allow concurrent read/writes.

Write logs to a temporary table when the cron job is running. Then copy them as a batch to the main table (once a night?)

-   Mysql load balancing is not recommending. MySQL clustering is not great. Better to have just one very higher spec server. Martin has provided the following recommended spec:
    Sun 4140 (<http://nz.sun.com/products/x64/x4140/>)
    8x SAS slots
    2x AMD Opteron sockets (quad core in each)
    16GB Ram
    This machine has 8 slots for SAS hard drives, our recommendation would be for 2 pairs of disks in RAID-1 - one for the OS, one for data.
    This being a database server, one of the immediate upgrade options available is to add a RAID-1 pair of small+fast disks for the transaction log. Even with this upgrade, the server still has 2 bays free for further expansion.
    This is an example machine that we have found to be good value and reliable. Similar offerings are available from Dell, IBM, HP and others.

<!-- -->

-   Benchmarking tools
    `JMeter` - Good tool to for testing queries and simulating multiple users running concurrent queries. Takes a bit of work to set up.
    `Apachebench` - Easy tool to use. Good if you already know where the bottle necks are.

<!-- -->

-   Use moodle performance log. To use this you must set values in the config.php. Uncomment
    `define('mdl_perfdb',true);`
    `define('mdl_perftolog'true);`
    The utility to read the logs is 'perf\_parse.pl'. Get if from <http://cvs.moodle.org/contrib/devtools>
    to use it:
    `./perf_parse.pl <vaar/log/apache/error.log`

<!-- -->

-   Course backups - It is not recommended using the scheduled backups in Moodle on large sites like ours. It would be far better to shadow the moodledata directory on another machine. This could be done using rsync. We could use moodle-pp for this. Martin said he could write us some code that would allow courses to be easily restored from a snapshot of Moodle (we can easily prepare snapshots from the data backups we take each night.

<!-- -->

-   Turnitin - Jo is liaising with Catalyst developers for advice on Turnitin.

