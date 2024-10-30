# How to setup a web service

1.  Enable web services (see ` Site administration / Advanced features`)
2.  Enable the REST protocol (see ` Site administration / Plugins / Web services / Manage protocols`)
3.  Create a user (e.g. named `My LTI Tool Service`) (see ` Site administration | Users | Accounts`)
4.  Create a role (e.g. named `My LTI Tool` and assign it to the user (see below) (see ` Site administration | Users | Permissions | Define roles`)
5.  Add an external service (e.g. named `My LTI Tool web service` with a short name of `myltitool`) (see ` Site administration | Plugins | Web services`)
    -   add functions to the service - <https://moodle.ucl.ac.uk/admin/webservice/documentation.php>
    -   add the `My LTI Tool` user as an authorised user of the service
6.  Create an access token for the `My LTI Tool` user (an IP restriction can also be added here if desired) (see `Site administration | Plugins | Web services | Manage tokens`)
7.  Add the token and url to the LTI to the 'custom parameters' fields
    1.  moodle.url=[https:moodlesite.ucl.ac.uk](https://39.preview-moodle.ucl.ac.uk)
        moodle.token= 'step 6'
8.  Check the web service is accessible externally, example

curl "[https://**enter moodle site**/webservice/rest/server.php?wstoken=**enter token here**&wsfunction=core\_enrol\_get\_enrolled\_users&courseid=2](https://39.preview-moodle.ucl.ac.uk/webservice/rest/server.php?wstoken=456a7f2bc6056a18c30f04cc801986fa&wsfunction=core_enrol_get_enrolled_users&courseid=2)"
