# Docker Security

It's very important that as we shift to containerisation our security posture improves rather than gets worse. To that end, this page outlines key things to check before going live with a containerised service.

## **I\] Base Image**

When was the base image last built?

Is it still supported?

e.g. these tags have not been built in the last 3 years and shouldn't be used - <https://hub.docker.com/_/tomcat?tab=tags&page=1&name=alpine>

Does it have any critical or high flaws reported?

e.g. <https://snyk.io/test/docker/tomcat%3A8.5.41-alpine>

## **II\] X-Ray **

Have a look at the X-Ray scan for your image (assuming you are using artifactory as your docker hub)

You can see latest builds via <https://artifact-repository.automation.ucl.ac.uk/ui/builds> and then clicking on that build & then on the "X-ray Data" tab.

e.g. this should get you a report like this - <https://artifact-repository.automation.ucl.ac.uk/ui/builds/core-teaching-platforms%20::%20opinio%20::%20opinio-cicd%20::%20jdk11/4/1642169603012/xrayData/opinio:fc5ef12709-5a96757?buildRepo=artifactory-build-info>

This seems more likely to catch issues with your code than the docker image itself but definitely worth dealing with Critical & High issues promptly nonetheless.

## **III\]  Dependencies all up to date?**

Are all of your applications' dependencies up to date? (e.g PHP, Apache, Tomcat, Java, JDK, MySQL, MySQL connector,...)

If not on the latest version for compatibility reason. Make sure to at least be on a currently supported version & to add stories to the technical backlog about migrating to higher versions of said dependencies with dates of these going End of Life (EOL) by which time the story needs to be addressed.

e.g.

<https://www.php.net/supported-versions.php>

<https://endoflife.date/java>

<https://endoflife.date/mysql>

<https://www.versio.io/product-release-end-of-life-eol-Tomcat-Apache.html>


