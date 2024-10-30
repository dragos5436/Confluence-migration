# MDL-RHEL7 SELinux / ACLs / permissions

# Security Enhanced Linux

RHEL7 uses SELinux

The Moodle **code** directory must have the selinux tag: **httpd\_sys\_content\_t**

The Moodle **data** directory must have the selinux tag: **httpd\_sys\_rw\_content\_t**

Which means when deploying a new build artefact one may need to run:

    chcon -R --type=httpd_sys_content_t moodle

For NFS mounts the context needs to be set in the mount <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/sect-security-enhanced_linux-working_with_selinux-mounting_file_systems#sect-Security-Enhanced_Linux-Mounting_File_Systems-Context_Mounts>

We use this Puppet module <https://forge.puppet.com/puppet/selinux> to set things.

    getsebool -a | grep httpd

<https://www.thegeekdiary.com/how-to-disable-or-set-selinux-to-permissive-mode/>

My go to vid when frustrated by SELinux - <https://www.youtube.com/watch?v=MxjenQ31b70> 

<https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html-single/selinux_users_and_administrators_guide/index>

# Access Control Lists

ACLs

To see which AD groups have access to files:

getfacl .

To grant access to a group:

setfacl 

This may be a good reference - <https://www.tecmint.com/secure-files-using-acls-in-linux/>

# Key based Authentication

On the server

``` java
ls -lah && mkdir .ssh && touch .ssh/authorized_keys && chmod -R 755 .ssh && vi .ssh/authorized_keys
```

Insert the content of your personal Public Key (i.e the ~/.ssh/id\_rsa.pub on your laptop for your account)


