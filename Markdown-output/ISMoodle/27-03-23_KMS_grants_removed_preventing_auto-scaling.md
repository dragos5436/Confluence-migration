# 27-03-23 KMS grants removed preventing auto-scaling

[<img src="rest/documentConversion/latest/conversion/thumbnail/254640594/1" height="250" />](/download/attachments/254640622/2023-03-27-ucl.pdf?version=1&modificationDate=1679928282000&api=v2)

Catalyst has been continuously improving their infrastructure design for Moodle across their customer base.  A new update to the infrastructure was applied to UCL Moodle Staging on Friday 24th March when UCL requested a Moodle code update to be applied to Staging, in order to enable the deployment of the Moodle minor release on Tuesday 28th Match 1am-2am.

Unfortunately, the infrastructure code change did not limit itself to staging and revoked the access for prod to access the Amazon Machine Image (AMI) used to create new servers and allow Moodle to scale up. As a result while the auto-scaling layers asked for more resources on Monday morning's usual 9am scale up, none could be created without the access to the AMI.

This was swiftly identified and resolved by Catalyst.

It however resulted in UCL Moodle poor performance between 9am and 11am, culminating in a 10 minutes outage between 10:18-10:30 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [2023-03-27-ucl.pdf](attachments/254640622/254640594.pdf) (application/pdf)

