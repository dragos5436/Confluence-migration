# Moodle 3.11.11

Release date: ~~Thursday 17th November 2022 1am-2am~~ - Delayed to Thursday 24th November 2022 1am-2am

Release Lead: Alistair Spark

Deadline to add changes to this release: Friday 11th November 2022 8pm

Deadline to handover release to Catalyst: Monday 21st November 2022 8pm

Must sign-off staging deployment by: Tuesday 22nd November 2022 5pm

Release ticket - <https://wrms.catalyst.net.nz/wr.php?request_id=395894>

1) Minor Release of Moodle 3.11.11

Update from 3.11.10

2) Changes that will need to be included in the release

-   Significant mod\_zoom update - done
-   block\_lifecycle for automatic context freezing & AY cue - done
-   remove local\_hub & core hack - done
-   remove block kuracloud - done
-   mod\_collaborate ? have we removed this? - no but let's disable plugin first and uninstall in next release
-   redo guest access core hack but without hub - done
-   Turnitin mod & pp updates - done - review testing by Eliot → remove the disable sync hack - done
-   backport <https://tracker.moodle.org/browse/MDL-69088> - done
-   <https://wrms.catalyst.net.nz/wr.php?request_id=369822> - requested in release ticket - done

4) Changes to settings:

Component

Setting name

Before

After

Reason

mod\_collaborate
active
yes
no
Service has ended but we haven't switched off the plugin

5) Config changes:

| Setting                   | Current                                                                                                                                                                                                   | New                                                                                                              |
|---------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| auth\_oidc | authendpoint | [https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize](https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account) | <https://login.microsoftonline.com/1faf88fe-a998-4c5b-93c9-210a11d9a5c2/oauth2/authorize?&prompt=select_account> |

Release Notes:

**Update Moodle to version 3.11.11**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.11.11_release_notes) and security issues

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image2021-1-15\_11-28-27.png](attachments/202345062/202345061.png) (image/png)

