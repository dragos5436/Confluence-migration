# AWS Accounts

## UCL Moodle Dev / Test

You now have a new account “Moodle-AWS”

 

The usernames below have been given admin access

utnvdkw, cceaean, cceabab, cceanbo, cceaasp

 

you can logon via SSO using the link :  https://ucl-cloud.awsapps.com/start\#/

 

I’ve created the VPC “vpc-0b29e5bf3e5c90f6f” which is 10.61.129.0/26

 

This has 3 subnets, one in each AZ and each has 10 IPs available

dev-public-subnet-az1-540370667459

dev-public-subnet-az2-540370667459

dev-public-subnet-az3-540370667459

There is a range of 10 IPs not allocated ( 10.61.129.48/28)– should you need them for anything, I left them unallocated so can be used anywhere at a later date

 

I’ve created a route table for these subnets to both data centre available IPs via managed prefix lists

   -You would need to ask networking to open ports to any traffic you want going between the two

 

As requested Internet access is via an internet gateway, so you will need to add an elastic/public IP to any resources you want to have that access..

 

Firewall rules:

-enable 3306 (mysql) & 22 (ssh) from admin0{1,2}p and preview to the entire VPC's IP range

## UCL Moodle Librelambda

This account can be accessed via <https://680860566424.signin.aws.amazon.com/console>

Learning Apps has full Admin access & ability to use all regions.

## UCL Moodle Prod/Staging

Account can be accessed via https://892832657335.signin.aws.amazon.com/console 

This account is owned by UCL but fully managed by Catalyst.

Only Alistair Spark & Jo Burgess from UCL have oversight access to it currently.

Documentation:

-   https://git.catalyst-eu.net/ucl/moodle/-/wikis/home
-   AWS Site-to-Site VPN for Moodle
-   Moodle Integration Manager (MIM) - SITS/CMIS integration


