# CMIS Interface

[Development Progress](https://wiki.ucl.ac.uk/display/ISMoodle/CMIS+Interface+Development+progress)

[Unit Testing](CMIS_Interface_Unit_Testing)

[Database Design](https://wiki.ucl.ac.uk/display/ISMoodle/Database+Design)

[Application Design](https://wiki.ucl.ac.uk/display/ISMoodle/Application+Design)

Cron

\# Puppet Name: Run the SITS Filter 2 CMIS groups import process
15 2 \* \* \* /usr/local/bin/mdl\_int\_mgmt\_RunCmis.sh &gt; /dev/null 2&gt;&1

How to run the script

$ cd /path-to-moodle\_int\_management/app

$ Console/cake RunCmis runCmisCronJob


