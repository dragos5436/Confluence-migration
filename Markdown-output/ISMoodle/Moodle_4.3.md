# Moodle 4.3

Release date: 4th January 2024 1am-3am  → [WR420032](https://wrms.catalyst.net.nz/wr.php?request_id=420032)

Release Lead: NB / MO

Deadline to add changes to this release: Wednesday 13th December 2023 5pm - this should only be 4.3 compatibility changes, any other changes should have been captured in the [Moodle 4.2.4](Moodle_4.2.4) deployment.

Deadline to handover release to Catalyst: Friday 15th December 2023 5pm

Must sign-off staging deployment by: Tuesday 19th December 2023 5pm

1) Major release of core 4.3.1

2) Changes that will need to be included in the release

-    Accept merge request <https://github.com/ucl-isd/moodle-theme_norse/pull/54>
-    

3) Things for Catalyst to do

-   Uninstall news\_slider
-   Uninstall local\_migratecourses

4) Changes to settings:

Component

Setting name

Before

After

Reason

local\_mass\_enroll

defaultrole

stock-student

Student

UCL student role. stock-student shouldn't be used.

5) Config changes:

| Setting                   | Current | New | Reason                           |
|---------------------------|---------|-----|----------------------------------|
| media\_vimeo | donottrack |  No     | Yes | New Setting - this seem sensible |
| media\_youtube | nocookie | No      | Yes | New Setting - this seem sensible |

Release Notes:

**Minor fixes**

-   bug
-   bug
-   bug


