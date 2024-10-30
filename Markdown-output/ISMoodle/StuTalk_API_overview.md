# StuTalk API overview

StuTalk consists of a number of components designed to enable integration between SITS and other applications. The two types of services StuTalk provides for integration are:

-   **Stu-Talk: Messaging (Publish & Subscribe)** - a trigger based "publish and subscribe" system that allows sending and receiving of "messages" (in XML or JSON format) to/from other systems. This aspect of StuTalk allows SITS:Vision to “push” or initiate data exchanges to other systems, and for messages to be received (via subscribe). This integration approach uses both the "Table Update Trigger" and "Data Exchange" components mentioned below.

-   **Stu-Talk: Web Services (Request & Response)** - this is the SITS:Vision web service provider that allows external systems to request services (via SOAP or HTTP/s) to be run in real time. Current services include the ability to get, create, update or delete data from within the SITS:Vision database, run processes and reports and generate and/or print "standard letters".

To facilitate the (messaging and web services) integration methods above, Stu-Talk relies on a number of system components:

-   **Table Trigger and Update (TUP - table update process)** - a tools that enables users to setup automatic triggering of follow-on actions and processes when data is changed in a database table by the SITS:Vision application, for example when a student enrolment record is created. The actions performed by the TUP can be recorded in TUP Audit Report (TAR) records.

-   **Data Exchange** - these are a set of data exchange programs that allows the generation, transformation and consumption of data between standards-compliant formats like XML or JSON, and SITS:Vision specific data formats. As well as the programs used for transforming data, there are template tools (such as Exchange Templates (XET’s) that are used to specify the structure of data to be exports and retrieval/processing criteria for the records to be processed.

------------------------------------------------------------------------

As part of the course lifecycle PoC, one pub/sub process and a single web service have been created. The pub/sub process publishes changes made to SITS module occurrence records to Moodle, whilst the web services exposes staff records so that details of lead academics for a given module may be retrieved via a REST call.
