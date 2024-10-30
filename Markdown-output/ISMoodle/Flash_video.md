# Flash video

See also

-   Moodle and Multimedia Working Group
-   <http://wiki.ucl.ac.uk/display/ISWebApps/brainstorming+for+elearning+and+multimedia+type+services>

Moodle users wanted a way to embed flash video in to their course. 

Maurice Brown has written some scripts at <https://www.ucl.ac.uk/moodle-video/> to allow a user to Select a video which then generates the html code which can be copied and pasted in to a web page. It is currently stored on the central UCL web servers and is password protected with an .htaccess file. This has two issues:

-   that all users can login and see all available videos - videos are not restricted on a per user basis so that individual videos can only be seen by their owners
-   users wishing to view the videos have to login to moodle, but are then prompted to login a second time to get through the .htaccess protection

We have been looking at how this script can be integrated in to the Moodle servers.

This web page can be added to a Moodle course so that the video is displayed in the course. The script was modified to force users to log in to moodle and allow only users with the capability of editing that course to view the script. The scripts is currently being tested on wasdev-a. The url to the script is <http://moodle-dev.ucl.ac.uk/video/index.php> but the id of the course must be passed in the url eg.<http://moodle-dev.ucl.ac.uk/video/?id=2450>

video/index.php has been designed to be accessed from within the moodle course so that the course id is passed. To set this up:

-   In a moodle course, turn editing on.
-   Add a new Resource
-   Select 'Link to a file or web page'
-   Type a name for the site in the Name box. eg. 'Video site'
-   Type the url of the site into the location box. (At the moment this is <http://wasdev-a.ucl-0.ucl.ac.uk/video> but it will be <http://moodle.ucl.ac.uk/video> if it is installed on moodle live)
-   In the Parameters section click 'Show Advanced'
-   In the variable name box type 'id' and select 'Course - id' from the drop down box.
-   In the Common module settings box select 'Hide' from the 'Visible' drop down box. This ensures that students don't see the link
-   Click 'Save and return to course'

If a user tries to access the video site outside of Moodle, the course id must be specified as a parameter in the url. eg. /video?id=2450. They will then be prompted to login in to Moodle and then redirected to the video site if they have the capability to edit the course. (ie tutor or administrator). If they don't have this capability then they will get an error message. I have removed the display of variables at the top of the page but you can see how they are assigned by looking in the script. I have removed the .htaccess file from the videos directory on wasdev-a as only logged in moodle users will be able to access it.
