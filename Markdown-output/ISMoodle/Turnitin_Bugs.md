# Turnitin Bugs

Are you looking for this page? [Turnitin workarounds and fixes](https://wiki.ucl.ac.uk/display/ISLTSS/Turnitin+workarounds+and+fixes)

## Problem 1

After deleting the "Jo Matthews Test Course" class in Turnitin I now get this error message every time I create an assignment in this course.

Warning

**Insert Error**
Assignment does not exist in Turnitin database for this class. The assignment may have been deleted.

This is the response from nLearning regarding the above:

This is related to deleting the class in turnitin. If you take a 'virgin' Moodle class the turnitintool takes a look in the mdl\_turnitintool\_courses table and looks to see if the course has previously been related to a turnitin class. If the course has not been linked to a turnitin class when the turnitin class is set up it returns a class id. I store this class id in the database which means for future calls I can be assured that I am using the correct class. I use the turnitin class id as I can rely on it being unique and in the case where a course name is changed in Moodle the turnitin class name can be changed accordingly. What has happened is when you deleted the class from Turnitin the Turnitin class ID remains in the Moodle database meaning the moodle plugin is trying to connect to a class that does not exist. This is an issue I will need to consider as I can not stop users deleting classes, assignments or anything else from within Turnitin.

## Problem 2 (now resolved)

Tried creating an assignment in Matts course and received this error message:

Warning

There was a problem entering Part 1 into the database (lib.php | 98)

 Not sure if this is associated with my login so will get Pete to try adding an assignment to Matt's course. I emailed Paul Dawson at Turnitin on 03/06/09. When Pete logged in and tried to create an assignment in Matt's course he got the same error. This is actually caused by the same bug that produces problem 3. The problem is caused by a call to a non existant function in lib.php L3947:

$\_I60LJ=(object) array\_map('turnitintool\_replace\_quote', (array)$\_I60LJ);$\_I60LJ=(object) array\_map('turnitintool\_replace\_quote', (array)$\_I60LJ);

The call to the array\_map function requires that the first parameter be a function but the function  turnitintool\_replace\_quote doesn't exist anywhere. If I comment out the line the assignment gets created in moodle but Pete can't see it when he logs in to turnitin. Will ask Matt if he can see it.

## Problem 3 (Now resolved)

Added Pete as a tutor to my course - "Jo Matthews Test Course". He tried to create an assignment and the following error was displayed:

Could not update user data (lib.php | 465) 

I have emailed the problem to Paul Dawson (see below)

email to Paul Dawson(nLearning) 3/6/09

Hi Paul,
I've found another problem but hopefully not too difficult to fix.
A user who hadn't previously created an assignment tried to create a new assignment in moodle. When they clicked Save the following error was displayed:
Could not update user data (lib.php | 465)
I hope you don't mind but I had a poke around and think that the problem is in the turnitin\_insert\_record() function where it calls the array\_map function. From what I've read (never used it myself) the first parameter needs to be a function. 'turnitintool\_replace\_quote' is the first param but I can't seem to find this function anywhere.

email from Paul Dawson 3/6/09

Hi Jo,
Thanks for bringing these issues to my attention. The function 'turnitintool\_replace\_quote' is within lib.php line 4594 so that shouldn't be the issue. I think most of the issues are to do with database connections. Can you tell me your exact setup i.e. Database type and version etc so I can set up an environment like yours. I am testing using LAMP and WAMP environments here but if you are not using MySQL that could be the issue. I will need to set up a separate environment to test with databases other than MySQL.

email from Jo 3/6/09

That's really odd, my turnitintools/lib.php only has 4390 lines!

email from Paul Dawson 3/6/09

Sorry Jo,
My mistake, I was referring to the original source code. The code you have has been partially obfuscated. I have had a quick look and the function does appear to be missing. I will create a new version and retest it and resend you a new version. You are right the lib.php file is only 4390 lines long.
Thanks

email from Paul Dawson 3/6/09

Hi,
It has been brought to my attention that there was a major bug in the database communication functions causing database calls to fail. I have attached a revised version of the plug-in to this email. Please uninstall previous versions and replace the 'turnitintool' folder with the one in this zip archive.

email from Paul Dawson 3/6/09

Hi Jo,
My apologies for my previous assumptions that the problems were with your database set-up. I have released a new version of the plug in. The problem was indeed the problem you spotted being that the function 'turnitintool\_replace\_quote' was indeed missing, in fact the function name itself had been obfuscated.
Thanks again for your input and help with testing the alpha.

## Problem 4 (Now resolved)

After installing turnitin on moodle-dev

Tried to create an assignment in "Joanne Matthews' Test Course" <http://moodle-dev.ucl.ac.uk/course/view.php?id=541> but the following error was displayed and the assignment was not created in moodle or turnitin.

**Fatal error**: Call to undefined function bcmod() in **/data/apache/htdocs/moodle/mod/turnitintool/lib.php** on line **3296**

bcmod is a function in bcmath.php but we don't have it installed on our linux servers (it's not enabled by default) so it will need to be enable. I'll need to get systems to do it.

email to Paul Dawson 4/6/09

Hi Paul,
Thanks for the latest release it seems to be working fine on the windows installation however
I installed turnitintools on another moodle installation hosted on a Linux server and am now getting this error:
Fatal error: Call to undefined function bcmod() in /data/apache/htdocs/moodle/mod/turnitintool/lib.php on line 3296
I realise that this is because we don't have have the bcmath extension installed and I don't think it's installed by default so might be worth mentioning it in the instructions. Previously I'd been testing it on  a Windows version of PHP which has built-in support for this extension. I will need to get our systems team to enable it before testing it further on the new installation

email from Paul Dawson 5/6/09

Thanks Jo,

I had believed it was installed as default. My intention is to have as few non standard extensions required as possible. cURL is necessary due to the communications but I will look into where I have utilised the bcmod extension and see if I can program it out of the plug-in.

Northumbria learning released a new version that doesn't rely on the bcmath extension. It has now been installed on moodle-dev (v1.9.3) on 07/07/09

## Problem 5. Debugging info writing to a non writable folder (Resolved by ucl-specific hack thanks to PR)

When tii was installed on <http://moodle-dev-195.ucl.ac.uk/> it was discovered that the debugging info was being written to a folder that was not writable. This was resolved by creating a folder called turnitin\_debug\_logs under course 1 on
moodle-dev-195 - so it can be accessed by LTSS via the front page site
files option.

Code change in lib.php were:

// $\_Iio6j=$CFG-&gt;dirroot."/mod/turnitintool/logs/";
$\_Iio6j=$CFG-&gt;dataroot ."/1/turnitin\_debug\_logs/";

and

//
$\_IOOI0=$CFG-&gt;dirroot."/mod/turnitintool/logs/".$\_IiO6C.date('Ymd',time()).".log";
$\_IOOI0=$CFG-&gt;dataroot
."/1/turnitin\_debug\_logs/".$\_IiO6C.date('Ymd',time()).".log";

nLearning have been informed but the fix has not yet been implemented in to the latest beta release.

## Problem 6.

Insert error

Assignment does not exist in Turnitin database for this class. The assignment may have been deleted.

see the attached [document](attachments/9802127/10486640.doc) for more specific information.

This is the response from nLearning regarding the bug:&gt;

email to Paul Dawson(nLearning) 25/08/09

Paul Dawson wrote:
&gt;&gt; Hi Jo,
&gt;&gt;
&gt;&gt; Thanks for you email. I did get that last email, sorry for not
&gt;&gt; replying earlier and also explaining the bug.
&gt;&gt;
&gt;&gt; The error has been tracked down to a latency issue in the API between
&gt;&gt; the data being pushed the reporting xml returned and then the
&gt;&gt; database being populated. This was resulting in update calls being
&gt;&gt; rejected as it was using data that had not yet been fully populated.
&gt;&gt; iParadigms, the producers of Turnitin, have been made aware of this
&gt;&gt; bug and I am waiting for a fix. I have added a small delay in my code
&gt;&gt; which compensates for the latency delay but it isn't perfect by any
&gt;&gt; means. It does mean for the most part the calls still work and I have
&gt;&gt; yet to see any more errors, however I am not confident that the
&gt;&gt; integration is stable enough for a stable release yet.
&gt;&gt;
&gt;&gt; I will be sending my testers a new beta release at some point today
&gt;&gt; (your copy is attached) which contains the latency compensation patch
&gt;&gt; and a number of other fixes.
&gt;&gt;
&gt;&gt; In the mean time I am going to use the extra time to add some missing
&gt;&gt; features that other testers have reported as being missing currently
&gt;&gt; such as support for groups, calendar entries and events.

The latest version (Turnitin Moodle Beta Release 2009082001) has been installed on <http://moodle-dev-195.ucl.ac.uk/>

## Problem 7 (Resolved with a UCL hack)

can't create any assignments in the course which gave the error when we tried to create the assignment. The error is "More than one class exists with this title and unique ids must be used in this case

This error is occurring when creating assignments for any course that was giving the error in problem 6. I managed to resolve this by deleting the records in mdl\_turnitin\_course for the id of the course.

NB if there are no submissions to the assignment a 'front end' fix is to shorten the name of the course (around 10chars using odd characers to prevent duplication e.g xxx at the begining to make unique) reset the course (**selecting only the Turnitin Assignment to be reset**) - once this has been done rename course back to original - this seems to clear the problem.

## Problem 8 (Resolved with a UCL hack)

Illegal mix of collations for operation 'UNION'

(SELECT concat('nm',submission\_nmuserid) userid,submission\_nmfirstname
firstname,submission\_nmlastname lastname,AVG(submission\_score)
avscore,AVG(submission\_grade) avgrade,MAX(submission\_modified)
lastdate,MIN(submission\_modified) firstdate,1 nonmoodle FROM
mdl\_turnitintool\_submissions WHERE userid=0 AND turnitintoolid=123 GROUP BY
submission\_nmuserid) UNION (SELECT s.userid userid,u.firstname
firstname,u.lastname lastname,AVG(s.submission\_score)
avscore,AVG(submission\_grade) avgrade,MAX(s.submission\_modified)
lastdate,MIN(s.submission\_modified) firstdate,0 nonmoodle FROM
mdl\_turnitintool\_submissions s JOIN mdl\_user u ON u.id=s.userid WHERE
s.userid!=0 AND s.turnitintoolid=123 GROUP BY userid) ORDER BY ABS(avscore)
DESC,lastname ASC

-   line 686 of lib/dmllib.php: call to debugging()
-   line 966 of lib/dmllib.php: call to get\_recordset\_sql()
-   line 3512 of mod/turnitintool/lib.php: call to get\_records\_sql()
-   line 1572 of mod/turnitintool/lib.php: call to
    turnitintool\_get\_records\_sql()
-   line 224 of mod/turnitintool/view.php: call to
    turnitintool\_view\_all\_submissions()

I resolved this by changing the collation type of mdl\_turnitintool\_submissions to same type as mdl\_user.

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [turnitinerror12aug.doc](attachments/9802127/10486640.doc) (application/msword)

