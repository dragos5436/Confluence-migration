# Forums

-   [How do Forums in Moodle work?](#Forums-HowdoForumsinMoodlework?)
-   [What if emails have not been sent out by the cron job (eg if the cron job fails and is not restarted immediately)](#Forums-Whatifemailshavenotbeensentoutbythecronjob(egifthecronjobfailsandisnotrestartedimmediately))
    -   [28 Oct 08](#Forums-28Oct08)

# How do Forums in Moodle work?

Forums are an inbuilt part of the Moodle installation, not a plugin that you have to add.

There are 8 tables in the moodle database for forums:

-   mdl\_forum
-   mdl\_forum\_discussions
-   mdl\_forum\_posts
-   mdl\_forum\_queue
-   mdl\_forum\_ratings
-   mdl\_forum\_read
-   mdl\_forum\_subscriptions
-   mdl\_forum\_track\_prefs

Each forum has a unique (auto increment) id in the **mdl\_forum** table, for example the forums in my test course (course id 490) are as follows:

``` java
select id, course, type, name from mdl_forum where course = 490;
+------+--------+---------+---------------+
| id   | course | type    | name          |
+------+--------+---------+---------------+
| 1352 |    490 | news    | News forum    |
| 1359 |    490 | general | Ask the tutor |
+------+--------+---------+---------------+
```

Within each forum there can be several discussions, each with their own unique (auto increment id):

``` java
select id, course, forum, name, firstpost, userid from mdl_forum_discussions where course = 490;
+------+--------+-------+-------------------------------------------+-----------+--------+
| id   | course | forum | name                                      | firstpost | userid |
+------+--------+-------+-------------------------------------------+-----------+--------+
| 1058 |    490 |  1359 | What subject should this course be about? |      1954 |    174 |
| 3000 |    490 |  1352 | test from rachel                          |      5609 |    174 |
| 5245 |    490 |  1359 | test 16:45                                |     10227 |    174 |
| 8760 |    490 |  1352 | hello there                               |     17368 |    174 |
+------+--------+-------+-------------------------------------------+-----------+--------+
```

To see a forum through Moodle, the URL is <http://moodle.ucl.ac.uk/mod/forum/view.php?f=1352>
Within each discussion there can be many posts, that are either part of one discussion or separate discussions (e.g. if they have a parent id):

``` java
select id, discussion, parent, userid, mailed, subject, message, attachment, mailnow from mdl_forum_posts where discussion = 8760;
+-------+------------+--------+--------+--------+-----------------+----------------------------+-----------------------+---------+
| id    | discussion | parent | userid | mailed | subject         | message                    | attachment            | mailnow |
+-------+------------+--------+--------+--------+-----------------+----------------------------+-----------------------+---------+
| 17368 |       8760 |      0 |    174 |      1 | hello there     | hello there                |                       |       1 |
| 17410 |       8760 |  17368 |    174 |      1 | Re: hello there | test test test             |                       |       1 |
| 17412 |       8760 |  17368 |    174 |      0 | Re: hello there | test with an attachment!   | complibdec07flyer.doc |       0 |
+-------+------------+--------+--------+--------+-----------------+----------------------------+-----------------------+---------+
```

To see this discussion in Moodle, the URL is <http://moodle.ucl.ac.uk/mod/forum/discuss.php?d=8760>

If an attachment is added to a forum it is saved to the course folder as follows:

``` java
<moodle data>/<course id>/moddata/forum/<forum id>/<post id>
```

for the "complibdec07flyer.doc" attachment listed above this would be

``` java
/data/moodle/490/moddata/forum/1352/17412
```

If you tick **mail now** then **mdl\_forum\_posts.mailnow** is set to **1**.

When the new record is added to the mdl\_forum\_posts table the **mailed** field is set to **0**, if you refresh this query later it will have updated to 1 (how soon this updates depends on if you have set the mailnow option). If the mail now option is set, the post should be sent within 15 minutes when the next cron job runs. If the mail now is not set, the post will be sent 30 - 45 minutes later. This is because the cron job runs every 15 mins but the forum post can be edited for up to 30 mins after it is created. To check whether the cron job has sent the post, open the cron log that was created 30 mins after the post was created and search for "Processing module function forum\_cron ...". You should see details of all the posts sent to which users. eg.

"Sending post 37277: Molecular quiz - wobble question"

Seeing the **1** in the **mailed** field means that the cron job has attempted to send the post, if there is a problem with the cron job then the post might not have been sent. To be sure you can check the [cron job logs](cron_job)

# What if emails have not been sent out by the cron job (eg if the cron job fails and is not restarted immediately)

The following tables show whether Moodle thinks the email message has been sent out:

-   mdl\_block\_quickmail\_log
-   mdl\_forum\_post

Use the following queries to check this:

``` java
SELECT p.id, p.userid, from_unixtime(created), p.discussion FROM mdl_forum_posts p WHERE p.mailed = 0;
```

and

``` java
SELECT courseid,subject,message,from_unixtime(timesent) FROM `mdl_block_quickmail_log`;
```

Unread posts mean that an email hasn't been sent because Moodle updates this setting when an email gets sent about the post to a subscribed user but unread means that the currently logged in user hasn't been sent the message.

## 28 Oct 08

The Moodle cron job was cron running between around 7:00am and was restarted at about 15:00. Below is all the forum posts that were created between 5:00am and about 16:40pm on 28/10/2008.

'**mailnow**' is set to **1** if the user selects this option, otherwise iti s set to **0**.
'**mailed**' is set to **0** until the message is sent out (by the cron which should run every 15 mins) when this field is set to **1**.
(I'm not sure what the **2** in this field means ...)

``` java
SELECT p.id, p.userid, mdl_user.username, subject, from_unixtime(created), p.discussion, mailed, mailnow
FROM mdl_forum_posts p, mdl_user
WHERE created > 1225170000 AND mdl_user.id = p.userid;
+-------+--------+----------+----------------------------------------------------------+------------------------+------------+--------+---------+
| id    | userid | username | subject                                                  | from_unixtime(created) | discussion | mailed | mailnow |
+-------+--------+----------+----------------------------------------------------------+------------------------+------------+--------+---------+
| 35253 |  55325 | ucsalwi  | Re:  Later Australopithecus and the evolution of diet    | 2008-10-28 09:16:37    |      12081 |      2 |       0 |
| 35255 |  52573 | ucjtrcp  | Re: 1st draft                                            | 2008-10-28 09:45:49    |      16409 |      1 |       0 |
| 35257 |  52573 | ucjtrcp  | Re: RIF response sheets for participants                 | 2008-10-28 09:48:19    |      16297 |      1 |       0 |
| 35259 |   6395 | ucacele  | Re: Second Individual Coursework                         | 2008-10-28 09:52:54    |      15803 |      1 |       0 |
| 35261 |  56283 | zczne00  | Re: first meeting - when is everyone available?          | 2008-10-28 10:12:28    |      15927 |      2 |       0 |
| 35263 |   4846 | uclsjme  | Short Film Competition                                   | 2008-10-28 10:21:36    |      16449 |      1 |       1 |
| 35265 |  56283 | zczne00  | AAAAAA Panic! Read plz...                                | 2008-10-28 10:23:51    |      16451 |      2 |       0 |
| 35267 |   9931 | sjjdgal  | Welcome to your ALS discussion forum                     | 2008-10-28 10:32:04    |      16453 |      2 |       0 |
| 35269 |    698 | ucznjaw  | Complaints about course materials                        | 2008-10-28 10:34:01    |      16455 |      2 |       0 |
| 35271 |  35736 | uczardu  | Postings are required!                                   | 2008-10-28 10:56:24    |      16457 |      2 |       0 |
| 35273 |  35736 | uczardu  | Re: Task 1 extensions                                    | 2008-10-28 11:00:19    |      15873 |      2 |       0 |
| 35275 |    629 | zczcb06  | Re: first meeting - when is everyone available?          | 2008-10-28 11:38:58    |      15927 |      2 |       0 |
| 35277 |   5999 | tjmspmu  | 30 Oct. Afternoon Class in Rockefeller B15               | 2008-10-28 11:52:16    |      16459 |      2 |       1 |
| 35279 |  26707 | zclyd17  | Re: Submitting the first assignment                      | 2008-10-28 11:59:09    |      16399 |      2 |       0 |
| 35281 |   2497 | uctptms  | Week 6 LECTURE - Special Time                            | 2008-10-28 12:00:43    |      16461 |      2 |       0 |
| 35283 |   8727 | sfaapbu  | A personal view of the experiences                       | 2008-10-28 12:07:20    |      16463 |      2 |       0 |
| 35285 |   6124 | rmjdhpi  | Student representative                                   | 2008-10-28 12:19:53    |      16465 |      2 |       0 |
| 35287 |  26382 | zclyd20  | Re: Submitting the first assignment                      | 2008-10-28 12:25:13    |      16399 |      2 |       0 |
| 35289 |  35706 | uctlnmy  | CANCELLATION OF TODAY'S LECTURE: 28 OCTOBER 2008         | 2008-10-28 12:27:02    |      16467 |      2 |       1 |
| 35291 |    329 | ucgagrc  | Dissecting Room Form to sign                             | 2008-10-28 12:36:56    |      16469 |      2 |       0 |
| 35293 |  27658 | zclyd29  | Re: PDF Conversion (extending the MA topic)              | 2008-10-28 12:46:27    |      15953 |      1 |       0 |
| 35295 |   1916 | ucbcajc  | No practical on 28th October                             | 2008-10-28 12:51:32    |      16471 |      1 |       0 |
| 35297 |  26707 | zclyd17  | Re: PDF Conversion (extending the MA topic)              | 2008-10-28 12:54:40    |      15953 |      1 |       0 |
| 35299 |  17213 | uctlkar  | Wednesday Tutorial on Fetal Monitoring to be rescheduled | 2008-10-28 13:06:09    |      16473 |      2 |       0 |
| 35301 |   5328 | uctldgu  | Re: Change of date: Seminar 6                            | 2008-10-28 13:09:41    |      16093 |      2 |       1 |
| 35303 |  24270 | ucfbgas  | Coursework deadlines for GEOL 1013                       | 2008-10-28 13:11:30    |      16475 |      2 |       0 |
| 35305 |   2512 | uccarbi  | Re: thoughts on autobiographies                          | 2008-10-28 13:11:39    |      16305 |      2 |       0 |
| 35307 |   2512 | uccarbi  | Re: An Autobiographical Account Of Learning              | 2008-10-28 13:23:34    |      16163 |      2 |       0 |
| 35309 |    395 | zczcc02  | Questionnaire!                                           | 2008-10-28 13:27:00    |      16477 |      2 |       0 |
| 35311 |   1071 | zclsb23  | Group Progress Report                                    | 2008-10-28 14:05:20    |      16479 |      1 |       0 |
| 35313 |  26375 | zclyd12  | Help! It won't let me submit my CW                       | 2008-10-28 14:10:51    |      16481 |      1 |       0 |
| 35315 |  54595 | ucjtkrs  | Re: Final OSPAN                                          | 2008-10-28 14:11:02    |      16355 |      1 |       0 |
| 35317 |  26375 | zclyd12  | Re: Submitting the first assignment                      | 2008-10-28 14:12:04    |      16399 |      1 |       0 |
| 35319 |  26375 | zclyd12  | Re: Help! It won't let me submit my CW                   | 2008-10-28 14:13:07    |      16481 |      1 |       0 |
| 35321 |   5525 | uctlsjd  | no lecture on tuesday 11 November                        | 2008-10-28 14:20:46    |      16483 |      2 |       1 |
| 35323 |  26375 | zclyd12  | Re: Submitting the first assignment                      | 2008-10-28 14:21:27    |      16399 |      1 |       0 |
| 35325 |  26375 | zclyd12  | Re: Submitting the first assignment                      | 2008-10-28 14:24:54    |      16399 |      1 |       0 |
| 35327 |  14819 | zccab30  | Re: AAAAAA Panic! Read plz...                            | 2008-10-28 14:30:28    |      16451 |      1 |       0 |
| 35329 |   2137 | uccamjp  | Online Tutorials                                         | 2008-10-28 14:31:11    |      16485 |      1 |       0 |
| 35331 |  45651 | zcbte01  | Black scrren                                             | 2008-10-28 14:54:44    |      16487 |      1 |       0 |
| 35333 |  46239 | zccae15  | Workshop 3 Qualifying work                               | 2008-10-28 14:58:51    |      16489 |      1 |       0 |
| 35335 |   2137 | uccamjp  | Chemdraw                                                 | 2008-10-28 15:06:25    |      16491 |      1 |       0 |
| 35337 |  45629 | zcbtea8  | Re: Black scrren                                         | 2008-10-28 15:09:01    |      16487 |      1 |       0 |
| 35339 |  30948 | uclymdp  | Re: Submitting the first assignment                      | 2008-10-28 15:09:02    |      16399 |      1 |       0 |
| 35341 |  29075 | zclyd11  | Re: Submitting the first assignment                      | 2008-10-28 15:11:17    |      16399 |      1 |       0 |
| 35343 |  56283 | zczne00  | Re: AAAAAA Panic! Read plz...                            | 2008-10-28 15:28:23    |      16451 |      1 |       0 |
| 35345 |   1916 | ucbcajc  | Filters and glasses!                                     | 2008-10-28 15:34:47    |      16493 |      1 |       0 |
| 35347 |   9820 | rejamic  | ORTH3003 and ORTHG011                                    | 2008-10-28 15:36:43    |      16495 |      1 |       0 |
| 35349 |   6570 | ucmgcla  | Reminder and venue: Barr research seminar 29 October     | 2008-10-28 15:39:48    |      16497 |      1 |       1 |
| 35351 |  35738 | uczlpjb  | IWB Focus Group Sessions for reading week                | 2008-10-28 15:41:44    |      16499 |      1 |       1 |
| 35353 |  22802 | zctpck6  | Re: Kick-off Meeting                                     | 2008-10-28 15:43:13    |      16165 |      1 |       0 |
| 35355 |    681 | ucftjow  | Year Reps                                                | 2008-10-28 15:44:59    |      16501 |      1 |       0 |
| 35357 |  23988 | ucmgjsn  | 3. CETL Project Meeting                                  | 2008-10-28 15:55:46    |      16503 |      1 |       1 |
| 35359 |   6997 | sfaadpa  | dicuss implants                                          | 2008-10-28 16:00:09    |      16505 |      1 |       0 |
| 35361 |  44119 | tcrndag  | Cairn OpenDoc                                            | 2008-10-28 16:07:37    |      16507 |      1 |       0 |
| 35363 |  44119 | tcrndag  | Cairn CSV                                                | 2008-10-28 16:08:18    |      16509 |      1 |       0 |
| 35365 |  44119 | tcrndag  | Settlements open doc                                     | 2008-10-28 16:08:56    |      16511 |      1 |       0 |
| 35367 |  44119 | tcrndag  | Settlements csv                                          | 2008-10-28 16:09:43    |      16513 |      1 |       0 |
| 35369 |  41649 | uctqmse  | Resource update                                          | 2008-10-28 16:14:03    |      16515 |      1 |       1 |
| 35371 |   1845 | tjmssra  | Tomorrow's venue                                         | 2008-10-28 16:15:44    |      16517 |      0 |       0 |
| 35373 |  35976 | uczaegr  | Re: A personal view of the experiences                   | 2008-10-28 16:20:48    |      16463 |      0 |       0 |
| 35375 |    174 | ccaarfg  | test test test                                           | 2008-10-28 16:35:30    |      16519 |      1 |       1 |
| 35377 |  45629 | zcbtea8  | Re: Molecular Biology                                    | 2008-10-28 16:36:25    |      16295 |      0 |       0 |
| 35379 |    698 | ucznjaw  | Classroom session on Thursday                            | 2008-10-28 16:39:12    |      16521 |      0 |       0 |
| 35381 |    698 | ucznjaw  | Classroom session on Thursday                            | 2008-10-28 16:40:13    |      16523 |      0 |       0 |
| 35383 |    174 | ccaarfg  | another test                                             | 2008-10-28 16:46:51    |      16525 |      0 |       0 |
+-------+--------+----------+----------------------------------------------------------+------------------------+------------+--------+---------+
66 rows in set
```

``` java
SELECT courseid, username, subject, from_unixtime(timesent)
FROM mdl_block_quickmail_log, mdl_user
WHERE timesent > 1225170000 and mdl_user.id = mdl_block_quickmail_log.userid;
+----------+----------+---------------------------+-------------------------+
| courseid | username | subject                   | from_unixtime(timesent) |
+----------+----------+---------------------------+-------------------------+
|      197 | uczlses  | menu in Stratford         | 2008-10-28 14:05:28     |
|      197 | uczlrob  | UCAS Application progress | 2008-10-28 14:57:09     |
|     3561 | ccaamje  | test                      | 2008-10-28 17:16:41     |
+----------+----------+---------------------------+-------------------------+
```

I updated the record for my forum post to set **mailed** to **0** (it was 1) to see if the cron job picked this up and resent my message. It did, and my message was sent to my email address again when the cron job ran and the record below was updated in the database to set **mailed** back to **1**.

``` java
+-------+--------+----------+-----------------+------------------------+------------+--------+---------+
| id    | userid | username | subject         | from_unixtime(created) | discussion | mailed | mailnow |
+-------+--------+----------+-----------------+------------------------+------------+--------+---------+
| 35375 |    174 | ccaarfg  | test test test  | 2008-10-28 16:35:30    |      16519 |      0 |       1 |
+-------+--------+----------+-----------------+------------------------+------------+--------+---------+
```

After consulting with Matt we decided to run this for all of the records in the table that we think had not been sent between 7:00 and 15:00 on 28 Oct 08

``` java
update mdl_forum_posts set mailed = 0 where mailed = 1 and (created > 1225170000 and created < 1225205931);
```

where 1225170000 is 5:00 on 28/10/08 and 1225205931 is 15:58 on 28/10/08 After the cron job ran this updated all of these 0's back to 1's in the mailed field. I didn't change the records where mailed = 2 as we are not sure what that stands for. I didn't do anything about the quickmail users yet either ...
