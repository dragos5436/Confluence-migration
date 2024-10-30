# Learning & Teaching Applications Servers and Databases Details

#### Service

#### service owner - to be kept informed with any migration plans

#### Current server

 
 
#### Host name

#### OS

#### Application Middleware

#### Application

#### URL

#### folder

#### Database

#### Contact Info

#### **PRODUCTION SERVERS (WIKI, OPINIO, MYPORTFOLIO, BLOGS)**

 
 
production Wiki
<lta-team@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
webappsvm-a
Rhel6
Apache
Tomcat
Atlassian Confluence 5.7.5
[http://wiki.ucl.ac.uk](http://wiki.ucl.ac.uk/)
/data/confluence
confluence\_live on webapps-db-a/b. User=confluenceuser
 
production Opinio
<lta-team@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
webappsvm-a
Apache
Tomcat
ObjectPlanet Opinio 6.4
[http://opinio.ucl.ac.uk](http://opinio.ucl.ac.uk/)
/data/opinio/opinio-x.x.x
opinio on webapps-db-a/b. User=opinio
 
production Myportfolio
<lta-team@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
webappsvm-b
Apache
PHP 5.3.3
(open source) Mahara 1.4
[http://myportfolio.ucl.ac.uk](http://myportfolio.ucl.ac.uk/)
/data/apache/htdocs/mahara-x.x.x
mahara on webapps-db-a/b. User=mahara
 
Production blogs
<lta-team@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
wwwapps-a
 
 
WordpressMU
<http://blogs.ucl.ac.uk>
/data/apache/vhost/live/blogs
WordPress\_mu\_live on webapps-db-a/b. User=wpmu\_user
 
#### **MOODLE SERVERS**

 
 
Production Moodle
<lta-team@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
moodle-d
Rhel6
Apache v...
PHP 5.4.40
moodle
[http://moodle.ucl.ac.uk](http://moodle.ucl.ac.uk/)
/data/apache/htdocs/moodle
moodle\_live on moodle-db-a/b. User=moodleuser
 
 
 
moodle-e
Rhel6
Apache v...
PHP 5.4.40
 
moodle-f
Rhel6
Apache v...
PHP 5.4.40
 
moodle-g (not in pool)
Rhel6
Apache v...
PHP 5.4.40

 
moodle-admin
Rhel6
Apache v...
PHP 5.4.40

 
Moodle PP
moodle-admin-pp
 
 
 
 
 
moodle-db-pp(-a)
 
moodle-pp-a
 
 
 
 
 
 
 
moodle-pp-b
 
 
 
 
 
 
 
moodle-pp-c
 
 
 
 
 
 
 
moodle-pp-d (not in pool)
 
 
 
 
 
 
 
moodle uat
moodle-uat
 
 
moodle
[http://vxxx.moodle-uat.ucl.ac.uk/ ](http://vxxx.moodle-uat.ucl.ac.uk/)
/data/apache/moodle-vhosts/vxxx
moodle\_uat\_vxxx on localhost. User=mdluser-uat
 
moodle dev
moodle-dev
moodle
[http://vxxx.moodle-dev.ucl.ac.uk/ ](http://vxxx.moodle-dev.ucl.ac.uk/)
/data/apache/moodle-vhosts/vxxx
moodle\_dev\_vxxx on localhost. User=mdluser-dev
 
moodle-snapshot
moodle-archive
RHEL6
Apache 2. PHP5.3.3
moodle snapshot
<http://moodle-archive.ucl.ac.uk/09-10/>  <http://moodle-archive.ucl.ac.uk/10-11/>
/data/apache/htdocs/moodle/09-10  /data/apache/htdocs/moodle/10-11
moodle\_archive\_yyyyy  on localhost. User=moodleuser
 
moodle test
 
moodle-test
 
 
 
 
/data/apache/moodle-vhosts
 
 
#### **MYSQL SERVERS**

 
 
Master MySQL server for Moodle, Opinio
<mysql-support@ucl.ac.uk>
<isd-ats@ucl.ac.uk>
<is-webteam@ucl.ac.uk>
moodle-db-a
Rhel 5.6 ESX ISDHA
Apache
MySQL 5.5
 
 
 
 
Slave MySQL server for Moodle, Opinio
moodled-db-b
Rhel6
Apache
MySQL 5.0.89
 
 
 
 
Master MySQL server for general services including wiki, lecturecast
mysql-c
Ubuntu 6.06
Apache
MySQL 5.0.89
 
 
 
 
Slave MySQL server for general services including wiki, lecturecast
mysql-d
Ubuntu 6.06
Apache
MySQL 5.0.89
 
 
 
 
 
 
moodle-db-pp
 
moodle-db-pp
 
 
 
 
 
 
 
moodle-test
 
moodle-test
 
 
 
 
 
 
 
Mahara + Wiki + Wordpress + Confluence
 
webapps-db
 
 
 
 
 
 
 
 
webapps-db-a
 
 
 
 
 
 
 
#### **UAT SERVERS (MYPORTFOLIO, WIKI, OPINIO, Blogs)**

 
 
myportfolio
 
webapps-uat
Rhel6
 
 
<https://vxxx.myportfolio-uat.ucl.ac.uk/>
/data/mahara-vhosts/vxxx
mahara\_uat\_xxx on localhost. User=mahara
 
Wiki
webapps-uat
 
 
 
[wiki-uat.ucl.ac.uk](http://wiki-uat.ucl.ac.uk)
/data/confluence-app/confluence-x.x.x
confluence\_uat\_xxx on localhost. User=confluenceuser
 
Blogs
wwwapps-uat
 
 
 
<http://blogs-uat.ucl.ac.uk>
/data/apache/vhost/uat/blogs
blogs\_uat\_xxx on webapps-uat. User=wpmu\_user
 
Opinio
webapps-uat
Ubuntu 6.06
 
 
[https://opinio-uat.ucl.ac.uk/ ](https://opinio-uat.ucl.ac.uk/)
/data/opinio/opinio-7.x.x
opinio\_dev on localhost. User=opinio
 
#### **DEVELOPMENT SERVERS (MYPORTFOLIO, WIKI, OPINIO, Blogs)**

 
 
myportfolio
 
webapps-dev
 
 
 
<https://v162.myportfolio-dev.ucl.ac.uk/>
/data/mahara-vhosts/v162
mahara\_dev\_xxx on localhost. User=mahara
 
Wiki
webapps-dev
 
 
 
[wiki-dev.ucl.ac.uk](http://wiki-dev.ucl.ac.uk)
/data/confluence-app/confluence-3.5.16
confluence\_dev\_xxx on localhost. User=confluenceuser
 
Blogs
wwwapps-uat
 
 
 
<http://blogs-dev.ucl.ac.uk>
/data/apache/vhost/dev/blogs
blogs\_dev\_xxx on webapps-dev. User=wpmu\_user
 
Opinio
webapps-dev
Ubuntu 6.06
 
 
<https://opinio-dev.ucl.ac.uk/> 
/data/opinio/opinio-6.5
opinio\_dev on localhost. User=opinio
 
 
 
 
