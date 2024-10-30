# Moodle outages - October 2021

Moodle down:

12/10/2021 - 11:00-12:45 ([CI066](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=181245578))

18/10/2021 - 14:00-16:30 ([CI068](https://wiki.ucl.ac.uk/pages/viewpage.action?pageId=181248440))

Root cause:

-   <https://tracker.moodle.org/browse/MDL-72837> (stacked should rebuild cache once & then copy from shared to local 90 times (number of frontends) but it isn't because bug means it rebuilds unnecessarily. single layer rebuilds once, stacked was rebuilding 900 times.)
-   Moved to stacked cache setup as part of cloud migration - recommended setup at the time

Resolution

-   Moved coursemodinfo cache mapping from stacked (local in each frontend + a shared by all) file-based to a dedicated Redis (Elasticache) instance shared by all

Further improvements

-   Complete core submission, backport to 3.9 & deployment on UCL Moodle of <https://tracker.moodle.org/browse/MDL-55231>
-   Support OU in fixing / testing - <https://tracker.moodle.org/browse/MDL-72837>
-   UCL to fund Catalyst to fix in core Moodle - <https://tracker.moodle.org/browse/MDL-67020>
-   UCL to fund Catalyst to fix in core Moodle -[ https://tracker.moodle.org/browse/MDL-69088](https://tracker.moodle.org/browse/MDL-69088)
-   UCL to setup a knowledge sharing meet-up via the Géant (European level JISC) large scale Moodle group with at least OU, UCL, Catalyst AU/NZ/EU and Moodle HQ

Post Mortem:

The warning signs of this had been popping up ever since we migrated to the cloud (14 months earlier), they weren't acted upon swiftly enough  with the attention they deserved. This was something SO & SOM brought up every month as critical in our service management meetings with Catalyst.

The symptoms were identified but the leap to identify the root cause was not one we (Catalyst / UCL)  did - we need to understand from those who succeeded (OU) in making that leap what additional monitoring / logging / analysis was performed that did get there, so that we can make sure we have those bases covered in future. we do have the busiest Moodle in the UK and with a very high year on year growth due to UCL's ever increasing student numbers combined with more usage of technology in the VLE. We will keep growing and finding bottlenecks that need addressing, however we need those to be a more pro-active process whereby warning signs are headed early and CI level of focus & resourcing is put behind this without an outage being the trigger. There may be a cost element to this as this is over & above any typical hosting incident response scenario but we, UCL, specifically need to have this capacity to do this with Catalyst EU/AU/NZ.

Comms

-   ISD News process is rubbish, it’s about time service teams could publish/ update service issues
-   Need a status page with data feed from monitoring (e.g. feed mean response time and mean KPI as basis for Moodle status)

CI management

-   process is not fit for purpose, especially in the context of external partner hosting
-   management should get out of the way of operational decision making to switch things on/off

Catalyst

-   dismissing the 99 percentile stats in New Relic is not ok
-   The underlying issue had displayed symptoms within a week of cloud migration
-   Was not taken seriously & was not dealt in a timely manner
-   This should never have lead to a CI, we had enough indicators in the run up
-   Perf KPI alerts need to be dealt with similar urgency to CI without an outage
-   Need to improve shared understanding on how to analyse these type of cache / high-scale performance issues
-   Need to agree a CI-response without outage process

Positives:

-   while we were addressing symptoms, not root cause, we were able to respond very quickly in changing infrastructure thanks to our move to the cloud
-   Very large team able to work in parallel on infrastructure, Moodle code, etc
-   expertise in the room and tooling used to analyse the issue significantly higher than in any previous CIs at UCL

So cloud move & selected partner in doing so remains positive but we do need to work on this higher level capability.


