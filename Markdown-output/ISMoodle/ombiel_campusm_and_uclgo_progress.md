# ombiel campusm and uclgo progress

Latest version 

-   [Contacts](#ombielcampusmanduclgoprogress-Contacts)
-   [Installation instructions](#ombielcampusmanduclgoprogress-Installationinstructions)
-   [Progress](#ombielcampusmanduclgoprogress-Progress)
-   [Issues](#ombielcampusmanduclgoprogress-Issues)
-   [Testing](#ombielcampusmanduclgoprogress-Testing)
-   [Notes](#ombielcampusmanduclgoprogress-Notes)

## Contacts

| Organisation     | Contact name     | Contact email                      |
|------------------|------------------|------------------------------------|
| UCL              | Daniel Jackson   | d.jackson@ucl.ac.uk                |
| ExLibris CampusM | Gordon Alexander | Gordon.Alexander@ExLibrisgroup.com |

## Installation instructions

These are the reequired files: [**moodle-ulcc\_webservices.zip**](attachments/17764547/30998537.zip)

To install the CampusM app so that it works with moodle within moodle you must add the provided files to a directory inside moodles local plugin section called "ulcc\_webservices".

You must then enable web services from the "Advanced Features" section from the moodle admin settings.

Configuration Instructions from Ombiel: [Configure Moodle for CampusM.doc](attachments/17764547/30998569.doc)

Follow the instructions given in that word document.

You will also have to enable the the SOAP protocol by going to "Site administration -&gt; Plugins -&gt; Web services -&gt; Manage protocols" and click the eye button to enable it.

Within the Manage Authentication section you will also have to enable the Web services authentication. "Site administration -&gt; Plugins -&gt; Authentication -&gt; Manage authentication"

Make sure: Go back and double check that the authenticated user has the correct permissions specifically for: moodle/webservice:createtoken and webservice/soap:use should be set to allow.

Latest version here: <https://github.com/ExLibrisGroup/campusm-tools/tree/master/Moodle-Plugins>

## Progress

Currently installed on v226.moodle-dev

## Issues

site admins unable to log in

## Testing

## Notes

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [moodle-ulcc\_webservices.zip](attachments/17764547/30998537.zip) (application/zip)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Configure Moodle for CampusM.doc](attachments/17764547/30998569.doc) (application/msword)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [UCLGo-Moodle-integration.txt](attachments/17764547/33488945.txt) (text/plain)

