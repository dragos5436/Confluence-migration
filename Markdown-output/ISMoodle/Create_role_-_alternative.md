# Create role - alternative

## The brief

This page tries to propose an way of creating a read only role in Moodle.

As an alternative to what is done when preparing the [Moodle snapshot / archive](Archive_and_year-end_process_-_actions_required).

This work is not complete.

Previously, a selenium script was used.

Here we do it with [moosh](http://moosh-online.com/).

**Why moosh?**

Well, I think it is a great tool and it is 'self contained'. It won't change anything system wide.

For example, if you log in as <ccspmdu@moodle-uat.ucl.ac.uk> and type <img src="plugins/servlet/confluence/placeholder/unknown-macro" class="wysiwyg-unknown-macro" /> you will see that <img src="plugins/servlet/confluence/placeholder/unknown-macro" class="wysiwyg-unknown-macro" /> is in the path. Meaning if you install moosh in your<img src="plugins/servlet/confluence/placeholder/unknown-macro" class="wysiwyg-unknown-macro" />directory, create a symlink with a 'friendly name'; you won't affect anybody else on the system. 

You can find instructions to install moosh [here](http://moosh-online.com/).

An alternative to moosh would be to use SQL statements. However I always think going directly into the database should be the last option.

## doing it

The page related to [moosh commands](http://moosh-online.com/commands/) details how to proceed.

To create a role with short name '***newstudentrole***', you provide a description, name and archetype (here the archetype is '***student***').

The roleid of the newly created role is returned:

``` java
moosh role-create -d "Role description" -a student -n "Role name" newstudentrole
```

You would then be able to update the capability of the role. On the moosh website they give two examples.

One in which you provide the roleid of the role you want to update; another example uses the short name of the role you want to update.

update "student" role, "mod/forumng:grade" capability, system wide (contextid=1):

``` java
moosh role-update-capability student mod/forumng:grade allow 1
```

 

update "editingteacher" role (roleid=3), "mod/forumng:grade" capability, system wide (contextid=1):

``` java
moosh role-update-capability -i 3 mod/forumng:grade prevent 1
```

 

I've created a role on a Moodle installation. I've also looked at the code moosh uses and traced the query in the database.

From the page linked [here](https://github.com/tmuras/moosh/blob/master/Moosh/Command/Moodle23/Role/RoleCreate.php), if you search 'create\_role', one can see moosh uses the following:

``` java
$newroleid = create_role($options['name'], $arguments[0], $options['description'], $options['archetype']);
```

 

To look into what it does in Moodle, you can search 'create\_role' on the following [page](https://github.com/moodle/moodle/blob/6a74e76fb8f35b56691bf5c9d07e5e2dfcb01c10/lib/accesslib.php).

We can see it does an insert into the role table:

``` java
$id = $DB->insert_record('role', $role);
```

 

The actual insertion of the record is done in the pdo\_moodle\_database class in the insert\_record function.

I have traced the SQL queries, in the database, for the creation of a role. 

I have created a role with sort name '***sammyrole2***' based on the archetype '***student***':

``` java
moosh role-create -d "readonly sammy role" -a student -n "sammy role 2" sammyrole2
```

**Note**: if moosh gives you the following warning: '`If you're sure you know what you're doing, run moosh with -n flag to skip that test`'

replace the previous command with: **moosh -n role-create -d "readonly sammy role" -a student -n "sammy role 2" sammyrole2**

 

From the log, one can see Moodle first does a select (to check if the name already exists) and then create the role with an INSERT into the mdl\_role table (see below).

From the SQL queries that follow, I'd say it is safer to do it with moosh rather than directly in the database.

``` java
                   58 Query     SELECT * FROM mdl_role WHERE shortname = 'sammyrole2'
                   58 Query     SELECT MAX(sortorder) + 1 FROM mdl_role
                   58 Query     INSERT INTO mdl_role (name,shortname,description,archetype,sortorder) VALUES('sammy role 2','sammyrole2','readonly sammy role','student','10')
160623  9:47:18    58 Query     SELECT id FROM mdl_role WHERE shortname = 'student' AND archetype = 'student'
                   58 Query     SELECT id,contextlevel FROM mdl_role_context_levels WHERE roleid = '5'  ORDER BY contextlevel
                   58 Query     DELETE FROM mdl_role_context_levels WHERE roleid = '10'
                   58 Query     INSERT INTO mdl_role_context_levels (roleid,contextlevel) VALUES('10','50')
                   58 Query     INSERT INTO mdl_role_context_levels (roleid,contextlevel) VALUES('10','70')
                   58 Query     SELECT * FROM mdl_role
                   58 Query     SELECT * FROM mdl_role
                   58 Query     SELECT * FROM mdl_role
                   58 Query     SELECT * FROM mdl_role WHERE id = '5'
                   58 Query     SELECT *
                                    FROM mdl_role_capabilities
                                   WHERE roleid = '5' AND contextid = '1'
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','block/online_users:viewlist','1','1460907467','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','booktool/print:print','1','1460907493','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','enrol/self:unenrolself','1','1460907460','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','gradereport/overview:view','1','1460907475','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','gradereport/user:view','1','1460907475','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assign:exportownsubmission','1','1460907435','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assign:submit','1','1460907435','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assign:view','1','1460907435','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assignment:exportownsubmission','1','1460907436','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assignment:submit','1','1460907436','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/assignment:view','1','1460907436','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/book:read','1','1460907436','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/chat:chat','1','1460907437','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/chat:readlog','1','1460907437','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/choice:choose','1','1460907437','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/data:comment','1','1460907438','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/data:exportownentry','1','1460907439','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/data:viewentry','1','1460907438','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/data:writeentry','1','1460907438','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/feedback:complete','1','1460907440','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/feedback:view','1','1460907440','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/feedback:viewanalysepage','1','1460907440','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:allowforcesubscribe','1','1460907443','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:createattachment','1','1460907442','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:deleteownpost','1','1460907442','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:exportownpost','1','1460907443','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:replypost','1','1460907441','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:startdiscussion','1','1460907441','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:viewdiscussion','1','1460907441','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/forum:viewrating','1','1460907441','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/glossary:comment','1','1460907444','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/glossary:exportownentry','1','1460907444','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/glossary:view','1','1460907443','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/glossary:write','1','1460907444','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/lti:view','1','1460907446','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/quiz:attempt','1','1460907447','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/quiz:reviewmyattempts','1','1460907448','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/quiz:view','1','1460907447','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/scorm:savetrack','1','1460907449','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/scorm:skipview','1','1460907449','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/scorm:viewscores','1','1460907449','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/survey:participate','1','1460907451','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/wiki:createpage','1','1460907452','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/wiki:editcomment','1','1460907453','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/wiki:editpage','1','1460907452','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/wiki:viewcomment','1','1460907453','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/wiki:viewpage','1','1460907452','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:peerassess','1','1460907453','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:submit','1','1460907453','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:view','1','1460907453','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:viewauthornames','1','1460907454','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:viewauthorpublished','1','1460907454','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','mod/workshop:viewpublishedsubmissions','1','1460907454','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/block:view','1','1460907393','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/blog:manageexternal','1','1460907390','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/blog:search','1','1460907389','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/blog:view','1','1460907389','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/comment:post','1','1460907394','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/comment:view','1','1460907394','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/course:isincompletionreports','1','1460907389','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/course:viewparticipants','1','1460907389','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/course:viewscales','1','1460907389','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/grade:view','1','1460907392','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/portfolio:export','1','1460907394','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/question:flag','1','1460907392','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/rating:rate','1','1460907395','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/rating:view','1','1460907394','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/rating:viewall','1','1460907395','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/rating:viewany','1','1460907394','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/user:readuserblogs','1','1460907391','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/user:readuserposts','1','1460907391','0')
                   58 Query     INSERT INTO mdl_role_capabilities (contextid,roleid,capability,permission,timemodified,modifierid) VALUES('1','10','moodle/user:viewdetails','1','1460907387','0')
                   58 Query     SHOW VARIABLES LIKE 'max_allowed_packet'
                   58 Query     INSERT INTO mdl_logstore_standard_log (eventname,component,action,target,objecttable,objectid,crud,edulevel,contextid,contextlevel,contextinstanceid,userid,courseid,relateduserid,anonymous,other,timecreated,origin,ip,realuserid) VALUES ('\\core\\event\\user_loggedin','core','loggedin','user','user','2','r','0','1','10','0','2','0',NULL,'0','a:1:{s:8:\"username\";s:5:\"admin\";}','1466675237','cli',NULL,NULL)
```

 

I have also made a text file listing the capabilities I have found on the Moodle role creation web page (I hope they are all there <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" />).

I'll commit the file somewhere in git.

[<img src="rest/documentConversion/latest/conversion/thumbnail/62657598/1" height="250" />](/download/attachments/62657554/moodle_capabilities.txt?version=1&modificationDate=1466685750000&api=v2)

The following seems to be the values that can be assigned to capabilities; each which, I guess, correspond to a number:

> Not set
> Allow
> Prevent
> Prohibit
> Allow
> Prevent
> Prohibit

We could loop through the [capabilities file](attachments/62657554/62657598.txt) and set them accordingly.

As Martin Dougiamas suggest in [this post](https://moodle.org/mod/forum/discuss.php?d=88427#p391965), it is advisable to set all **write** capabilities to '**prohibit**'.

 

So that's it; I think using moosh to create roles and then update the capabilities is a nice way of achieving what we want.

#### **To finish quickly**

I'd say, from the log, I think the first INSERT is the most important. It creates the new role.

Subsequent INSERT are to 'mimic' the capabilities of the student role (the archetype we chose in this example).

But if you don't want an archetype, you might be able to skip subsequent INSERT. Your role would have no defined capabilities.

You would then loop through the attached [capabilities file](attachments/62657554/62657598.txt) and set capabilities according to your taste.

The last INSERT logs what you have done. But again if you create the SQL queries yourself, you wouldn't necessarily log what you have done.

 

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle\_capabilities.txt](attachments/62657554/62657598.txt) (text/plain)

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Agreed, this looks much better than SQL hacking, nice work!</p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by ucweswa at Jun 23, 2016 13:24
</div></td>
</tr>
<tr class="even">
<td><p>Thanks <img src="images/icons/emoticons/wink.svg" alt="(wink)" class="emoticon emoticon-wink" /></p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by cceamou at Jun 23, 2016 13:28
</div></td>
</tr>
</tbody>
</table>


