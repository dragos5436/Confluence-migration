# Block - Activity Locking

-   http://moodle.org/mod/forum/discuss.php?d=92731
-   http://docs.moodle.org/en/Development:Activity\_Locking
-   http://moodle.org/mod/data/view.php?d=13&rid=933 ;

This has been installed on wasdev-a (http://wasdev-a.ucl.ac.uk) server on 20/10/2008.

The documentation for this block warns that it is a 'major patch'. Where other plugins just create files in a new folder, this plugin over-writes key existing moodle files so it should be installed with care and you should take a copy of any files that it wants to over write so that they can be easily restored if necessary.

A zip file is attached to this wiki page with the files that need to be copied to the moodle server as follows:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>unzipped files to be copied onto the moodle server<br />
into the /data/apache/htdocs/moodle/ folder</p></th>
<th><p>status</p></th>
<th><p>notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>blocks/activity_locking/block_activity_locking.php<br />
</p></td>
<td><p>new folder and files<br />
</p></td>
<td><p>copy the whole of the block/activity_locking folder into the moodle/blocks folder</p></td>
</tr>
<tr class="even">
<td><p>blocks/activity_locking/db/mysql.php</p></td>
<td><p>new folder and files</p></td>
<td><p>This will run when admin logs in. It updates the mysql tables specified in mysql.txt</p></td>
</tr>
<tr class="odd">
<td><p>blocks/activity_locking/db/mysql.txt</p></td>
<td><p>new folder and files</p></td>
<td><p>Creates new table mdl_course_module_locks<br />
Alters:<br />
mdl_course_module</p></td>
</tr>
<tr class="even">
<td><p>course/lib.php</p></td>
<td><p>replaces existing file, take a backup!</p></td>
<td><p>major moodle file<br />
BEWARE: this file is also updated by the Minted course profile pluginso they overwrite each other!<br />
</p></td>
</tr>
<tr class="odd">
<td><p>course/lock.php</p></td>
<td><p>new file<br />
</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>course/sectionlock.php</p></td>
<td><p>new file</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>course/format/topics/format.php<br />
</p></td>
<td><p>replaces existing file, take a backup!</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>course/format/weeks/format.php</p></td>
<td><p>replaces existing file, take a backup!</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>lib/locklib.php</p></td>
<td><p>new file</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>lib/moodlelib.php</p></td>
<td><p>replaces existing file, take a backup!</p></td>
<td><p>major moodle file</p></td>
</tr>
<tr class="odd">
<td><p>pix/t/closed.gif</p></td>
<td><p>new file</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="even">
<td><p>pix/t/open.gif</p></td>
<td><p>new file</p></td>
<td><p><br />
</p></td>
</tr>
<tr class="odd">
<td><p>Pix/t/thumbs.db</p></td>
<td><p>New file</p></td>
<td><p> </p></td>
</tr>
</tbody>
</table>

unzip the attached file and manually copy the unzipped files into their locations being careful to make backups of any file that will be overwritten.

Ensure that the files you have copied above have the correct permissions! (use the **chmod** command to alter these if necessary)

Go to the Admin &gt; Notifications page. This will see that there is a new 'activity\_locking' folder in the 'blocks' folder and run the DB files to alter the Moodle database. The database is altered in the following ways:

------------------------------------------------------------------------

(mysql): CREATE TABLE \`**mdl\_course\_module\_locks**\` ( \`id\` int(10) unsigned NOT NULL auto\_increment, \`courseid\` int(10) unsigned NOT NULL default '0', \`moduleid\` int(10) unsigned NOT NULL default '0', \`lockid\` int(10) unsigned NOT NULL default '0', \`requirement\` varchar(10) NOT NULL default '', PRIMARY KEY (id), UNIQUE KEY id (id), KEY lockid (lockid), KEY moduleid (moduleid), KEY courseid (courseid) ) TYPE=MyISAM

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**delay**\` VARCHAR( 10 ) NOT NULL AFTER \`added\`

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**visiblewhenlocked**\` TINYINT( 1 ) UNSIGNED NOT NULL default '1' AFTER \`visible\`

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**stylewhenlocked**\` VARCHAR( 200 ) NULL default 'locked' AFTER \`visible\`

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**checkboxforcomplete**\` TINYINT( 1 ) UNSIGNED NOT NULL default '0' AFTER \`visible\`

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**stylewhencomplete**\` VARCHAR( 200 ) NULL default '' AFTER \`visible\`

(mysql): ALTER TABLE \`**mdl\_course\_modules**\` ADD \`**checkboxesforprereqs**\` TINYINT( 1 ) UNSIGNED NOT NULL default '1' AFTER \`visible\`

------------------------------------------------------------------------

The database will also be altered by adding a new record to the **mdl\_block** table.

You can see that the new block has been installed by going to Admin &gt; Modules &gt; Blocks &gt; Manage Blocks and you will see that it is listed in the table as '**Locks**'.

Go to your course view and switch on editing, and you will see padlock icons next to each activity that you have added to your course. Click on the padlock icons to lock or unlock your activities, you can set it so that students cannot get to a certain activity until they have completed other activities or before a certain date.

#### A note on the /lang/en\_utf8/lock.php file:

One of the icons does not have a very nice 'alt text': \[\[predecessornotcompletetime\]\] rather than some human readable text. To fix this add a line to the /lang/en\_utf8/lock.php file as follows:

``` java
$string['predecessornotcompletetime'] = '<enter human readable text here>';
```

RFG: I will ask LTSS what text should go in here

## Uninstalling Activity Locking Module

delete /blocks/activity\_locking

in /course/lib.php delete:

   // Modified for Activity Locking  (line 3)
require\_once($CFG-&gt;libdir.'/locklib.php'); (line 4)

//Activity Locking--show lock icons (line 1319)
$locks = islocked($mod);
                    if (!isguestuser()) {
                    if ($locks and $mod-&gt;modname != "label") {
                    if ($mod-&gt;checkboxesforprereqs) {
                        foreach ($locks as $lock =&gt; $state)
{                 $instance = get\_record($mods\[$lock\]&gt;modname, "id", $mods\[$lock\]&gt;instance);                             if ($lock == "time") { if ($state == "closed")

Unknown macro: { echo " pixpath/t/locktime.gif" height="11" width="11"". " title="".get\_string("predecessornotcompletetime", "lock").'}

                          } else
{ if ($state == "open")

Unknown macro: { echo " pixpath/t/open.gif" height="11" width="11"". " title="".get\_string("predecessorcomplete", "lock")."}

else

Unknown macro: { echo " pixpath/t/lock.gif" height="11" width="11"". " title="".get\_string("predecessornotcomplete", "lock")."}

                            }
                          }    
                        }    
                    }
                }
///End Activity Locking (line 1425)

//Activity Locking--show lock icons (line 1378)
$locks = islocked($mod);
                    if (!isguestuser()) {
                    if ($locks and $mod-&gt;modname != "label") {
                    if ($mod-&gt;checkboxesforprereqs) {
                        foreach ($locks as $lock =&gt; $state)
{                 $instance = get\_record($mods\[$lock\]&gt;modname, "id", $mods\[$lock\]&gt;instance);                             if ($lock == "time") { if ($state == "closed")

Unknown macro: { echo " pixpath/t/locktime.gif" height="11" width="11"". " title="".get\_string("predecessornotcompletetime", "lock").'}

                          } else
{ if ($state == "open")

Unknown macro: { echo " pixpath/t/open.gif" height="11" width="11"". " title="".get\_string("predecessorcomplete", "lock")."}

else

Unknown macro: { echo " pixpath/t/lock.gif" height="11" width="11"". " title="".get\_string("predecessornotcomplete", "lock")."}

                            }
                          }
                        }
                    }
                }
///End Activity Locking (1406)

//Activity Locking -- show lock icons to teachers (line 2471)
    require\_once($CFG-&gt;libdir.'/locklib.php');
    if (islocked($mod) or $mod-&gt;delay &gt; "0:0:0")

Unknown macro: { $unlock = ''; }

else

Unknown macro: { $unlock = ''; }

//End Activity Locking (line 2482)

'&lt;a title="'.$str-&gt;lock.'" href="'.$path.'/lock.php?id='.$mod-&gt;id. (line 2478)
           '&sesskey='.$sesskey.$section.'"&gt;&lt;img'.
           ' src="'.$CFG-&gt;pixpath.'/t/lock.gif" class="iconsmall" '.
           ' alt="'.$str-&gt;lock.'" /&gt;&lt;/a&gt;'.$unlock. (line 2481)

Delete the following from /courses/format/topics/format.php

      // Modified for Activity Locking (line 9)

   

//Activity locking///
$strlock = get\_string('lock', 'lock'); (line 255)
$strunlock = get\_string('unlock', 'lock');
                echo '&lt;a href="sectionlock.php?id='.$thissection-&gt;id.'&sesskey='.$USER-&gt;sesskey.'" title="'.$strlock.'"&gt;'.
                     '&lt;img src="'.$CFG-&gt;pixpath.'/t/lock.gif" vspace="3" height="11" width="11" border="0" alt="" /&gt;&lt;/a&gt;&lt;br /&gt;';
                     
                echo '&lt;a href="sectionlock.php?id='.$thissection-&gt;id.'&sesskey='.$USER-&gt;sesskey.'&action=unlock" title="'.$strunlock.'"&gt;'.
                     '&lt;img src="'.$CFG-&gt;pixpath.'/t/unlock.gif" vspace="3" height="11" width="11" border="0" alt="" /&gt;&lt;/a&gt;&lt;br /&gt;';
                 ///End activity locking/// (line 263)

Delete the following from /course/format/topics/weeks/format.php

      // Modified for Activity Locking (line 4)

                ///Activity locking/// (line 248)
$strlock = get\_string('lock', 'lock');
$strunlock = get\_string('unlock', 'lock');
                echo '&lt;a href="sectionlock.php?id='.$thissection-&gt;id.'&sesskey='.$USER-&gt;sesskey.'" title="'.$strlock.'"&gt;'.
                     '&lt;img src="'.$CFG-&gt;pixpath.'/t/lock.gif" vspace="3" height="11" width="11" border="0" alt="" /&gt;&lt;/a&gt;&lt;br /&gt;';
                     
                echo '&lt;a href="sectionlock.php?id='.$thissection-&gt;id.'&sesskey='.$USER-&gt;sesskey.'&action=unlock" title="'.$strunlock.'"&gt;'.
                     '&lt;img src="'.$CFG-&gt;pixpath.'/t/unlock.gif" vspace="3" height="11" width="11" border="0" alt="" /&gt;&lt;/a&gt;&lt;br /&gt;';
                 ///End activity locking/// (256)
 

delete from /lib/moodlelib.php

//Check to see if Activity Locking criteria have been met (line 1921)
    require\_once($CFG-&gt;libdir.'/locklib.php');
    global $cm;
    check\_locks($cm); (line 1924)

# Users who would like this functionality 

-   Hui Lim - h.lim@ucl.ac.uk  ARS call: ISH0095140  (Matt)
-   Helen Jefferson-Brown - h.jefferson-brown@ucl.ac.uk (Jess) - This user would like to only show resources & activities at certain times - I don't think this functionality is yet included in the activity locking block
-    

# Courses Using AL

The attached csv file contains all the courses using AL. The tutor of the only course which appears to be affected by losing AL has been contacted.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Activity\_Locking\_for\_19.zip](attachments/2556546/5865562.zip) (application/x-zip-compressed)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [activity\_locks.csv](attachments/2556546/6521278.csv) (text/csv)

