# Activity Module - Choice

See also upgrade to 1.9 on 23June08

We upgraded to Moodle 1.9 on the live service but this had a known bug in it for the Choice Activity (this was fixed in the Moodle 1.9.1).

We do not want to upgrade to the latest version of Moodle at the moment, so the fix can apply is described at <http://moodle.org/mod/forum/discuss.php?d=96177>

Edit the **moodle\\mod\\choice\\lib.php** file and edit the following code (around **line 147**)

in the function choice\_show\_form() comment out the following line (or remove it entirely)

``` java
if (isset($text) && isset($allresponses[$optionid])) { //make sure there are no dud entries in the db with blank text values.
```

and replace it with

``` java
if (isset($text)) { //make sure there are no dud entries in the db with blank text values.
```
