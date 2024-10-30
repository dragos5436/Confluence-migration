# Post-Upgrade issues

-   NFS issue → HIS IN03754605 / IN03754606 → RESOLVED

-   Moodle Snapshot URL changes in DB didn't fully work - IN03754397 /  IN03754574 will be coming our way - https://moodle-snapshot.ucl.ac.uk/18-19/course/view.php?id=2075 -&gt; RESOLVED

php admin/tool/replace/cli/replace.php --search=' <https://moodle-1819.ucl.ac.uk/> ' --replace='<https://moodle-snapshot.ucl.ac.uk/18-19/>' --non-interactive --shorten=true

-   PHP Notice:  Trying to get property 'username' of non-object in /data/apache/htdocs/moodlesite-371-release-July-2019/local/testaccount\_automation/lib.php on line 148 Username :  deleted. Test-user account expired on:22-11-2018.. 

-   PHP Warning:  unlink(/moodlefs/auth\_outage/climaintenance/28b782240b3e76db824e12c02754a9731a167527.YXBwbGljYXRpb24vZm9udC13b2Zm): Permission denied in /data/apache/htdocs/moodlesite-371-release-July-2019/auth/outage/classes/local/controllers/maintenance\_static\_page\_io.php on line 179

Other bits left to work on with HIS (extract from email to Tony):

-On mdl-admin01.ad because /data/moodle\_int\_management/ had to be a directory we cloned code via git as /data/moodle\_int\_management/moodle\_integration\_manager/ - (STFP transfer on mdl-admin-01p, not ideal) easy to adjust the path the cron will execute but I can’t edit the files David put there - particularly problematic to update database creds but for the lot really as not sure I would successfully do a git pull if there was anything to pull down. → David to make database.php writable by group

|→ Tony has done the bulk change of ownership to apache:apache on mdl-admin01p but not prod (mdl-admin01).

-need to sort out the file perms / contexts on [mdl-snpsht-ap01.ad](http://mdl-snpsht-ap01.ad) for selinux as it is set to enforcing and only temporarily permissive i.e. reboot would result in access denied. I did try to run a chcon on /data/apache/htdocs/moodle but had permission denied. Probably need to do the same in /data/moodle. Also as files are owned by one person in the team, others can’t touch them. 

-Shouldn’t Puppet ensure all files & subdirectories are owned by apache, with the relevant selinux context, and ACLS rather than rely on chown/chmod/chcon/setfacl by the person adding files? (For either docroots or dataroots) 
Data roots:
- /data/moodle/\* 
- /moodlefs/\*
Doc Roots:
-/data/apache/htdocs/\*
-/data/apache/moodle-vhosts/\*

|→ no, puppet crashes doing so. Tony has done the bulk change of ownership to apache:apache on pre-prod & prod.

-ldaps still not working so have fallen back to <ldap://ldap-auth-ad.ucl.ac.uk/>, should move back to ldaps at some point

|→ testing over weekend showed ldaps did work some of the time but there was 1/10 failure via the application. Was fine at the CLI with

``` java
ldapsearch -xLLL -H ldaps://ad.ucl.ac.uk:636 -D "CN=sa-ldap-moodle,OU=LDAPAccounts,OU=Accounts,OU=Administration,DC=ad,DC=ucl,DC=ac,DC=uk" -W -b "OU=Accounts,DC=ad,DC=ucl,DC=ac,DC=uk" 'samaccountname=cceaabr' -d1
```

- .htaccess files whitelisting IP address (appserver & snapshot) to bypass redirects don’t actually work because domain host isn’t configured (?). Rohith had fixed snapshot with David 25th/26th June but somehow got reverted and can’t remember specifics, probably was meant to be PI.

These are also on the radar

-   HIS will get a contractor to help with oci8 in PHP 7.2 (for mdl-admin01 & mdl-admin01p -&gt; MIM) → ticket with HIS

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Screenshot 2019-07-27 at 23.52.23.png](attachments/120786341/120786578.png) (image/png)

