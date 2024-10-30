# Change Deployment plan for Learning Apps

## I\] Plan change

a) Prepare and test change

b) Decide whether App servers will need to go offline, if so Contact Platform Integration (PI) and request for their availability to put redirects in place on the F5s. This needs to be requested at least 2 weeks in advance.

## **II\] Notify Digi-Ed**

Send a calendar invite to ele-core@ucl.ac.uk and rde.learning@ucl.ac.uk with the time and date of the outage as soon as aware of it. Set the title as "TBC: outage" and provide details of what will be changed.

If this is a feature release, also include de-advisory@ucl.ac.uk with details of the features.

## **III\]Submit CR and get it approved**

a) Submit Change Request through Remedy Force (Use CR00005578 as a template for rollout, testing & comms plans)

b) Go to CAB

## **IV\]Once approved, notifiy Digi-Ed, request ISD News item and setup Outage manager warning**

a) Update the title of the calendar invite and set it to "CONFIRMED CRXXXXXXXX: &lt;Service affected&gt; outage"

b) Email ISD WebComms on <isd-webcomms@ucl.ac.uk>- requesting for an ISD News item to be created based on the usual format  e.g. <https://www.ucl.ac.uk/isd/news/2019/oct/moodle-1920-scheduled-maintenance-14-october-2019-9-10pm>

c) Add an outage <https://moodle.ucl.ac.uk/auth/outage/manage.php> with a warning duration of 30 minutes for the scheduled outage date & time.

## **V\] Setup the redirect during Maintenance to use ISD News Item **

a) Edit .htacess-maint redirect to use the relevant ISD News Item

b) If maintenance requires app servers to go offline, then PI will need to be online to apply the redirect on the F5s - make sure to provide the link(s) and the URL of the service(s) affected


