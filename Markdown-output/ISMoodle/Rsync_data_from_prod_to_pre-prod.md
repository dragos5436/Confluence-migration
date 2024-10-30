# Rsync data from prod to pre-prod

rsync is used with the following format:

    rsync source/ destination/

The forward slash '/' at the end of '***source/***' is important. If you omit it it changes the way the commands behaves (see rsync documentation)

You can run the command from Prod or from PP; ***source*** and ***destination*** will change accordingly.

For example if you run it from 'admin PP'. You will be prompted for 'ccspmdl' password.

``` bash
rsync ccspmdl@moodle-admin.ucl.ac.uk:/moodlefs/ /moodlefs/
```


