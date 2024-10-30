# moodle - campus pack integration

    ## Moodle Integration
    Guide: http://help.campuspack.net/Groups/Documentation/Integration_Guide_Directory#/page/265155662
    Plugin download: http://help.campuspack.net/Groups/Downloads/Campus_Pack_Connector_for_Moodle#/page/165183212
    Includes the following:-
    blocks/cpfusion
    mod/cpblog
    mod/cpcontentitem
    mod/cppodcast
    mod/cpprivatejournal
    mod/cpwiki

    ## Campus Pack test domain
    Test URL:    https://ucl-ac-uk-test.campuspack.eu/
    Admin Login: j.norton@ucl.ac.uk
    Admin PW:    <KeePass>

    ## Moodle connector config
    Connector ID:      ucl-moodle-test
    Shared Secret Key: ee564768b607cabe467b6adb8eb420f4c854e6fa

    ### Handy links
    Diagnostics:     https://v26-ioe.moodle-test.ucl.ac.uk/blocks/cpfusion/cpf_diagnostics.php
    Settings:        https://v26-ioe.moodle-test.ucl.ac.uk/admin/upgradesettings.php
    Test connection: https://v26-ioe.moodle-test.ucl.ac.uk/blocks/cpfusion/test_connection.php

    ### New Settings - Campus Pack
    System ID: ucl-moodle-test
    (Default: Empty)
    campuspack_server_id

    Shared Secret Key: ee564768b607cabe467b6adb8eb420f4c854e6fa
    (Default: Empty)
    campuspack_hmac_key

    OAuth ID: [Leave blank - only required for CP => VLE SSO]
    (Default: Empty)
    campuspack_oauth_id
    Used with SSO portlet in Campus Pack. Leave blank otherwise.

    OAuth Secret Key: [Leave blank - only required for CP => VLE SSO]
    (Default: Empty)
    campuspack_oauth_key

    Campus Pack URL: 
    (Default: Empty)
    campuspack_server_url
     
    Campus Pack Server Communication URL:
    (Default: Empty)
    campuspack_server_communication_url
    Used with Amazon Elastic Cloud. Leave blank otherwise.

    Auto Roster Sync: Yes
    (Default: Yes)
    campuspack_auto_roster_sync

    Sync User Limit:
    (Default: Empty)
    campuspack_auto_sync_users
    Leave this blank for no limit

    Available Content Types: 
    (Default: Empty)
    campuspack_content_types
    Do not edit this without consulting Learning Objects. Options:cpblog,cpwiki,cppodcast,cpprivatejournal,cpcontentitem

     
    ## Additional notes
    The Campus Pack server (hosted on AWS) will need to connect back to Moodle, so for locked-down (Dev, UAT, Test, ...) environments,
    we'll need Moodle to be accessible on ports 80 and 443 from the appropriate IP address. See: https://www.ucl.ac.uk/isd/dcs/lob/ticket/8786 (see attachment below).

[<img src="rest/documentConversion/latest/conversion/thumbnail/56500543/1" height="250" />](/download/attachments/56500513/Trac_DCS_LOB%238786.pdf?version=1&modificationDate=1440433625000&api=v2)

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Trac\_DCS\_LOB\#8786.pdf](attachments/56500513/56500543.pdf) (application/pdf)

