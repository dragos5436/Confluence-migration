# Moodle 4.3 Preview instance refreshes (post-upgrade)

This document outlines the changes required to setup Preview Instances  e.g. demo, training, UAT.

**1) Site admin changes**

Component

Setting name

Before

After

Reason

block\_alerts

<https://4-demo-prep.preview-moodle.ucl.ac.uk/admin/settings.php?section=blocksettingalerts>

date1

09/12/2023

block\_alerts

title1

Moodle Demo

block\_alerts

description1

This is a preview of Moodle 4.3. Every fortnight this site will be refreshed. Any work here will be lost. 

Lecturecast LTI config

<https://4-demo-prep.preview-moodle.ucl.ac.uk/admin/settings.php?section=modsettinglti&tab=lti_configured>

tool url

key

secret

https://echo360.org.uk/lti/no

no

no

~~turnitintooltwo~~

~~<https://4-demo-prep.preview-moodle.ucl.ac.uk/admin/settings.php?section=modsettingturnitintooltwo>~~

~~accountid~~
~~2702~~

~~33333~~

~~prevent connection to prod turnitin~~

~~**not needed as hardcoded in config.php**~~

~~turnitintooltwo~~

~~apiurl~~

~~https://sandbox.turnitin.com~~

~~**not needed as hardcoded in config.php**~~
~~plagiarism\_turnitin~~

~~<https://4-demo-prep.preview-moodle.ucl.ac.uk/plagiarism/turnitin/settings.php>~~

~~account id~~
~~2702~~

~~33333~~

~~**not needed as hardcoded in config.php**~~
~~plagiarism\_turnitin~~

~~Turnitin API URL~~

~~https://sandbox.turnitin.com~~

~~**not needed as hardcoded in config.php**~~

**4) Language pack changes**

<https://4-demo-prep.preview-moodle.ucl.ac.uk/admin/tool/customlang/index.php?lng=en>

Select Import and use this zip (prod language strings) and save.

[customlang\_en (3).zip](attachments/281084155/306185805.zip)

**9) Amend student role permission to "read-only"**

``` java
CREATE TABLE mdl_role_capabilities_backup LIKE mdl_role_capabilities;

INSERT INTO mdl_role_capabilities_backup
(SELECT * FROM mdl_role_capabilities);

UPDATE mdl_role_capabilities
SET permission='-1000'
WHERE roleid=14
AND capability NOT LIKE '%:view%' 
```

in <https://4-demo.preview-moodle.ucl.ac.uk/admin/roles/define.php?action=view&roleid=14> set to Prohibit:

-   mod/forum:addnews
-   mod/forum:addquestion

-   mod/hsuforum:addnews

-   mod/hsuforum:addquestion

Set to Allow:

-   moodle/course:isincompletionreports 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (19-07-23).zip](attachments/281084155/281084126.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings.zip](attachments/281084155/281084147.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-4-5\_13-38-54.png](attachments/281084155/281084146.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (5).zip](attachments/281084155/281084145.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (6).zip](attachments/281084155/281084144.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (110523).zip](attachments/281084155/281084143.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (120523).zip](attachments/281084155/281084142.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (30).zip](attachments/281084155/281084141.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (18052023).zip](attachments/281084155/281084140.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_12-0-35.png](attachments/281084155/281084139.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_12-2-12.png](attachments/281084155/281084138.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme config 260523.zip](attachments/281084155/281084137.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_16-25-46.png](attachments/281084155/281084136.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_16-27-54.png](attachments/281084155/281084135.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_17-3-4.png](attachments/281084155/281084134.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-5-26\_17-43-33.png](attachments/281084155/281084133.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screenshot 2023-05-29 at 21.57.24.png](attachments/281084155/281084132.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screenshot 2023-05-29 at 22.03.27.png](attachments/281084155/281084131.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [customlang\_en (2).zip](attachments/281084155/281084130.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [customlang\_en (1).zip](attachments/281084155/281084129.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2023-6-9\_12-58-50.png](attachments/281084155/281084128.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (14-07-23).zip](attachments/281084155/281084127.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [theme\_norse\_settings (25-07-23).zip](attachments/281084155/281084125.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [customlang\_en (3).zip](attachments/281084155/306185805.zip) (application/zip)

