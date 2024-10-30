# Moodle Minor Release 3.7.8

Expected Release date: 16th September 1am-4am  DELAYED to 17th September 1am-4am  (due to GoCD issue at Catalyst)

Build completion by: 14th September 5pm 

Testing on Moodle Staging signed-off by: 15th September 4pm

Deployment lead: AS

1)New Plugins (Cat)

``` java
git clone --branch master https://github.com/ucla/moodle-mod_zoom.git moodlesite/mod/zoom/
git clone --branch MOODLE_37_STABLE https://github.com/open-lms-open-source/moodle-logstore_caliper.git moodlesite/admin/tool/log/store/caliper/
git clone --branch master https://github.com/moodleou/moodle-report_embedquestion.git moodlesite/report/embedquestion/
rm -rf moodlesite/report/embedquestion/backup
git clone --branch master https://github.com/moodleou/moodle-atto_embedquestion.git moodlesite/lib/editor/atto/plugins/embedquestion/
git clone --branch master https://github.com/moodleou/moodle-filter_embedquestion.git moodlesite/filter/embedquestion/
##Pending https://github.com/catalyst/moodle-auth_basic/pull/18/files being accepted ## git clone --branch master https://github.com/catalyst/moodle-auth_basic.git moodlesite/auth/basic/
git clone --branch whitelist-v2 https://github.com/aspark21/moodle-auth_basic.git moodlesite/auth/basic/
git clone --branch master https://github.com/catalyst/moodle-tool_crawler.git moodlesite/admin/tool/crawler/

Additional steps to pin to commit
cd moodlesite/question/type/pmatch/ && git checkout bc5183b17022a5475e5d063b5545d0b46339677c && cd ../../../..
```

<https://git.automation.ucl.ac.uk/moodle/moodle-1819/-/merge_requests/46/diffs>

2) Switch off Hub (UCL)

<https://moodle.ucl.ac.uk/admin/settings.php?section=local_hub>

local\_hub | hubenabled → No

3) Remove LSA banner from prod from config.php (Cat)

The following to hardcoded values in config.php need to be removed

$CFG-&gt;additionalhtmltopofbody

$CFG→additionalhtmlhead

4) Outline basic\_auth / crawler config we expect from Catalyst here (Cat - discussion)

i.e make use of whitelist feature

5) Update Colours for Accessibility: (UCL)

| Setting                            | Before   | After    |
|------------------------------------|----------|----------|
| theme\_adaptable | fontheadercolor | \#E5438E | \#288DA4 |

6) Permissions check for Zoom plugin

| Role                             | mod/zoom:addinstance | mod/zoom:view |
|----------------------------------|----------------------|---------------|
| Leader                           | Allow                | Allow         |
| Tutor                            | Allow                | Allow         |
| Course Administrator             | Allow                | Allow         |
| Course Administrator (No E-Mail) | Allow                | Allow         |
| Non-editing Tutor                | Not set              | Allow         |
| Non-editing Tutor (No E-Mail)    | Not set              | Allow         |
| Staff Observer                   | Not set              | Allow         |
| Student                          | Not set              | Allow         |
| Guest                            | Not set              | Allow         |
| Faculty Learning Technologist    | Allow                | Allow         |

Release Notes:

**New activity - Zoom Meeting**

-   Miniguide: [M60 - Zoom Meeting](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M60+-+Zoom+Meeting)

**New Activity -  Labster**

Availability limited to specific departments/courses under current licensing terms.

Held back 

**New activity - [hypothes.is](http://hypothes.is)**

-   Miniguide: [M61 - Hypothesis](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M61+-+Hypothesis)

(Licensing)

**New Moodle assignment report - Export component grades**

-   Miniguide: [M09a6 - Getting data out of a Moodle Assignment](https://wiki.ucl.ac.uk/display/MoodleResourceCentre/M09a6+-+Getting+data+out+of+a+Moodle+Assignment)

(BUG FIX REQUIRED)
