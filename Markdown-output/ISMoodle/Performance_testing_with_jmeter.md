# Performance testing with jmeter

An easy way to create test plans for load testing moodle with jmeter is to use the [JMeter LoadTesting script generator](https://github.com/kabalin/moodle-jmeter-script-generator) plugin

## Installing the Jmeter LoadTesting plugin

Download the zip file, extract it and copy directory content to report/loadtesting directory

You also need to install jmeter on your own machine. Download it from <http://jmeter.apache.org/download_jmeter.cgi> and install it on your machine

## Setting up courses for load testing

In order to be able to run the test plan using the trail user accounts, the trail accounts must be enrolled in the courses you want to use for load testing. The easiest way to do that is to create a new category called 'performance testing' and add 4 courses.

Rod - Quiz test course course id=20807

An elf's lair - 21531

13-14 ANTHGD22: Anthropology of Ethics and Morality - 24927
Moodle Testing - 15138

Make sure that the courses are available to students

For each of the 4 courses enrol trail01 to trail10 (10 students)

Make sure that all quizes are still open and that extra attempts do not require a password

Make sure that forums are open

Once you've checked the courses to allow access to all the resources for the 10 trail accounts, you're ready to generate the load testing script.

## Creating the load testing scripts

Go to Site admin &gt; Reports &gt; JMeter loadtesting

In the category drop down select performance testing and click select category

Don't tick 'Generate user accounts'

How many users to test with = 10

How many times to loop the tests = 1

Don't select to test all forums because the students do not have permissions to post to the news forums

Select 'Generate tests' and save file when prompted.

This will generate a jmeter zip file containing a script and a csv file. Open the csv file and replace the 10 testaccount names with trail01 to trail10. Set the correct password for each of the 10 trail accounts and save the file.

Copy the csv file and the script to the bin/examples folder of the jmeter application that you installed on your pc.

Run the Load test

To start JMeter, double click the jmeter.bat file in the bin directory of your jmeter application. Mine is installed in C:\\Users\\ccaajoa\\Downloads\\apache-jmeter-2.9\\apache-jmeter-2.9\\apache-jmeter-2.9\\bin

## References

<http://docs.moodle.org/23/en/Performance_settings>

<http://www.iteachwithmoodle.com/2012/10/13/how-to-load-test-your-moodle-server-using-jmeter/>
