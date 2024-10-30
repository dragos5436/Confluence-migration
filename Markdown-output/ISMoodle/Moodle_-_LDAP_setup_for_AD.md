# Moodle - LDAP setup for AD

This is now live on Moodle Snapshots. Moodle production is scheduled for 28th Jan 2016

# Requirements

The CA public certificate of the key which signed the LDAP TLS certificate on `ldap-auth-ad.ucl.ac.uk` needs to be installed into `/etc/openldap/cacerts` on the Moodle application servers. LDAP TLS authentication will fail if this certificate isn't present. (Non-TLS auth will still work but should be avoided). DCS's LDAP puppet module has been modified to allow them to quickly do this.

# Procedure

Log into the running Moodle instance as an administrator and make the changes as detailed in the section below.

**DO NOT** log out of this browser session. Otherwise, if the changes don't work as expected you may not be able to log back in to fix it!

Launch another browser and test that you can log in OK using an LDAP user account (e.g. your own UCL login). If you can, then the changes have worked.

# Location of LDAP settings pages

For production (Moodle 2.8), and 2014-15 snapshot instance (Moodle 2.6), go to: Site administration -&gt; Plugins -&gt; Authentication -&gt; LDAP Server

For snapshot instances 2012-13 (Moodle 2.2) and 2013-14 (Moodle 2.4), go to: Settings -&gt; Plugins -&gt; Authentication -&gt; LDAP Server

For snapshot instances prior to 2012-2013 (Moodle 1.9), go to: Site Administration -&gt; Users -&gt; Authentication -&gt; LDAP server

# Settings for AD LDAP

Host url (for production, and 2014-15 snapshot instance and later):  ldap://ldap-auth-ad.ucl.ac.uk

**Host url (for snapshot instances prior to 2014-15):**  ldaps://ldap-auth-ad.ucl.ac.uk 

**Version:** 3

**Use TLS:** Yes

(TLS option is not available in snapshot instances prior to 2014-15)

**Distinguished name:** CN=sa-ldap-moodle,OU=LDAPAccounts,OU=Accounts,OU=Administration,DC=ad,DC=ucl,DC=ac,DC=uk

**Password:** saved in keypass

**Contexts:** ou=accounts,dc=ad,dc=ucl,dc=ac,dc=uk

# Previous configuration (UCLUSERS LDAP)

For reference and rollback, the previous configuration settings are:

**Host URL:** <ldap://ldap-auth.ucl.ac.uk>

**Version:** 2**
**

**Use TLS (if available):** No

**Distinguished name:** cn=moodle,ou=System Users,dc=uclusers,dc=ucl,dc=ac,dc=uk

**Password:** saved in keypass

**Contexts:** ou=departments,dc=uclusers,dc=ucl,dc=ac,dc=uk

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [ldap.png](attachments/55183006/55183007.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [ldap.png](attachments/55183006/55183013.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [ldap.png](attachments/55183006/55183005.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle-ldap.png](attachments/55183006/56496384.png) (image/png)

