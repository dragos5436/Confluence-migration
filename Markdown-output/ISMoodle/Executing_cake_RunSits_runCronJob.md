# Executing cake RunSits runCronJob

Process involves generating a shell script which interacts with all relevant databases, creates new data & generates a moodle xml output file

**1: Execute the script**

Access Sits\_Filter\_2/app/ and execute “cake RunSits RunCronJob”

This generates the following events:

** 2: Add new data**

-   Connect to the sisds & moodle\_dev\_262\_sf2 databases (line 20 initialises all relevant models to be used)
-   Access the Portico views & update the following tables with new data:
    -   Check for new Faculty records (line 66)
    -   Check for new Department records (line 70)
    -   Check for new Programme records (line 74)
    -   Check for new Module records (line 82)
    -   Check for new Course records (line 86)
    -   Check for new Assignment records (91)
    -   Check for new Membership records (line 94)
    -   Check for new Student records (98)

** **

**3: Generate Moodle XML export data**

-   Access moodle\_dev\_262\_sf2 database
    -   Line 102 - getMoodleXMLExport()
    -   Read data from moodle\_course\_and\_module (line 120)
    -   Get  all moodle course records that have been updated within the last 24 hours – i.e : their moodle\_export state being set to mapped or unmapped (line 120 -128)
    -   If any records are retrieved, retrieve moodle course data, module & student data for each moodle course & add the record to the moodle export xml file
    -   Retrieve the moodle xml output path & create  the  xml file (line 170)

