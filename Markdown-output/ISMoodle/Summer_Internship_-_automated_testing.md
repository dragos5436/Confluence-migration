# Summer Internship - automated testing

## Background info

Following a 'UCL wide' initiative, LTA has seen the opportunity to use a summer intern to carry out some work on continuous deployment and automated testing.

More details are in the email correspondence.

 

**Overview of week 1** 11 Jul 2016 to 15 Jul 2016 

Tudor (the summer intern) has been settling in.

Getting card access to the building, a desk, desktop computer and 'hooking up' his laptop computer.

We have progressively given him access to some of the resources he needs:

- wiki space

- git repositories

- servers

- possibly, Jenkins CI server

Access to resources is an ongoing process and more will be done as or when needed.

During that time, Tudor has created and started working on, a sandbox environment, on his own laptop.

In his sandbox, he has installed Moodle with Behat and has been able to run the automated tests that come bundled with Moodle.

Most of the work will be done on 'LTA's dev stack'; we've doubled checked Tudor had, on his laptop, a couple of software that will help him carry out the work (terminal emulator, editor, etc.).

He has also installed the Cisco VPN client and can now 'ssh' into the servers.

 

Tudor has started setting up Behat on moodle-dev with the aims of creating tests scripts to automate the tests Digi Ed does on PP before each [upgrade](https://wiki.ucl.ac.uk/display/ISLTSS/Moodle+3.1+Testing+-+Pre+upgrade).

He is still working on having Behat working on moodle-dev.

 

## Aims and objectives

The general aim is to set up acceptance tests on moodle-dev, uat and pp. As well as develop a test suite that can be used to validate updates/upgrades.

**Objectives are as follow:**

Sep up/configure Behat components, in order to carry out acceptance testing, on moodle-dev

Develop test scenarios that mimic the tests carried out by Digi Ed

A 'command line' test suite as well as a 'Web browser (@JavaScript)'  test suite will be developed.

Document what has been done and how to run the tests.

Automate the use of the test suite.

Replicate configuration changes, for acceptance testing, on moodle-uat and then pp.

Run the test on UAT and then PP.

## Timeline

By  the end of week 3

A couple of test scenarios will have been written and will be usable on moodle-dev

Documentation about the work done on moodle-dev, how to use/run the tests and what the tests do will have been written.

By the end of week 6

All tests will have been written and the documentation will be up to date.

Tests will be usable on moodle-uat and pp.

 

**More to come for the full 12 weeks; watch this space...**

## Demo

By the end of week 3, Tudor will give a demonstration of running some tests on moodle-dev

## Documentation

All work carried out is to be documented.

The documentation will be in the form of wiki pages; scripts/code will be committed to a git repository; this will referenced in the documentation.

Documentation about:

- what has been done on the server to set up Behat

- where the tests are and how to run them

- what the test do and how to create new ones

- if some automation is in place, what has been done and how to use it

## Possible further work

Carry on the work that has been done with C.I.:

-   automating moving database content from live/prod to other instances
-   automating deletion of unused resources
-   automating the creation of  Moodle instances

Creating JMeter testing scripts/plans

 
