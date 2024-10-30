# To update - Moodle Trouble shooting

## Don't panic!

Should you find yourself alone in the office with the phone ringing, as indeed I find myself at the time of writing, start with the emergency document from the ATSDOCs subversion repository.

If that doesn't help - simply work through and/or add to this handy page.

**Can you see Moodle / login ok here?**

If the user can't login but you can

-   could be they're connecting to a moodle machine that's having problems. We have A,B and C.
-   can they see other sites etc - is it a network issue. 

**Moodle database connection a problem?**

Lately (2019) we have seen the mysqldump of the mdl\_logstore\_standard\_log table holding the lock for too long causing write operations to that table to be held & pile up until max\_connections is reached leading the site to go down.

``` java
ps aux | grep mysqld
mysql --login-path=local
SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST where user="tsmbkup";
kill query id
```

**Moodle appearing slowly or with cache inconsistency errors?**

Check the database read-only node - the replication has likely fallen behind. 

To resolve edit the config.php of the app servers using a readonly database and comment that part of the config out.

**Moodle appearing but with errors?**
If the following is reported - get the systems team to restart apache on the offending Moodle box

``` java
*_Warning_*_:  fopen(/data/moodlefs/.htaccess) \[function.fopen\]: failed to open stream:
Permission denied in_ *_/data/apache/htdocs/moodle/lib/setuplib.php_* _on line_ *_142_*

*_Warning_*_:  mkdir() \[function.mkdir\]: Permission denied in_
*_/data/apache/htdocs/moodle/lib/setuplib.php_* _on line_ *_153_*

_ERROR: Could not find or create a directory (/data/moodlefs/temp)_
_ERROR: Could not find or create a directory (/data/moodlefs/cache)_
_ERROR: Could not find or create a directory (/data/moodlefs/sessions)_
```

**To see which server you are on**
<http://moodle.ucl.ac.uk/ucl_tools>

On the command line:uname -a

**To check the servers with Nagios**

The moodle group of machines is called Webapps Production machines:

<https://systems-nagios.ucl.ac.uk/status/hostgroup?parentid=13>

Useful live reports :

Load on the [moodle web servers](https://systems-nagios.ucl.ac.uk//graph?style=singleton&state=o16moodlevm%20load%20averagesof-86400000.00000e0.000000000000nof0.0001388888888e11.0197069444405load5n000520moodlevm-a%3A%3ALoad%20averages%3A%3Aload520moodlevm-b%3A%3ALoad%20averages%3A%3Aload520moodlevm-c%3A%3ALoad%20averages%3A%3Aload51emoodle-a%3A%3ALoad%20averages%3A%3Aload51emoodle-b%3A%3ALoad%20averages%3A%3Aload50005o1no1no1no1no1n05lineso34bf32121o011)

Load on [moodle database server](https://systems-nagios.ucl.ac.uk//graph?style=singleton&state=o16moodlevm%20load%20averagesof-86400000.00000e0.000000000000nof0.0001388888888e11.0197069444405load5n000520moodlevm-a%3A%3ALoad%20averages%3A%3Aload520moodlevm-b%3A%3ALoad%20averages%3A%3Aload520moodlevm-c%3A%3ALoad%20averages%3A%3Aload51emoodle-a%3A%3ALoad%20averages%3A%3Aload51emoodle-b%3A%3ALoad%20averages%3A%3Aload50005o1no1no1no1no1n05lineso34bf32121o011)

**Error: database connection failed**
If you get errors like "database connection failed" or "could not connect to the database you specified", here are some possible reasons and some possible solutions.

-   Moodle can't see the database server (is it up - try connecting to it with ssh or putty)
-   Ask the DBAs - Vivek for example!

**Look at the apache access/error logs**

Either directly on the servers or ftp them over and study them locally.
