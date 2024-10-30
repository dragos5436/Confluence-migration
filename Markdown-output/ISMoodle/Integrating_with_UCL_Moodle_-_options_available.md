# Integrating with UCL Moodle - options available

<img src="plugins/servlet/twitterEmojiRedirector" title="warning" alt="warning" class="emoticon emoticon-26a0" /> Significant change to Moodle Webservices is planned for Moodle 4.4 (April 2024) <https://tracker.moodle.org/browse/MDL-76834> / <https://moodledev.io/general/community/meetings/202311> 

It may be best to wait until August 2024 (ballpark when UCL Moodle is likely to be upgraded) to go live with or acknowledge the need to refactor if this cannot wait.

1) Moodle Web Services - existing functions

Use an existing web service in Moodle to get the data required

<https://moodledev.io/docs/apis/subsystems/external>

<https://docs.moodle.org/dev/Web_service_API_functions>

The up to date and complete API documentation for UCL's Moodle is only available to Site Administrators at your.moodle.site/admin/webservice/documentation.php

To facilitate integration testing the Moodle (VLE) team can spin up a Moodle Preview instance with no data / fake data for you to explore the existing integration capabilities available.

Once requirements for this have confirmed to be met & integration developed, this can be validated with real data but only as a final step before go live.

2) Moodle Web Services - new functions

If data required is not available via 1) additional web service functions can be developed. If this is data specific to a specific Moodle plugin's data, then we should seek to submit this to the relevant plugin's repo / upstream maintainer as per our upstreaming policy. The web service  should be using Moodle code functions rather than specific database queries to ensure this is future proofed.

As a last resort, web service functions can be exposed in a separate Moodle plugin just for this purpose.

If this path seems a likely outcome, then please discuss with VLE team about this as early as possible.

3) SNS/SQS Message Queues

We welcome integrations making use of asynchronous messaging queues.

This will require us to develop the message producer and/or consumer code so please let Alistair know about your requirements (preferably 6 weeks before TI planning at the latest).

4) LTI

This is more for making new activities available in Moodle rather than for raw data, but is worth highlighting:

<https://www.imsglobal.org/activity/learning-tools-interoperability>

5) Snowflake - tbc - unlikely to be implemented

Moodle database tables can be fed from Moodle into Snowflake for processing in the Data Warehouse.

Exploratory work in this area is continuing but not yet taken into operation, serious concerns have been identified with this approach which will need to be resolved. It is not recommended to rely on this option being available for any time sensitive requirements.

5) No-go options:

We will not entertain any integrations using the following approach:

-   Database layer integrations
-   file based dumps on FTP/ SFTP/network shares

