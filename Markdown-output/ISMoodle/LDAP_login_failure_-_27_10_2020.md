# LDAP login failure - 27/10/2020

**What happened?**

LDAP authentication method was disabled at 7:29pm on 27 Oct 2020 .

Service resumed at 8:30pm by Alistair logging in with the Site Admin manual account and re-enabling this authentication method.

**Why?**

Does not seem to be human.

Last succesful login here - <https://moodle.ucl.ac.uk/report/log/index.php?id=1&date=1603756800&modid&page=3466&chooselog=1&logreader=logstore_standard>

First failed login here - <https://moodle.ucl.ac.uk/report/log/index.php?id=1&date=1603756800&modid&chooselog=1&logreader=logstore_standard&page=3465>

All indications are that this is as a result of the scaling down event of [Aurora](https://aws.amazon.com/rds/aurora) instances under WR345951. The change did not involve [GoCD](https://www.gocd.org/) so there is no config management at fault here.

At that point some database reads/writes failed.

**What next?**

Catalyst to investigate, how Moodle code handled that in this way. Aurora failovers are meant to be seamless - it mostly was, no real system downtime but disabling auth plugin is a biggie, what else did it do/could have done? → [Catalyst report](attachments/151259325/151259710.pdf)

1. Complete the implementation of clear LDAP monitoring to ensure that LDAP availability and function are verified frequently by probes – allocated as immediate action required.
2. Additional tests applied to Catalyst release and AWS update steps, to ensure LDAP is checked after every change.
3. Additional analysis of the scenario which led to this incident, trialling on the staging site to attempt to recreate the issue so as to better understand the cause and avoidance measures – To be discussed with UCL.
4. Additional discussions and training to ensure that remedial works are clearly notified and also that escalation to critical incident (according to the SLA definitions) is actioned ASAP in the event of incidents.
5. Agreement that formal maintenance windows are used for all actions. Whilst this is a suggestion, Catalyst would welcome discussion with UCL as this mitigation does reduce the pace and flexibility that the AWS cloud affords to UCL Moodle service (s) → Expectation for this is that there is a CR & known timeframe for this, where we(UCL) can be on hand to validate this is still working & performing well. It does not mean we only do them 1am-2am.

**What did we learn?**

1) Reminder that LDAP monitoring needs to be implemented (WR341640)

2) Aurora failover isn't completely seamless, until proven safe restrict scale up/down events to maintenance windows

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [LDAP outage incident report - October 27th 2020.pdf](attachments/151259325/151259710.pdf) (application/pdf)

