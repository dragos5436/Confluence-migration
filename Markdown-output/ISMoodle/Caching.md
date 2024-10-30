# Caching

-   [New](#Caching-New)
-   [Legacy](#Caching-Legacy)

## New

\#\# Reference \#\#
<https://www.digitalocean.com/community/tutorials/how-to-set-up-a-redis-server-as-a-session-handler-for-php-on-ubuntu-14-04>
<https://chartio.com/resources/tutorials/how-to-delete-all-data-in-redis/>
Prerequisites
- PHP Webserver running LAMP
- Ubuntu server - this is where Redis will be installed
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# For single servers \#\#
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# Install Redis Step 1 — Install the Redis Server \#\#
1) The first thing we need to do is get the Redis server up and running, on our redis Droplet.
We will be using the regular Ubuntu package manager with a trusted PPA repository provided by Chris Lea. This is necessary to make sure we get the latest stable version of Redis.
As a general piece of security advice, you should only use PPAs from trusted sources.
First, add the PPA repository by running:
$ sudo add-apt-repository ppa:chris-lea/redis-server
Press ENTER to confirm.
2) Now you need to update the package manager cache:
$ sudo apt-get update
3) And finally, let's install Redis by running:
$ sudo apt-get install redis-server
4) Redis should now be installed on your server. To test the installation, try this command:
$ redis-cli ping
This will connect to a Redis instance running on localhost on port 6379. You should get a PONG as response.
\#\# Check Redis version \#\#
$ redis-server --version
\#\# Check if redis is installed as a service \#\#
$ cd /etc/
OR
$ cd /etc/redis/
$ find redis\*
That should give list of redis.conf services
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# Make a connection to Redis \#\#
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# Start and stop Redis \#\#
\#\# Starts redis on default port 6379 \#\#
$ redis-server
\#\# Start redis on port 6380 \#\#
$ redis-server --port 6380
\#\# Stop redis server \#\#
$ /etc/init.d/redis-server stop
$ /etc/init.d/redis-server start
\#\# connect to redis on default port 6379
$ redis-cli -h 127.0.0.1
Output
127.0.0.1:6379&gt;
\#\# Connect to redis on port 6380 \#\#
$ redis-cli -h 127.0.0.1 -p 6380
Output
127.0.0.1:6380&gt;
\#\# Telnet \#\#
$ telnet [moodle-nfs-01-pp.ucl.ac.uk](http://moodle-nfs-01-pp.ucl.ac.uk) 6379
$ telnet [moodle-nfs-01-pp.ucl.ac.uk](http://moodle-nfs-01-pp.ucl.ac.uk) 6380
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# check the data stored on redis \#\#
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
127.0.0.1:6379&gt; keys \*
// This should be empty if this is the first time you have configured redis on this server
Output
(empty list or set)
// Otherwise you should see a list similar to this
Output
127.0.0.1:6379&gt; keys \*
 1) "cs\_92c18184d874d4bbcebbf87940d76b8b"
 2) "cs\_3c60e20af217ecb7bfc5732b71099888"
 3) "us\_7bb91b24cea7ff2944fd35cd1f218a9a"
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# delete data stored in redis \#\#
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
// Removes data from your connection's CURRENT database on default port 6379
$ redis-cli flushdb
// Removes data from connection's CURRENT database specific to port
$ redis-cli -h 127.0.0.1 -p 6380
127.0.0.1:6380&gt; keys \*
127.0.0.1:6380&gt; flushdb
// Removes data from ALL databases.
$ redis-cli flushall
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
\#\# How to set-up Redis on Moodle \#\#
\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
<https://docs.moodle.org/34/en/Redis_cache_store>
\#\# For single server \#\#
\#\# Add redis server details \#\#
1) Site admin &gt; Plugins &gt; Caching &gt; Cache stores &gt; Redis
2) Fill in following details for Redis
Test server :: [moodle-nfs.ac.uk](http://moodle-nfs.ac.uk)
Test server password :: &lt;password for server&gt;
Serializer :: The default PHP serializer
\#\# Configure application cache  \#\#
1) Site admin &gt; Plugins &gt; Caching &gt; Configuration &gt;
2) 'Add instance' for Redis
3) Add following values
Store name - Redis application cache
Server - 127.0.0.1:6380
Password - ""
key\_prefix - ucl\_cs
Use serializer - the default option
\#\# Configure session cache \#\#
1) Uncomment following lines in moodle config.php
$CFG-&gt;session\_handler\_class = '\\core\\session\\redis';
$CFG-&gt;session\_redis\_host = '127.0.0.1';
$CFG-&gt;session\_redis\_port = 6380;  // Optional.
$CFG-&gt;session\_redis\_prefix = 'ucl\_us'; // Optional, default is don't set one.
$CFG-&gt;session\_redis\_acquire\_lock\_timeout = 120;
$CFG-&gt;session\_redis\_lock\_expire = 7200;
Result :
- All application cache is stored on redis port - 6379
- All session cache is stored on redis port - 6380

## Legacy

Cache definitions are edited on this page

[https://moodle.ucl.ac.uk/cache/admin.php](https://moodle-pp.ucl.ac.uk/cache/admin.php)

Print page as pdf as a backup of the settings

The file that holds the info is [moodlevm-nfs.ucl.ac.uk/data/moodle/muc/config.php](http://moodlevm-nfs.ucl.ac.uk/data/moodle/muc/config.php)

take a backup before proceeding.

**Instances**

The cache instances on production are already created

They run from memcachedATmoodlevm-nfs-03   to memcachedATmoodlevm-nfs-25

memcachedATmoodlevm-nfs   is  the 01 instance

and memcachedATmoodlevm-nfs-02 is reserved for session caching

**Definitions**

We are only touching definitions with mode "Application"

Set all application definitions to each of the instances. Leave the first one set as memcachedATmoodlevm-nfs, skip 02, and set the rest from 03 to 25

**Roll back**

Set applications to  either  memcachedATmoodlevm-nfs  or defaul file store (blank) - as per[PDF print-off](attachments/81595214/82449712.pdf)

Get DCS to revert cache instance changes. Resize cache on port 11211 back to 1.5GB

Keep session cache at 1GB

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Cache administration.pdf](attachments/81595214/82449712.pdf) (application/pdf)

