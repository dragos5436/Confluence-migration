# Moodle 3.9.3

Release date: Wednesday 19th November 1am-2am

Release Lead: AS

1) Minor Release of Moodle 3.9.3

Update from 3.9.2+ (20201030)

2) Update STACK

a) qtype\_stack to v4.3.7 tag - <https://github.com/maths/moodle-qtype_stack/releases/tag/v4.3.7>

b) maximapool to a container release for v4.3.7 (not currently available) - <https://github.com/uni-halle/maximapool-docker>

3) Deploy LDAP monitoring plugin

WR341640 - Catalyst committed to deliver this to us by 6th November. As this was implemented as a plugin, this will need to be deployed in one of our releases. It's too short notice to include in the main Moodle 3.9 upgrade so will go into this release. 

4) Update theme and remove hotfix

Remove hotfix for jezhops\#194

5) Update to the default instructor settings for Blackboard Collaborate Ultra to match previous REST settings

<https://moodle.ucl.ac.uk/admin/settings.php?section=modsettingcollaborate>

| Setting                             | Current value | New value |
|-------------------------------------|---------------|-----------|
| collaborate | canshareaudio         | No            | Yes       |
| collaborate | cansharevideo         | No            | Yes       |
| collaborate | canannotatewhiteboard | No            | Yes       |

6) Change the Moodle display clock to always be 24-hour regardless of language selected

 https://moodle.ucl.ac.uk/admin/settings.php?section=calendar

| Setting                    | Current value | New value |
|----------------------------|---------------|-----------|
| calendar\_site\_timeformat | Default       | 24 -hour  |

Release Notes:

**Update Moodle to version 3.9.3**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.9.3_release_notes) and security issues
-   fixes multiple issues with drop-downs where editing options were not visible
-   STACK update to version 4.3.7


