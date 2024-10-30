# Moodle\_v3.4 Document Converter

External document converter

1) Google Drive converter

2) Unoconv

# Google Drive Converter

## Pre-requisites

-   Its required to have Google developer account to access Google service API
-   Moodle instance

## Step-by-step guide

1.  The instructions on how to set-up google drive converter are [here](https://docs.moodle.org/34/en/Google_Drive_converter)
2.  Its required to set-up OAuth 2 Google service and instructions are available [here](https://docs.moodle.org/34/en/OAuth_2_Google_service)

## Pros

1.  Easy to set-up
2.  No support required as we only are trying to access API developed by Google. So, we don't have to maintain scripts, updates to the scripts, updates to environment etc. We only have to maintain right keys/tokens that's been set-up to use in different environments

## Cons (Risks)

1.  The verification process to obtain the access to API is quite rigorous. The verification form - <https://support.google.com/code/contact/oauth_app_verification> 
    The verification process takes up-to 5 working days and if Google is un-happy with the information provided they could come back with more queries and this could go on for a while.
    Lots of details and un-certainity on whether this process is required again if we decide to set-up a new environment with new hosts etc. 
    More details discussed in this [forum](https://moodle.org/mod/forum/discuss.php?d=356871)
2.  If Google decides to make certain features unavailable or add extra layer of security to their APIs, then that would mean our link to the API will break. So, constant monitoring is required to make sure there is no overnight update to the API from Google - which would potential result in downtime/unavailability of document converter API is high. Meanwhile, in our environment Moodle cannot perform any document conversion until we find a work around
3.  Privacy -  Since we are going to supply google with student's assignments, there is a major privacy concern. Google will have direct access to all the assignments and we don't even know the process at Google's end on how the document conversion works. Does it convert the documents on fly or does it store the documents somewhere before conversion. If its the later would it delete all those documents straight away after finishing the job or just leaves them there orphaned. [Forum discussion on this topic ](https://moodle.org/mod/forum/discuss.php?d=356871)

## Factors that are not convered

1.  Performance when the documents that needs to be converted are supplied in batches of more than 100s

# Unoconv

## Install on CentOS / RedHat

## Pre-requisites

1.  Unoconv script
2.  Libreoffice package
3.  Moodle v3.4 or above

## Instructions

<https://docs.moodle.org/34/en/Universal_Office_Converter_(unoconv)#CentOS_.2F_RedHat>

1.  Check the version of centos and redhat to check if its comes with open office package. As of nov-2016, CentOS and RedHat 7.2 comes with OpenOffice 4.3 - remove this package as we are interested in latest version of libreoffice. Install the most latest LibreOffice package  

    Follow instructions from here - <https://www.tecmint.com/install-libreoffice-on-rhel-centos-fedora-debian-ubuntu-linux-mint/>

2.  Install unoconv script

    ``` bash
    git clone https://github.com/dagwieers/unoconv.git
    # copy 
    cp unoconv/unoconv /usr/bin
    # or link unoconv to /usr/bin
    ln -s unoconv/unoconv /usr/bin/unoconv
    ```

3.  Make sure unoconv is properly configured in Moodle <https://v34.moodle-01-d.ucl.ac.uk/admin/search.php?query=unoconv>. Unoconv settings are under site administration → Plugins → Document converters → Unoconv
4.  Create unoconv service

    ``` bash
    vi /etc/systemd/system/unoconv.service
    ```

5.  And then copy and paste the following configuration into it:

    ``` bash
    [Unit]
    Description=Unoconv listener for document conversions
    Documentation=https://github.com/dagwieers/unoconv
    After=network.target remote-fs.target nss-lookup.target

    [Service]
    Type=simple
    Environment="UNO_PATH=/usr/lib64/libreoffice/program"
    ExecStart=/usr/bin/unoconv --listener

    [Install]
    WantedBy=multi-user.target
    ```

6.  And then enable and start the above service

    ``` bash
    systemctl enable unoconv.service
    systemctl start unoconv.service
    ```

7.  If your selinux is enabled you should set

    ``` bash
    #setsebool -P httpd_execmem on
    ```

## Related articles

-   Page:

    [Moodle\_v3.4 Unoconv Monitoring](/display/ISMoodle/Moodle_v3.4+Unoconv+Monitoring)

-   Page:

    [Moodle\_v3.4 Redis caching](/display/ISMoodle/Moodle_v3.4+Redis+caching)

-   Page:

    [Moodle\_v3.4 PHPUnit Testing](/display/ISMoodle/Moodle_v3.4+PHPUnit+Testing)

-   Page:

    [Moodle\_v3.4 Document Converter](/display/ISMoodle/Moodle_v3.4+Document+Converter)

-   Page:

    [Moodle\_v3.4 Acceptance Testing(Using Behat)](../ISMoodle/Moodle_v3.4_Acceptance_Testing_Using_Behat_)

```
```
