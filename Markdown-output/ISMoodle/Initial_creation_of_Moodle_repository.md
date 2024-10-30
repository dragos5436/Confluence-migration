# Initial creation of Moodle repository

This page explains how the UCL Moodle repository - on gitlab - was created.

More comments and explanation will be added soon.

The aim was to have a repo with some common history with the Moodle repo on github.

The reason was to 'facilitate' future updates/upgrades of Moodle@UCL. When merging, git behaves better when there is a common history.

Git generally have problems auto-merging when one branch deletes a file and the other branch modifies the same file.

Anyway, without further ado...

At the time of writing, UCL was using Moodle v2.8.12

## In a nutshell:

 - we clone the Moodle 2.8.12 from the official repo, on github

 - we update the local repo with the code used at UCL; customised Moode

 - we commit and push

 

The full list of commands used are at the bottom.

## Details

We start by setting some constants. At the time of writing we were using Moodle 2.8.12

 

    TARGET_BRANCH="MOODLE_28_STABLE" # our current branch

    TARGET_TAG="v2.8.12" # our current tag

    MOODLE_REPO="https://github.com/moodle/moodle.git"

We use *git clone* to get Moodle from its official repository. We clone Moodle into a folder name 'initialize\_moodle\_repo'.

    git clone --branch $TARGET_BRANCH --single-branch $MOODLE_REPO initialize_moodle_repo 

    cd initialize_moodle_repo

We do a *git reset* to make sure we will be using v2.8.12; the HEAD of the MOODLE\_28\_STABLE branch could be ahead of 2.8.12.

We then check the files are in the working directory and the git history.

    git reset --hard $TARGET_TAG #just in case they are ahead of our target tag 

    ls -a #check 

    git log --pretty=oneline -5 #check

We delete all files in the working directory. The aim is to replace the content of the working directory with Moodle@UCL.

We then do a couple of checks and commit (we have committed the empty working directory).

    git rm -rf . #delete everything in current directory 

    ll -ah #check 

    git status #check 

    git commit -m "Take Moodle 2.8.12 from the Moodle official repository; then empty the working directory"

We check all is as expected.

We then want to restore the file '.gitignore'. We will need it to tell git what files to ignore.

We use git reflog to quickly double check what the last commit containing '.gitignore' was.

We then copy Moodle@UCL from moodle-f.ucl.ac.uk

    git status #check 

    git reflog #check 

    git checkout HEAD@{1} .gitignore #add back .gitignore 

    ll -ah #check 

    rsync -vaz -e ssh ccspmdl@moodle-f.ucl.ac.uk:/data/apache/htdocs/moodle_v2812/ . #get moodle@ucl

We add 'config.php' and 'local\_settings.php' to '.gitignore'; they will not be committed.

We then stage all changes and commit.

We don't specify a commit message therefore git will open an editor so that we can type the message. I have commented out the message below.

    echo "config.php" >> .gitignore #add file to .gitignore 

    echo "local_settings.php" >> .gitignore #add file to .gitignore 

    git status #check 

    git add --all . #stage all files for commit 

    git status #check 

    git commit 

    #commit message: 

    #Moodle@ucl initial commit. 

    #v2.8.12 copied from moodle-f.ucl.ac.uk 

    #Contains all the hacks and extensions 

    #We have kept a common history with the Moodle official repository. 

    #We think it will facilitate merging future releases.

     

We then rename the branch to UCL\_STABLE, add a remote repository aliased 'dcs' and push to it.

    git log --pretty=oneline -5 #check 

    git branch -m MOODLE_28_STABLE UCL_STABLE #rename branch MOODLE_28_STABLE 

    git remote add dcs git@git.dcs.ucl.ac.uk:lta/moodle.git #add gitlab remote repository 

    git push -u dcs UCL_STABLE #push to gitlab 

 

That way we have our git repo sharing some common history with the Moodle official repository.

It can help us when merging. Git, generally has problems doing auto-merging when you have situations like: 'file deleted in HEAD and modified in BRANCH' or vice versa.

You will know if you have come across those cases.

## Full listing

``` bash
#############initialize ucl git moodle repo######################
# don't try from git-bash, you need rsync installed
TARGET_BRANCH="MOODLE_28_STABLE" # our current branch
TARGET_TAG="v2.8.12" # our current tag
MOODLE_REPO="https://github.com/moodle/moodle.git"
git clone --branch $TARGET_BRANCH --single-branch $MOODLE_REPO initialize_moodle_repo
cd initialize_moodle_repo
git reset --hard $TARGET_TAG #just in case they are ahead of our target tag
ls -a #check
git log --pretty=oneline -5 #check
git rm -rf . #delete everything in current directory
ll -ah #check
git status #check
git commit -m "Take Moodle 2.8.12 from the Moodle official repository; then empty the working directory"
git status #check
git reflog #check
git checkout HEAD@{1} .gitignore #add back .gitignore
ll -ah #check
rsync -vaz -e ssh ccspmdl@moodle-f.ucl.ac.uk:/data/apache/htdocs/moodle_v2812/ . #get moodle@ucl
echo "config.php" >> .gitignore #add file to .gitignore
echo "local_settings.php" >> .gitignore #add file to .gitignore
git status #check
git add --all . #stage all files for commit
git status #check
git commit 
#commit message:
#Moodle@ucl initial commit. 
#v2.8.12 copied from moodle-f.ucl.ac.uk
#Contains all the hacks and extensions
#We have kept a common history with the Moodle official repository.
#We think it will facilitate merging future releases.
git log --pretty=oneline -5 #check
git branch -m MOODLE_28_STABLE UCL_STABLE #rename branch MOODLE_28_STABLE
git remote add dcs git@git.dcs.ucl.ac.uk:lta/moodle.git #add gitlab remote repository
git push -u dcs UCL_STABLE #push to gitlab 
###################################initialize ucl git moodle repo
```
