# Moodle Continuous Integration

Research done by Nivedita

## Purpose of Continuous Integration /deployment automation

-   Resources required to deploy application manually(FTP) onto dev and uat servers is much more than expected

-   Maintaining codebase for each instance/version of moodle on all servers is time consuming

-   Database restore process takes around 4 hours +

-   There are around 10 manual steps involved in deploying applications

-   Deployment on live servers over 3-4 different web app servers is time consuming( 40 minutes+)

-   Most of the processes are manual.

-   No unit testing performed for any Moodle instances on any environment(dev,uat or live)

## CI Tool

-   Popular CI tools
    1) TeamCity - <https://www.jetbrains.com/teamcity/>
    2) Cruisecontrol (phpundercontrol as add-on) - <http://cruisecontrol.sourceforge.net/>
    3) Jenkins - <http://jenkins-ci.org/>

<!-- -->

-   Which one could be ideal for our requirement
    Jenkins

<!-- -->

-   Jenkins (<http://jenkins-ci.org/>)
    Use Jenkins as CI server.
    For PHP projects <http://jenkins-php.org/>
-   **Why Jenkins?**

1) Jenkins is a fully extendable application that monitors executions of repeated jobs. Results are displayed via a web application. Jenkins is an information hub to provide Moodle with continuous feedback about the quality of Moodle software. Jenkins can monitor any/multiple GIT/SVN repository for changes without adding hooks to the code and be used to run a set of tasks such as:

-   Pull git/svn
-   Run unit tests
-   Create a Moodle site
-   Add some information to it
-   Run the tests
-   Report errors/warnings/failures

2) Moodle([moodle.org](http://moodle.org)) currently use Jenkins for their CI. The success and failure of builds stats can be accessed here - <http://integration.moodle.org/>

## Software/Hardware Requirements

-   How many servers?
    Typically configuration is one server (master) to run the Jenkins itself and another server(slave) to run rest of processes which could be checkout, deploy, unit testing etc. But, to start with I would to run everything on one server as proof of concept. This server needs to be powerful enough to run both tasks.

<!-- -->

-   What spec for each server, eg
    -- 4 Virtual CPU
    -- 6-8GB RAM
    -- 500GB-1TB Storage

<https://wiki.cloudbees.com/bin/view/Jenkins+Enterprise/Jenkins+Disk+Space>
<https://wiki.cloudbees.com/bin/view/Jenkins+Enterprise/HardwareRequirementsForJenkins>

-   What OS, and any other middleware, you'll want on the server
    Typically want them to have the same OS as Moodle release platforms. I'm not aware of Moodle server OS

*Notes:*

*<https://www.cloudbees.com/event/topic/red-hat-jenkins-numbers>*
*<https://github.com/moodlehq/moodle-local_ci/blob/master/initial_jenkins_moodle_setup/initial_jenkins_moodle_setup.sh>*
*<http://weavora.com/blog/2014/02/20/guide-continuous-integration-teamcity-behat/>*

---End of Research---

 

# Work done on CI project by Delvon

## GITLAB

-   If your project in gitlab is setup as a private project then access must be granted explicitly for each user, which includes the DCS git user which has access from Jenkins jobs to gitlab repos. If it is internal then the DCS git user still needs to be added as a member for communication between Jenkins and gitlab.
    &gt;&gt; This can be added under settings &gt;&gt; Members for the project \[which is the repository being used in gitlab\].

<!-- -->

-   You first need to create your repo and push the original moodle code to this repo.

<!-- -->

-   Please also ensure that config.php and local\_settings.php are also added to the repository.

<!-- -->

-   \*\*The .gitignore file on the master branch needs to not exclude config.php because it is only used to point to the local\_settings.php where the database, wwwroot and dataroot etc. are. So ensure that that line for git to ignore config.php is commented out.
-   The repo that was used on gitlab for the CI project test is <git@git.dcs.ucl.ac.uk>:cceadfo/cidev.git. 

## &lt;&lt;&lt;Lessons learned&gt;&gt;&gt;

1. Once you have initially pushed your original code from a server to your repo on gitlab in the master branch and a Jenkins job is used to pull and push to this repo, please refrain from making changes outside of Jenkins as this can cause an unknown error with Jenkins looking for previous revisions and not able to find it. I had one particular experience where the master branch was re-based and that cause errors with Jenkins, with the jobs failing.

## JENKINS

-   The Jenkins Continuous Integration is being done for dev in order to test that we can get the functionalities that we want to work.

<!-- -->

-   It is done as two Jenkins jobs.

<!-- -->

-   The url for the Jenkins job is <https://jenkins.dcs.ucl.ac.uk>

<!-- -->

-   The name of the job is Moodle\_CI which if successful will trigger Moodle\_CI\_2

<!-- -->

-   The jobs are created by the DCS team and are configured with project-based security where a user or group can be added.

<!-- -->

-   The first build (Moodle\_CI) is a parameterised build that currently holds three string parameters (moodle\_version, branch and ver).

<!-- -->

-   moodle\_version is the release version of Moodle that you want to clone from github (eg. v3.0.3).

<!-- -->

-   branch is the name of the moodle\_version but with the naming convention for the branch on gitlab (eg. moodle\_ucl\_2.8).

<!-- -->

-   ver is the version name for the codebase (eg. 303) which will become jv303 in the codebase and the url eg. ([https://jv303.moodle-dev.ucl.ac.uk](https://jv310.moodle-dev.ucl.ac.uk)).

<!-- -->

-   \* There was an attempt to use less parameters, however, there would be a need to use the shell command section of Jenkins to construct the parameters needed. For instance just setting a parameter for the release version (eg. 303) then adding this to vx.x.x to create the branch to be checked out from the Moodle clone. Also concatenating the parameter with moodle\_ucl\_x.x.x for the branch on gitlab. This could not work as Jenkins is not able to use parameters from the shell section within the other sections of Jenkins.

<!-- -->

-   \*\*One issue also is that you will have to know the release version of Moodle to put in the ver parameter. This can be found at <https://github.com/moodle/moodle/releases>.

<!-- -->

-   -For source code management we use git and add the gitlab repo and credentials, also in the advanced section of the repository, give the repo a random name and the refspec to indicate what branch to checkout. For eg:
    -   git@[git.dcs.ucl.ac.uk](http://git.dcs.ucl.ac.uk):cceadfo/cidev.git --- and select the credentials for the git user.
    -   In this case we name it main
    -   Refspec +refs/heads/master:refs/remotes/main/master ---so that only the master branch will be checked out in the Jenkins job. (The current active code in operation)

 

-   The Moodle public repo from which you want to clone the new version also needs to be added as another git repository without credentials. This also needs a random name and a refspec (eg. Name: moodle Refspec: +refs/tags/$moodle\_version:refs/remotes/moodle/tags/$moodle\_version) The $moodle\_version is the parameterized release version that will be entered before the run. This indicates to jenkins that only that tag from the Moodle clone will be built in the Jenkins job.

<!-- -->

-   In Branches to build we put the master branch from the main repo and $moodle\_version parameter and indicates to Jenkins that these are the jobs to be built.

<!-- -->

-   In additional behaviours we set the code to checkoout to a sub-directory.

<!-- -->

-   The Jenkins workspace is set to be deleted before the build starts.

<!-- -->

-   \*\*\*Screen grabs of the Jenkins job configuration is saved as a word file below for reference.

 

-   In the execute shell section the script does a number of things:

1. using the ver parameter to construct the name of the symlink directory for the codebase.

2. Master branch from the gitlab repo is checked out, then the moodle branch. The plugins etc. from the main repo is added to the Moodle branch and commited. 

a. The local\_settings.php and config.php is also checked out from the master branch

b. We use the inline stream editor sed to change the database (moodle\_dev\_jenkins\_$TODAY'SDATE), wwwroot ([https://jv303.moodle-dev.ucl.ac.uk](https://jv310.moodle-dev.ucl.ac.uk)) with jv303 being the ver parameter that was set; also we change the dataroot and the cachedir. We also check if the ucl theme is present in the theme directory and if so set the theme to ucl. All these are then commited and pushed to the new branchif the build is successful.

3. Rsync is used to copy over the files to the constructed directory on the dev server using a specific ssh key.

4. An ssh connection is then made to the dev server and a symlink is created with the constructed symlink name and points to the constructed dir path.

5. We also save the ver parameter (jv303) in a file on the workspace for the second moodle job to pick up and know what version we are dealing with.

 

-   Post-build actions have the Git publisher added where the build is pushed to the new branch to be created on the gitlab repo.

<!-- -->

-   The git push will only be done if the build was successful all the way through.

<!-- -->

-   The push is also forced to add the branch or merge it if there is a branch with the same name.

<!-- -->

-   For the test a new tag is also pushed to the repo but could have been an update to an existing tag.

<!-- -->

-   The Branch to push to and the random name given to the repo in the Jenkins configuration is also added to tell Jenkins the branch and repo we are dealing with.

<!-- -->

-   The moodle Jenkins job can be run by selecting Build with parameters manually from the Jenkins UI. You are then prompted to add the parameters discussed earlier and Jenkins will do the build and then report a success or failure with the blue icon depicting success and a red one depicting failure.

 

-   By clicking on the number of the build history you can view the console log to see the log of the build and the success or failure message.
    The second Jenkins job (Moodle\_CI\_2) which is triggered from the success of the first job (Moodle\_CI) creates the database using today's date appended to 'moodle\_dev\_jenkins\_' if it is not already created on the Moodle-dev server.

 

-   \*\*--\*\*TODO - If the database exists then append a string to it and make that database the one to be used in the build.

<!-- -->

-   The second job also creates the moodle data and cache folders if not yet done. These are the dataroot and cachedir in the local\_settings.php file respectively, using the ver parameter that is read in from the workspace of the first build (jv303).

<!-- -->

-   The second job also installs moodle from the command line with some default parameters. Instead of admin/cli/install.php, we use admin/cli/install\_database.php because we already have a config.php file and this is how it is run from cli.
    Once both jobs have be run successfully, you can enter the url that corresponds to the version you are dealing with and should get an instance of moodle in your browser eg.([https://jv303.moodle-dev.ucl.ac.uk](https://jv310.moodle-dev.ucl.ac.uk)), that is if your ver parameter was 303.

 

-   ++ As can be seen, this was just a proof of concept and time did not allow for all of the concepts to be proven. Getting the sqldump from moodle-db-a(live db) to dev to create the database was not done. We just created a new database. We do have scripts with this action but never had the time to include this in the build.

<!-- -->

-   ++ There is also talk of separating the builds for specific tasks so they can be used as such and also add another three builds for the complete process.

**Execute Shell code for Jenkins job 1 (Moodle\_CI)**

``` bash
cd CI_DEV
NOW=$(date +"%Y%m%d")
c=$ver
a=${c:0:1}
b=${c:1}
devpath="jv"$c"_moodle_ucl-dev"
symlink="jv"$c
git checkout master
git checkout $moodle_version
sed -i '/config.php/c\#/config.php' .gitignore
git checkout master theme/ucl local/ report/myfeedback mod/aspirelist mod/attendance mod/certificate mod/choicegroup mod/hotpot mod/hotquestion mod/hsuforum mod/questionnaire mod/scheduler mod/turnitintooltwo local_settings.php config.php
sed -i '/$LS->dbname/c\$LS->dbname = "moodle_dev_jenkins_'$NOW'";' local_settings.php
sed -i '/$LS->wwwroot/c\$LS->wwwroot = "https://'$symlink'.moodle-dev.ucl.ac.uk";' local_settings.php
sed -i '/$LS->dataroot/c\$LS->dataroot = "/data/moodle/'$symlink'";' local_settings.php
sed -i '/$LS->cachedir/c\$LS->cachedir = "/data/moodle/cache_'$symlink'";' local_settings.php
if [ -d "theme/ucl" ]; then
  sed -i '/$CFG->directorypermissions/c\$CFG->directorypermissions = 02777;\n$CFG->theme = "ucl";' config.php
fi
git add .
git commit -m "Commiting code from the build of branch $moodle_version to gitlab branch $branch"
rsync -avz -e "ssh -i $HOME/.ssh/id_rsa-ccspmdl-moodle" * ccspmdd@moodle-dev.ucl.ac.uk:/data/apache/moodle-vhosts/$devpath
ssh ccspmdd@moodle-dev.ucl.ac.uk -i ~/.ssh/id_rsa-ccspmdl-moodle << EOF
cd /data/apache/moodle-vhosts
ln -s $devpath current
mv -T current $symlink
ls -al
EOF
cd $WORKSPACE
cat > version_file << EOTH
$symlink
EOTH
```

**Execute Shell code for Jenkins job 2 (Moodle\_CI\_2)**

``` bash
NOW=$(date +"%Y%m%d")
VER=$(head -n 1 $WORKSPACE/../Moodle_CI/version_file)
#read -r VER</home/ccspmdd/version_file
ssh ccspmdd@moodle-dev.ucl.ac.uk -i ~/.ssh/id_rsa-ccspmdl-moodle << EOF
echo "create database IF NOT EXISTS moodle_dev_jenkins_$NOW default character set utf8 collate utf8_unicode_ci;
show databases;" | mysql -umdluser_dev -pMdl@dev1
cd /data/moodle
if [ ! -d "$VER" ]; then
  mkdir $VER
fi
if [ ! -d "cache_$VER" ]; then
  mkdir cache_$VER
fi
cd /data/apache/moodle-vhosts/$VER
php admin/cli/install_database.php --lang=en --adminuser=admin --adminpass=Pass1234! --adminemail='admin@test.com' --agree-license --fullname='DEV - Continuous Integration' --shotname='CIDEV'
#rsync -avz /data/moodle/v2810/* /data/moodle/$VER
EOF
```

## File attached with the setup of Jenkins job 1 (Moodle\_CI)

[<img src="rest/documentConversion/latest/conversion/thumbnail/62655372/1" height="250" />](/download/attachments/62655341/Jenkins%20Moodle%20Job.docx?version=1&modificationDate=1465897915000&api=v2)

&gt;&gt; Jenkins job 2 (Moodle\_CI\_2) only has an Execute Shell section so no need to show setup here.

 

 

 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Jenkins Moodle Job.docx](attachments/62655341/62655372.docx) (application/vnd.openxmlformats-officedocument.wordprocessingml.document)

