# Moodle CI handling

-   [I\] Can't Login](#MoodleCIhandling-I%5DCan'tLogin)
-   [II\] Moodle down / degraded performance](#MoodleCIhandling-II%5DMoodledown/degradedperformance)
-   [III\] Data Integrations](#MoodleCIhandling-III%5DDataIntegrations)
-   [IV\] On-Prem Data Center Failure](#MoodleCIhandling-IV%5DOn-PremDataCenterFailure)
-   [V\] SITS / CMIS Failure](#MoodleCIhandling-V%5DSITS/CMISFailure)
-   [VI\] Moodle Snapshots Failover](#MoodleCIhandling-VI%5DMoodleSnapshotsFailover)
-   [VII\] Snapshot App Server down / unresponsive](#MoodleCIhandling-VII%5DSnapshotAppServerdown/unresponsive)

## I\] Can't Login 

a) VPN

Is it the [VPN](https://wiki.ucl.ac.uk/display/ISMoodle/AWS+Site-to-Site+VPN+for+Moodle)s - see email alerts (LA team wide alerts) 

Contact Networks / Craig Hurley - <c.hurley@ucl.ac.uk> 

Monitoring Dashboard for the VPN links - <https://service-health.isd.ucl.ac.uk/Orion/SummaryView.aspx?netobject=&ViewID=599> 

(This is monitoring from the Fortigate side of things)

All of the tunnels and wider data sets about each be found via - <https://service-health.isd.ucl.ac.uk/ui/search?q=Moodle-VPN>

AWS side status check <https://eu-west-2.console.aws.amazon.com/vpc/home?region=eu-west-2#VpnConnections:sort=VpnConnectionId> (only AS/ Jo Burgess / Catalyst have access)

b) LDAP

If site to site VPNs are up then it's something to do with ldap-auth-ad.ucl.ac.uk service → WIS team 

If one of the DCs is down or some bad hosts in the pool, you can configure Moodle to use one specifically by changing the **host\_url** here - <https://moodle.ucl.ac.uk/admin/settings.php?section=authsettingldap>

See here for troubleshooting: [LDAPS](LDAPS)

## II\] Moodle down / degraded performance

Contact Catalyst → <https://wrms.catalyst.net.nz/> 

Support hotline: 01273 929450 / Emergency 0330 0881797

Escalate to Joey → Joey Murison &lt;<joey.murison@catalyst-eu.net>&gt; / 01273 929 450

Catalyst have monitoring / alerting / PagerDuty system so should already be auto-alerted if something gone wrong but can log & contact them too.

Monitoring through NewRelic - <https://one.eu.newrelic.com/>

Documentation: <https://git.catalyst-eu.net/ucl/moodle/-/wikis/home>

SLA: [<img src="rest/documentConversion/latest/conversion/thumbnail/172465166/1" height="250" />](/download/attachments/172465151/Catalyst%20UCL%20Managed%20Moodle%20on%20AWS%20Cloud%20SLA%20Agreement%20FINAL.pdf?version=1&modificationDate=1626178884000&api=v2)

## III\] Data Integrations

This is within [Learning Apps - Data Availability](mailto:rde.learning@ucl.ac.uk)remit. 

Likely to take days/weeks to resolve so not dealt with OOH 

## IV\] On-Prem Data Center Failure

This is within [Learning Apps - Data Availability](mailto:rde.learning@ucl.ac.uk)remit. 

Changes which must take place if there is a complete failure of one of the UCL datacentres:

1) Auth

As outlined in I\]b) the ldap-auth-ad service needs to only return the VIP for the functioning DC or can be configured in Moodle to go to that IP / specific AD domain controller

2) MIM

mdl-admin01 runs MIM. Can deploy code on mdl-admin02 and run from there - or as SITS/CMIS may not be in the best shape wither, just wait for mdl-admin01 to come back online with the rest of the Datacenter

## V\] SITS / CMIS Failure

This is within [Learning Apps - Data Availability](mailto:rde.learning@ucl.ac.uk)remit. 

If the upstream systems have a failure which means we need to suspend the flow of data, or may even need rolling back.

Disable the MIM cron jobs by commenting the content of these files out on mdl-admin01:

nano /usr/local/bin/mdl\_int\_mgmt\_RunSits.sh

nano /usr/local/bin/mdl\_int\_mgmt\_RunCMis.sh

Rolling back moodle\_int\_management db → <https://git.catalyst-eu.net/ucl/moodle/-/wikis/Restoring-MIM-DB-Production> &  WR348571

## VI\] Moodle Snapshots Failover

If we needed to fail over the Moodle Snapshots service:

1) Zerto mdl-snpsht-ap01.ad.ucl.ac.uk app server

2) Zerto mydb-liva04 database server

If there is a concern about picking up the correct IP for the failed over VMs:
a) edit the config.php of the 5 instances and set the database host to the new failed over IPs of the database servers

b) make sure F5 config flicks over to the other site and points to the Zertoed app server

## VII\] Snapshot App Server down / unresponsive

VM can be power cycled (Power Off / Power On) through VrOps

<https://isdvi-sdc-vc02.ad.ucl.ac.uk> for VMs in Slough.

Login with AD\\username and password.

This is a direct link to the VM in VrOps - <https://isdvi-tpc-vc02.ad.ucl.ac.uk/ui/app/vm;nav=v/urn:vmomi:VirtualMachine:vm-1121283:472bee48-a44c-4f5e-8ee5-1bf5a93d986e/summary>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Catalyst UCL Managed Moodle on AWS Cloud SLA Agreement FINAL.pdf](attachments/172465151/172465166.pdf) (application/pdf)

