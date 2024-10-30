# Identify role accounts use in Moodle

## Overview

We are trying to find out what role accounts have been used to log into Moodle and when.

The information we have is a file named 'role\_accounts.txt' that contains a list of role account.

If you have a file in the Windows/Dos format; you are in trouble (DOS uses carriage return and line feed ("\\r\\n") as a line ending). Convert the file to Unix format.

A great thank to my colleague Sam to sort that out <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" />.

 

We are going to try to query the database to obtain the information we want.

We use the database on moodle-uat which is a good copy of what we have on live Moodle. We log in as ccspsql.

We had a couple of errors due (probably to privileges) therefore we use both the mysql client and Unix shell (a bit strange).

Some of the things we do are from the shell, others are from the mysql client. So you might want to open two terminal windows or use one terminal window and MySQL WorkBench (or your favourite MySQL client).

I am using the mysql client on the command line (terminal).

1.  connect to the Moodle database

If you are using MySQL WorkBench, ignore the first command (and go to the next one); it will not work. However you'll be able to export your result from MySQL Workbench.

Type the following (that will output what you do in a text file):

``` sql
tee /home/ccspsql/role_accounts_output.txt 
```

 

Create a table (we will delete it when finished. 

``` sql
DROP TABLE IF EXISTS `role_accounts`;
 
CREATE TABLE `role_accounts` (
  `username` varchar(100) NOT NULL DEFAULT ''
) COMMENT='Temporary table with the usernames used by role accounts';
```

 

**Remark**: don't use 'CREATE TEMPORARY TABLE' to create the table; otherwise 'mysqlimport' won't be able to import data into the table.

In your shell terminal window type the command below. You will be prompted for a password.

``` java
mysqlimport -u moodle_user -p --columns=username --local moodle_database  "$HOME/role_accounts.txt"
```

The name of your file must match the name of the table you want to import into (file named 'role\_account.xxx' into a table named 'role\_account').

**Comment**: from your mysql client you could type the following: "**LOAD DATA INFILE '/home/ccspsql/role\_accounts.txt' INTO TABLE role\_accounts (username);**"

However when I tried I had a error; which I think is due to privileges. I therefore used 'mysqlimport'.

Finally, from your mysql client, type the following two queries.

``` java
-- accounts that have been used in Moodle
SELECT u.username, u.deleted, u.suspended, 
DATE_FORMAT(FROM_UNIXTIME(u.lastaccess), '%e %b %Y') AS 'last access',
DATE_FORMAT(FROM_UNIXTIME(u.lastlogin), '%e %b %Y') AS 'last login'
FROM mdl_user AS u
WHERE u.username IN (select username from role_accounts);

-- list the role accounts that were not used in Moodle
SELECT r.username
FROM role_accounts AS r
     LEFT JOIN mdl_user AS u
     ON r.username = u.username
WHERE u.username is null;
 
-- delete the role_account table
DROP TABLE IF EXISTS `role_accounts`;
```

 

In the home directory of ccspsql you should have a file 'role\_accounts\_output.txt' with the result.

If you have used MySQL WorkBench, you won't have the file but you should be able to export the result of your query.

 

 
