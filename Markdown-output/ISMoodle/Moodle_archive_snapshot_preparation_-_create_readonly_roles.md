# Moodle archive/snapshot preparation - create readonly roles

[<img src="rest/documentConversion/latest/conversion/thumbnail/62784669/1" height="250" />](/download/attachments/62784647/capabilities_student_readonly.txt?version=1&modificationDate=1468595537000&api=v2) [<img src="rest/documentConversion/latest/conversion/thumbnail/62784670/1" height="250" />](/download/attachments/62784647/capabilities_staff_readonly.txt?version=1&modificationDate=1468595537000&api=v2)

**These are the steps to create readonly role to prepare the 2015/26 Moodle archive.**

This page is under construction!

The Moodle archive is a read only instance of Moodle. In order to achieve that goal we create 'readonly' roles which have writing capabilities set to 'prohibit'. This is what is described in this article.

We are going to use [moosh](http://moosh-online.com/) to achieve our goal.

## Create roles

This has been done on moodle-dev. Change the commands according to your environment

We need [two text files](attachments/62784647/62784669.txt) (see attachments) that contains the list of Moodle capabilities. We copy the files to the home directory of ccspmdd. 

We then log into the server.

``` bash
scp capabilities_st*.txt ccspmdd@moodle-dev.ucl.ac.uk:
ssh ccspmdd@moodle-dev.ucl.ac.uk
```

On the server we go to where Moodle lives (change accordingly)

``` bash
cd /data/apache/moodle-vhosts/v2812_sammy
```

We create the student read only role and save the role ID returned by moosh

``` bash
readonlystudentID=`moosh role-create -d "read only student" -a student -n "Student readonly" readonlystudent`
```

We update the capabilities of the newly created role

``` bash
while read capability; do
 moosh role-update-capability readonlystudent $capability prohibit 1
done <$HOME/capabilities_student_readonly.txt
```

We create the staff read only role and save the role ID returned by moosh

``` bash
readonlystaffID=`moosh role-create -d "read only staff" -a editingteacher -n "Staff readonly" readonlystaff`
```

We update the capabilities of the newly created role

``` bash
while read capability; do
 moosh role-update-capability readonlystaff $capability prohibit 1
done <$HOME/capabilities_staff_readonly.txt
```

We echo the ID of the readonly roles

``` bash
echo "ID of Student readonly role: $readonlystudentID"
echo "ID of Staff readonly role: $readonlystaffID"
echo ""
echo "If you haven't seen error messages, it means all is well."
echo ""
echo "<<<THE END>>>"
```

 

## Appendices

### Install moosh

The following as been done on **moodle-dev**. Change according to your environment.

We install moosh in the 'bin' directory of the '**ccspmdd**' user. The '**bin**' directory is in the **$PATH** of ccspmdd (**$HOME/bin**).

Before we can install moosh, we install **composer**.

What we have done is taken straight from the moosh and composer websites. Visit those websites for more details.

``` java
#install composer
cd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar bin/
 
## create directory 'bin' if it does not exist
[ ! -d bin ] && mkdir bin

cd bin
#create a symlink
ln -s ./composer.phar composer
 
#install moosh
wget -c https://github.com/tmuras/moosh/archive/master.zip
unzip master.zip
rm master.zip
mv moosh-master moosh_files
cd moosh_files/
composer install
#success :)

cd ..
#create a symlink
ln -s moosh_files/moosh.php moosh
```

 

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_student\_readonly.txt](attachments/62784647/62784669.txt) (text/plain)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [capabilities\_staff\_readonly.txt](attachments/62784647/62784670.txt) (text/plain)

