# Post CI strands of work

**All of the below development work is now completed as of 22/10/22. Some of these benefits will not fully kick in until our upgrade in July 2023 but so far we have been able to mitigate and backport to our current version of Moodle. We'll keep scanning this space but am now considering this chapter to be wrapped up.**

## I\] Complete core submission, backport to 3.9 & deployment on UCL Moodle of <https://tracker.moodle.org/browse/MDL-55231>

27/10/21 5pm update: The development was backported and tested extensively on Moodle 3.9. PHPUnit & Behat failures on clean Moodle 3.9 fully resolved.

This works well for in-line editing (activity names, hiding/unhiding activities, etc) on the course page but does not handle the activity editing on it's own settings page.

Unfortunately the primary tracker relies on new functions developed for Moodle 4.0. Would be a lot of effort to backport more & very high risk for very limited reward at this point in time.

As it stands, the tracker was integrated into core Moodle today, it will therefore be part of Moodle 4.0 which we will be upgrading to in July 2022.

Limited possibilities to run this in a lower scale/impact environment.

AS decision with Catalyst: We've reached the point where it isn't worth pursuing a 3.9 specific fix, let's refocus our development efforts on the other 2 trackers.  

04/11/21 2pm update: Catalyst EU/AU are continuing to pursue the backport of this issue for Moodle 3.9

Core has reverted the integration into master/4.0 due to a regression - <https://tracker.moodle.org/browse/MDL-72991> (fix won't make it in 4.0 so would be 4.1 at earliest → may impact on summer 2022 upgrade plans if we have to go to 4.1)

11/11/21 update: for clarity - there is still value in this for the very large courses. It isn't full service impacting but would improve performance within those very big courses. 

29/12/21 update: There is still a possibility this will make it into 4.0 as it is labelled as a must fix. Have pushed for this to be included in 4.0 via the MUA (<https://moodleassociation.org/mod/forum/discuss.php?d=1007#p3520>)

03/02/2022 update: New HQ developer has picked it up, waiting on peer review but likely to require re-work.

25/04/2022 update: This improvement has been integrated in Moodle 4.0 and a subset of it was included in 3.11.7 - due to be deployed in prod on 12th May. DONE

## II\] UCL to fund Catalyst to fix in core Moodle - <https://tracker.moodle.org/browse/MDL-67020>

27/10/21 5pm update: work to begin on this tomorrow

29/12/21 update: Have pushed for this to be allowed into 4.0 despite change freeze via the MUA (<https://moodleassociation.org/mod/forum/discuss.php?d=1007#p3520>)

03/02/2022 update: Jackson (Catalyst) has started working on this.

25/04/2022 update: Work on this improvement was rebooted at the start of the month, some confusion due to overlap with III\] & lack of operational purpose. We don't intend on using this particular setup but would be a useful joker card in case something else emerges with stacked caches.

12/10/2022 update: Development in Integration Review. Will be cutting it close for 4.1 Change Freeze.

22/20/2022 update: Has now been integrated into 4.1. DONE

## III\] UCL to fund Catalyst to fix in core Moodle -[ https://tracker.moodle.org/browse/MDL-69088](https://tracker.moodle.org/browse/MDL-69088)

27/10/21 5pm update: work to begin on this tomorrow

11/11/21 update: Initial Implementation submitted, first peer review completed. Adjustments in-progress in line with feedback from peer review.

29/12/21 update: Have pushed for this to be allowed into 4.0 despite change freeze via the MUA (<https://moodleassociation.org/mod/forum/discuss.php?d=1007#p3520>)

03/02/2022 update: Has been Integrated into master (4.0) today. <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" /> DONE

## IV\] UCL to setup a knowledge sharing meet-up via the Géant (European level JISC) large scale Moodle group with at least OU, UCL, Catalyst AU/NZ/EU and Moodle HQ

22/10/21 5pm update: message posted in Telegram to float the idea. Will follow up with an email in a couple of weeks to Sam (once the dust has settled).

22/10/22 update: While we didn't get anywhere with this; we have achieved the goal through other means. Catalyst EU has been building up a team to handle core Moodle development, which includes Mark Johnson (previously from the Open University) who is extremely competent but also well connected to Sam Marshall at the OU and with Brendan in Catalyst AU. So this should hep with future knowledge sharing in this space. DONE

## V\] Support OU in fixing / testing - <https://tracker.moodle.org/browse/MDL-72837>

Following updates.

29/12/21 update: Peer Review done by Brendan/Catalyst AU on our behalf. Have pushed for this to be allowed into 4.0 despite change freeze via the MUA (<https://moodleassociation.org/mod/forum/discuss.php?d=1007#p3520>)

03/02/2022 update: Has been sent to Integration Review, unhold requested today. Likely IR next week.

27/02/2022 update: Has now been integrated and will land in Moodle 4.0 . DONE <img src="images/icons/emoticons/smile.svg" alt="(smile)" class="emoticon emoticon-smile" />

## VI\] Algebra error spikes

Spikes of errors from qtype algebra seem to coincide with bad performance spikes - investigate cause & fix code as appropriate.

04/11/21 2pm update: Issue has been reproduced, a workaround and a fix have been produced - both currently being tested by UCL (CTP-478)

11/11/21: Fix deployed in today's 3.9.11 release. FIXED 

## VII\] Session locks

Session lock errors are popping up and this seems tied to pluginfile.php file downloads holding the session lock when these files should be able to be downloaded in parallel & not hold the lock.

<https://tracker.moodle.org/browse/MDL-58018> is a solution to this, which can be enabled through a simple config change:

$CFG-&gt;enable\_read\_only\_sessions = true;

04/11/21 2pm update: Setting applied in Staging, testing in progress.

29/12/21 update: failed testing as getting kicked out from session. paused to complete Cloudflare testing. Has now resumed testing, led by Catalyst (Jackson) but other issues encountered (undefined as yet).

27/02/2022 update: It seems like the root cause of the session locks cropping up was likely <https://tracker.moodle.org/browse/MDL-72796>, this will be available in Moodle 3.11.6 to be released March 14th. We are continuing to progress shifting file delivery to be direct from S3 to reduce load/bandwidth on frontend infrastructure.

25/04/2022 update: 3.11.6 upgrade complete. S3 offloading testing in progress.

12/10/2022 update: S3 offload has been live for a little while. All has worked well since, no re-occurrence of the locks issue since. DONE

## VIII\] Cloudflare

DoS/DDoS protection is needed, we have seen instances of 15 000 rpm from a single UCL user. We need the rate limiting this would provide rather than banning the IP as the AWS WAF rules would do.

04/11/21 2pm update: This was pushed back from Sprint 1 due to CI, it is in current sprint, work will start next week on this.

08/11/21 update: moved into sprint 3, there are too many changes being deployed into prod this week.

29/12/21 update: Ready to go live first week of January 2022.

07/01/21 update: Cloudflare has gone live today. DONE

## IX\] Collapsed Topics - Additional Info

This was a red herring during the first outage, nonetheless there is some inefficient code in this plugin. We've disabled that functionality to prevent the inefficient code from ever running. Feeding back for this to be more efficient. Unlikely to re-enable the functionality though.

<https://github.com/gjb2048/moodle-format_topcoll/issues/114>

29/12/21 update: The performance issue remains isolated. The 3.9.12 release on 20th January should allow for this to return on small courses while limiting it on larger courses.

22/10/22 update: This hasn't reared it's head since so considering this as DONE.


