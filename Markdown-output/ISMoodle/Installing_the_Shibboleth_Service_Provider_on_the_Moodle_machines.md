# Installing the Shibboleth Service Provider on the Moodle machines

Instructions for installing the Shibboleth Service Provider on the Moodle machines:

log4shib:

mkdir /applications/log4shib
cd /applications/log4shib
wget <http://shibboleth.internet2.edu/downloads/log4shib/1.0.4/log4shib-1.0.4.tar.gz>

tar xvfz log4shib-1.0.4.tar.gz
cd log4shib-1.0.4
./configure --disable-static --disable-doxygen --prefix=/applications/shibboleth-sp-2.2
make
make check
All 10 tests passed

make install

--------------------------------------------------------------------------

Xerces-C

mkdir /applications/xerces-c
cd /applications/xerces-c
wget <http://apache.mirror.rbftpnetworks.com/xerces/c/3/sources/xerces-c-3.1.1.tar.gz>

tar xvfz xerces-c-3.1.1.tar.gz
cd xerces-c-3.1.1
./configure --prefix=/applications/shibboleth-sp-2.2 --disable-netaccessor-libcurl
make
make install

--------------------------------------------------------------------------

 
XML-Security-C

mkdir /applications/xml-security-c
cd /applications/xml-security-c

wget <http://santuario.apache.org/dist/c-library/xml-security-c-1.5.1.tar.gz>
tar xvfz xml-security-c-1.5.1.tar.gz
cd xml-security-c-1.5.1

export XERCESCROOT=/applications/shibboleth-sp-2.2/
Note: this must point to the installed directories, not the source

./configure --without-xalan --disable-static --prefix=/applications/shibboleth-sp-2.2
make
make install

--------------------------------------------------------------------------

XMLTooling-C

mkdir /applications/xmltooling-c
cd /applications/xmltooling-c
wget <http://shibboleth.internet2.edu/downloads/opensaml/cpp/2.3/xmltooling-1.3.3.tar.gz>
tar xvfz xmltooling-1.3.3.tar.gz
cd xmltooling-1.3.3

\#export XERCESCROOT=/applications/xerces-c/xerces-c-3.1.1
export LD\_LIBRARY\_PATH=/applications/shibboleth-sp-2.2/lib:/usr/local/lib:/usr/lib:/lib

./configure --with-log4shib=/applications/shibboleth-sp-2.2 --prefix=/applications/shibboleth-sp-2.2 -C
make
make test
make install
 --------------------------------------------------------------------------

OpenSAML-C:

mkdir /applications/opensaml
cd /applications/opensaml
wget <http://shibboleth.internet2.edu/downloads/opensaml/cpp/latest/opensaml-2.3.tar.gz>
tar xvfz opensaml-2.3.tar.gz
cd opensaml-2.3
./configure --with-log4shib=/applications/shibboleth-sp-2.2 --prefix=/applications/shibboleth-sp-2.2 -C
make
make install

--------------------------------------------------------------------------

Shibboleth:

mkdir /applications/shibboleth-sp-2.2
cd /applications/shibboleth-sp-2.2
wget <http://shibboleth.internet2.edu/downloads/shibboleth/cppsp/latest/shibboleth-sp-2.3.1.tar.gz>
tar xvfz shibboleth-sp-2.3.1.tar.gz
cd shibboleth-2.3.1

wget <http://shibboleth.internet2.edu/downloads/shibboleth/cppsp/latest/configure.patch>

patch &lt; configure.patch

./configure --with-log4shib=/applications/shibboleth-sp-2.2 \\
            --enable-apache-22 --with-apxs22=/applications/apache/bin/apxs \\
            --with-apr1=/applications/apache/bin/apr-1-config \\
            --with-apu1=/data/applications/apache/bin/apu-1-config \\
            --prefix=/applications/shibboleth-sp-2.2

Modify configure, as there is a bug:
Under
    \# APU settings
near line 25723 change:
APU\_CONFIG=$withval

Under
\# APU1 settings
near line 26025, change:
                APU1\_CONFIG=$withval

Otherwise there is the error:
configure: error: Unable to locate apu-1-config, may need --with-apu1 option.

make
make install

 
 --------------------------------------------------------------------------

Configure Apache, install start-up scripts, etc:

1.  Set the LD\_LIBRARY\_PATH environment variable to the path containing
Shibboleth dependencies and libraries. This is required both in the
script that starts the shibd daemon and when starting Apache.

Modify /etc/init.d/apache2.ucl
cp /nfs/rcs/sysman/pp/shib2-scripts/apache2.ucl-sp /etc/init.d/apache2.ucl

Add:
export LD\_LIBRARY\_PATH=/applications/shibboleth-sp-2.2/lib:/usr/local/lib:/usr/lib:/lib

2. Edit httpd.conf:

Include /applications/shibboleth-sp-2.2/etc/shibboleth/apache22.config

The UseCanonicalName directive should be set to On.

 3. By default, the Shibboleth module is configured to log information to /applications/shibboleth-sp-2.2/var/log/httpd/native.log,

chown ccspwww /applications/shibboleth-sp-2.2/var/log/httpd/

4. shibd creates its own separate logs at
/applications/shibboleth-sp-2.2/var/log/shibboleth/shibd.log and must have
appropriate write permissions itself as well.

5. Restart Apache.

/etc/init.d/apache2.ucl stop6. Install the shibd start-up script:

cp /nfs/rcs/sysman/pp/shib2-scripts/shibd.ucl /etc/init.d/shibd.ucl

Create the links:
update-rc.d shibd.ucl start 80 2 3 4 5 . stop 20 0 1 6 .

7. Cycle SP logs:

cp /nfs/rcs/sysman/pp/shib2-scripts/rotate-shibd-logs  /etc/cron.daily

/etc/init.d/apache2.ucl start

 --------------------------------------------------------------------------

Configure Shibboleth SP:

Modify the following files:
cd /applications/shibboleth-sp-2.2/etc/shibboleth/

cp shibboleth2.xml shibboleth2.xml.orig
cp /nfs/rcs/sysman/pp/shib2-conf/shibboleth2.xml-moodle-pp.ucl.ac.uk  shibboleth2.xml

cp /nfs/rcs/sysman/pp/shib2-conf/idp-ucl-metadata.xml idp-ucl-metadata.xml

????
attribute-policy.xml
attribute-map.xml

--------------------------------------------------------------------------

Start the SP:

/etc/init.d/shibd.ucl start

--------------------------------------------------------------------------

 Obtain the SP metadata and save it in the sysman/pp directory:
On vscani-a as pp:
cd /nfs/rcs/sysman/pp/shib2-conf/sp-metadata
wget <https://moodle-pp.ucl.ac.uk/Shibboleth.sso/Metadata> -O sp.moodle-pp.ucl.ac.uk.xml

Add it to the sp-ucl-metadata and update this on the IdP machines.

