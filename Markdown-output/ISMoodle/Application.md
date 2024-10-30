# Application

Application code - On dev environment

*server - <ccsmpmdd@moodle-01-d.ucl.ac.uk>*

*appcode - /data/moodle\_int\_management*

*
*

Install cakephp version 2.10.10 <https://github.com/cakephp/cakephp/releases/tag/2.10.10>

Requirements - Install composer <https://getcomposer.org/download/> 

``` bash
# check if installation was successful
$ composer 

# Create a cakephp application
$ composer create-project --prefer-dist cakephp/app moodle_int_management

# check the version of cakephp installed
$ cd moodle_int_management
$ bin/cake version
3.6.7
```

Add the code to VCS - Git

``` bash
# Initialise the project as Git repository
$ git init


# Add ucl git repo as remote
$ git remote add cakephpucl https://git.dcs.ucl.ac.uk/cceaset/moodle_int_managment.git

# Check git status
$ git status

# Check remotes 
$ git remote -v
cakephpucl      https://git.dcs.ucl.ac.uk/cceaset/moodle_int_managment.git (fetch)
cakephpucl      https://git.dcs.ucl.ac.uk/cceaset/moodle_int_managment.git (push)

$ git add .

$ git commit -m "Cakephp v3.6.7"

$ git push cakephpucl HEAD
```

Import code 

-   Import code to Moodle's dev machine under /data/moodle\_int\_management

Check Shell Execution

-   Check if we can execute shell scripts by creating TestShell script under data/moodle\_int\_management/src/Shell directory 

``` bash
$ bin/cake Test
If you can read this text, cake console is working as expected
```

##### Troubleshooting

1.  Can't execute command line cake

    ``` bash
    $ bin/cake
    -bash: bin/cake: Permission denied
    ```

    Resolution :

    ``` bash
    $ cd /data/moodle_int_management/bin

    $ ls -lt
    total 12
    -rw-r--r-- 1 ccspmdd ccsp 2078 Jul  8 14:12 cake
    -rw-r--r-- 1 ccspmdd ccsp  862 Jul  8 14:12 cake.bat
    -rw-r--r-- 1 ccspmdd ccsp  393 Jul  8 14:12 cake.php

    $ chmod +x cake

    $ ls -lt
    total 12
    -rwxr-xr-x 1 ccspmdd ccsp 2078 Jul  8 14:12 cake
    -rw-r--r-- 1 ccspmdd ccsp  862 Jul  8 14:12 cake.bat
    -rw-r--r-- 1 ccspmdd ccsp  393 Jul  8 14:12 cake.php

    $ bin/cake
    No command provided. Choose one of the available commands.
    Current Paths:

    * app:  src
    * root: /data/moodle_int_management
    * core: /data/moodle_int_management/vendor/cakephp/cakephp

    Available Commands:

    - bake
    - benchmark
    - cache
    - completion
    - console
    - whitespace
    - help
    - i18n
    - migrations
    - orm_cache
    - plugin
    - routes
    - schema_cache
    - server
    - version

    To run a command, type `cake shell_name [args|options]`
    To get help on a specific command, type `cake shell_name --help`



    ```


