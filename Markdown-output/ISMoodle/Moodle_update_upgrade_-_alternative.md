# Moodle update/upgrade - alternative

We are going to update Moodle using git as opposed to how it used to be done

If you already have a local copy, pull the latest changes

    cd my_local_moodle

    git pull

 

Otherwise clone the UCL repository

    git clone git@git.dcs.ucl.ac.uk:lta/moodle.git my_local_moodle

cd my\_local\_moodle

 

At the time of writing, we want to upgrade to Moodle 3.0.5

    TARGET_TAG="3.0.5" 

Create a branch which will be used to do the merge

    #git checkout --branch ucl-temp-merge-$TARGET_TAG

    git checkout -b ucl-temp-merge-$TARGET_TAG

Add a the Moodle official repository with the alias 'upstream'

    git remote add upstream https://github.com/moodle/moodle.git

Fetch Moodle 3.0.5

    git fetch upstream +refs/tags/v${TARGET_TAG}

 

Merge what you have fetched into your branch. Use the following merge strategy:

-s recursive or --strategy=recursive (see git documentation for possible stratgies)

-X ours or --strategy-option=theirs (in case of conflicts, priority is given to their branch)

    git merge -s recursive -X theirs FETCH_HEAD

I think the following also works: *git merge -Xtheirs FETCH\_HEAD*

 

Most file will merge fine; however chances are the auto-merge will fail.

You will have to help git a little by telling it what to do with a couple of files.

A good article about it can be found on [github](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/)

Check the status of the merge

    git status

 

You might have something like 

 

    # Unmerged paths:
    # (use "git add/rm <file>..." as appropriate to mark resolution)
    #
    # both added: filter/algebra/algebra2tex.pl
    # both added: filter/tex/mimetex.darwin

 

If that's the case, tell git what to do with the files. For example

    git add filter/algebra/algebra2tex.pl

    git rm filter/tex/mimetex.darwin

 

You might have other type of message however most should be resolved by

either *git add file\_name* or *git rm file\_name*

In the unlikely event you have something like:

    # both modified:      planets.md

Open the file in your text editor, you'll see both changes:

    the number of planets are
    <<<<<<< HEAD
    nine
    =======
    eight
    >>>>>>> branch-a

 

Whatever you do, you need to make sure to resolve the conflict such that the file makes sense, and everyone is happy.

You can now *git add* this file

    git add README.md

### Resolving a removed file conflict

**Keeping the edited file**

First, you'll resolve the conflict by keeping the new changes. Suppose that you added a line to your README.md in branch-b, but someone else has deleted the file entirely in branch-c. Git declares the following conflict:

``` java
CONFLICT (modify/delete): README.md deleted in HEAD and modified in branch-b. Version branch-b of README.md left in tree.
Automatic merge failed; fix conflicts and then commit the result.

git status
# On branch branch-c
# You have unmerged paths.
#   (fix conflicts and run "git commit")
#
# Unmerged paths:
#   (use "git add/rm ..." as appropriate to mark resolution)
#
# deleted by us:      README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
```

 

You can resolve this by adding the file back

    git add README.md

 

**Resolving by removing the file**

Now, you'll resolve that conflict the opposite way: by leaving the file deleted. Again, with a merge conflict, Git declares the same merge conflict as above.

Now, you want to remove the file

    git rm README.md

 

Once you have dealt with all merge conflicts, you are ready to commit

    git commit -m "Your commit message"

 

**Applying UCL patches**

Patched should already be included by the merge; you **shouldn't** have to do it.

You can type the following to check if the hacks are present. Play with the search message and capitalisation

    grep -nr 'END UCL hack' path_to_moodle

I would say, skip to the next section

In the unlikely event you want to try it, you could do something like this;

clone the repo containing the patches

    PATCH_DIR="$HOME/ucl_patches"
    git clone git@git.dcs.ucl.ac.uk:lta/moodle_patches.git $PATCH_DIR

 

The following command will not apply the patches however it will check whether git could apply the patches cleanly

    for i in $PATCH_DIR/*.patch; do git apply --check --verbose $i; done

The result should indicate that applying the patches would fail (because patches are already included).

If you want to apply the patches, remove the --check flag.

delete the patch directory

    rm -rf $PATCH_DIR

**Copy code to servers and push to gitlab**

You should be ready to copy the code to the servers moodle-admin, moodle-d, moodle-e and moodle-f

    rsync -vaz -e ssh --exclude='.git' -e ssh ./ ccspmdl@moodle-{admin,d,e,f}.ucl.ac.uk:/data/apache/htdocs/moodle_vXYZ_$(date +"%d-%m-%Y")

 

### Update the symlink

Use your preferred method; it might look like this (the symlink 'moodle' already exists so to avoid an error when creating it we use the workaround provided by Delvon):

    ssh ccspmdl@moodle-{admin,d,e,f}.ucl.ac.uk  "cd /data/apache/moodle-vhosts && ln -s moodle_vXYZ_dd-mm-yyyy  current && mv -T current moodle"

 

### Run the upgrade

run the command line upgrade (or via the web interface). 

On one of the servers, for example moodle-d.ucl.ac.uk

    ssh ccspmdl@moodle-d.ucl.ac.uk

    cd moodle

    php admin/cli/upgrade.php  (use sudo if you have to)

 

If you are happy, you can merge your branch into UCL\_STABLE and push to gitlab

    git checkout UCL_STABLE

    git merge --no-ff ucl-temp-merge-$TARGET_TAG

The --no-ff flag is not mandatory; it simply ensure git doesn't do a fast-forward merge

If the alias of the gitlab remote repo is 'origin' use the following (otherwise change the alias accordingly)

    git push -u origin UCL_STABLE

The -u flag is not mandatory; it tells git that your local UCL\_STABLE branch tracks the branch UCL\_STABLE on gitlab

 
