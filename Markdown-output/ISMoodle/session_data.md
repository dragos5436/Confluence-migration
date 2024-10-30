# session data

Do we still need this? The current code on moodle-a/-b reads (e.g. without the hack described below):

``` java
if (!file_exists($CFG->dataroot .'/sessions')) {
                make_upload_directory('sessions');
            }
ini_set('session.save_path', $CFG->dataroot .'/sessions');
```

Can we remove this from our documentation? 

> **On 24/03/2009 Adrian Barker wrote:**
> When the moodle data was moved to the NFS filestore, the PHP code was changed so that session data remained on each local machine. This was for performance reasons. Keeping the session data on the NFS filestore does not seem to be causing a problem so far, so I'd suggest that we leave the code as it is. When the issue of scaling Moodle is discussed with Catalyst, could you ask them whether they recommend that the session data is kept locally or on the NFS filestore ?

The following file needs to be edited:
In lib/setup.php (around line 410) on moodle-a/b:

``` java
if (!file_exists($CFG->dataroot .'/sessions')){
     make_upload_directory('sessions');
}
ini_set('session.save_path', $CFG->dataroot .'/sessions');
```

change to:

``` java
if (!file_exists('/data/moodle-sessions')) {
    make_upload_directory('/data/moodle-sessions');
}
ini_set('session.save_path', '/data/moodle-sessions');
```

make sure that /data/moodle-sessions is owned by ccspwww (not root)
