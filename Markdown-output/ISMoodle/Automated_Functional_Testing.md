# Automated Functional Testing

### Agree requirements for Automated testing tool (May 2017)

Overview

Testing needs to be done both before and after upgrades to Moodle as a matter of sign off. However, this is often a manual and time consuming process, so ways of automating this process are being developed to enable faster and more consistent testing and sign off.  

 

Requirements

The solution should enable rapid and consistent front-end testing.

The solutions should provide a report as an output, including verbose step by step print out from tests, any error messages displayed, and screenshots at key moments, including upon completion of test, and if any error is detected. ‘Key moments’ for screenshot capture will need to be defined clearly in original testing schema, most likely by Digital Education or LTA.

The solution should automatically send copies of completed reports and associated files to LTA and Digi-ed email addresses.

The solution should store copies of test reports and associated files in datestamped folders within a shared drive or online space.

The solution should at minimum allow for users to run tests by simple command line execution, without having to use java or other languages. The less technical operation is involved, the more desirable.

The solution should be fully documented, including step by step instructions on how to update required fields if needed.

 

Pre-requisites/Supporting work

The solution will require the creation of a standardised course where testing can occur each time, allowing for comparison of existing material and functionality post-upgrade.

The solution will require the allocation of specific test accounts so that tests can be run without affecting any other courses, or giving erroneous results based on unorthodox permissions.

The solution needs coding for each test, therefore LTA and Digi-Ed will need to carefully identify and prioritise tests to be automated, as only a limited amount can be done. The current approach would be to prioritise key functionality, as well as in-house hacks and developments, that cannot be previously tested by the Moodle community.  

 

Out of scope

The solution does not need to allow for performance or load testing, especially as tests are performed in different environments with different resources to live Moodle.
