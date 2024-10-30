# Testing Schedule Moodle

# Pre-Prod

Thursday 20th May - Fix issues with automated patching

Friday 21st May - MySQL8.0 load testing

Tuesday 24th May - MySQL8.0 load testing

Wednesday 25th May - STACK sign-off by Digi-Ed (Eliot)

Thursday 26th May - PHP 7.3 load testing

# Preview 

Upcoming testing:

-   New Relic Infrastructure add-ons ([LNA-376](https://ucldata.atlassian.net/browse/LNA-376))
-   ...

## **MySQL 8.0**

PHPUnit (20/05) Preview- PASSED 

Run PHPUnit tests from:

-   [mdl-app10p.ad.ucl.ac.uk](http://mdl-app10p.ad.ucl.ac.uk)
-   [mdl-preview01u.ad.ucl.ac.uk](http://mdl-preview01u.ad.ucl.ac.uk)

Against the new MySQL 8.0 database: [mdl-dbc01p.ad.ucl.ac.uk](http://mdl-dbc01p.ad.ucl.ac.uk)

Build to be tested is Moodle 3.7.6 only, use a prefix for unit tests as usual

Load Testing (21/05) PreProd - pushed back to 22/05

Environment:

-Slough F5 ( only mdl-app0{1,3,5,7,9}[p.ad.ucl.ac.uk](http://p.ad.ucl.ac.uk "http://p.ad.ucl.ac.uk") )

-re-add mdl-app09p to F5 pool if not already

-Embedded resources off 

Baseline - against mdl-db01p.ad.ucl.ac.uk

Ask HIS to power down db01p and bump up specs of dbc01p to match db01p

Comparison - against [mdl-dbc01p.ad.ucl.ac.uk](http://mdl-dbc01p.ad.ucl.ac.uk)

PHP 7.3

Functional testing on Preview - 18/19 May - PASSES

Load testing on Pre-Prod - Wednesday

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-1000threads-slough+torrington.png](attachments/137141722/137142234.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-1000threads-slough+torrington.png](attachments/137141722/137142235.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-500threads-slough+torrington.png](attachments/137141722/137142236.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-500threads-slough+torrington.png](attachments/137141722/137142237.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-1000threads-slough-only.png](attachments/137141722/137142238.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-1000threads-slough-only.png](attachments/137141722/137142239.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql8-500threads-slough-only.png](attachments/137141722/137142240.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [mysql5.7-500threads-slough-only.png](attachments/137141722/137142241.png) (image/png)

