# Setup Local Moodle for Behat and PHPUnit Testing

<https://github.com/moodlehq/moodle-docker>

### Prerequisite Windows Only

installing marketplace - <https://www.winhelponline.com/blog/restore-windows-store-windows-10-uninstall-with-powershell/>

Installing Ubuntu on Windows - <https://ubuntu.com/tutorials/ubuntu-on-windows#1-overview>

Setting Ubuntu as root user[ https://superuser.com/questions/1107986/how-to-sign-into-root-account-by-default-on-windows-subsystem-for-linux-bash-t/1291457](https://superuser.com/questions/1107986/how-to-sign-into-root-account-by-default-on-windows-subsystem-for-linux-bash-t/1291457)

Changing Ubuntu to WSL2 https://docs.docker.com/desktop/windows/wsl/

For Windows, it is recommend you install your Moodle in /home/user for improved speed in wsl

### Prerequisite 

1. Install Docker

<https://docs.docker.com/get-docker/>

2. Create ssh key

<https://git-scm.com/book/en/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key>

3. Clone Moodle code

git clone --branch MOODLE\_404\_STABLE (the name of the branch you're cloning from github) <git@git.automation.ucl.ac.uk>:moodle/moodle-1819.git MOODLE\_404\_STABLE (any folder name here)

4. Build Moodle code

cd /path/to/moodle/code/MOODLE\_404\_STABLE

./build.sh *&lt;moodlesite-name&gt;* (usually moodlesite-xxx eg. moodlesite-44)

### Environment Setup   

1. Set up path to Moodle code

export MOODLE\_DOCKER\_WWWROOT=/path/to/moodle/code/moodlesite-44

export MOODLE\_DOCKER\_DB=mysql *(mariadb is recommended)*

export MOODLE\_DOCKER\_SELENIUM\_VNC\_PORT=5900

export MOODLE\_DOCKER\_PHP\_VERSION=8.1

2. Ensure customized config.php for the Docker containers is in place

cp config.docker-template.php $MOODLE\_DOCKER\_WWWROOT/config.php

### Initialise Environments 

1.Start up containers

(linux) bin/moodle-docker-compose up -d

(windows) moodle-docker-compose.cmd up -d

2. Wait for DB to come up (important for oracle/mssql)

bin/moodle-docker-wait-for-db

3.1 Initialise PHPUnit environment (10 - 20 minutes)

(linux) bin/moodle-docker-compose exec webserver php admin/tool/phpunit/cli/init.php

(windows) bin/moodle-docker-compose.cmd exec webserver php admin/tool/phpunit/cli/init.php

3.2 Initialise Behat environment (10 - 20 minutes)

(linux) bin/moodle-docker-compose exec webserver php admin/tool/behat/cli/init.php

(windows) bin/moodle-docker-compose.cmd exec webserver php admin/tool/behat/cli/init.php

### Running Tests

PHPUnit Tests

1.1

(linux) bin/moodle-docker-compose exec webserver vendor/bin/phpunit qtype\_drawing\_test question/type/drawing/tests/questiontype\_test.php

(windows) bin/moodle-docker-compose exec.cmd webserver vendor/bin/phpunit qtype\_drawing\_test question/type/drawing/tests/questiontype\_test.php

1.2
Behat Tests

(linux) bin/moodle-docker-compose exec -u www-data webserver php admin/tool/behat/cli/run.php --format=pretty --format=progress --format=moodle\_screenshot --colors --feature=/var/www/html/filter/ally/tests/behat/folder\_files.feature

(windows) bin/moodle-docker-compose.cmd exec -u www-data webserver php admin/tool/behat/cli/run.php --format=pretty --format=progress --format=moodle\_screenshot --colors --feature=/var/www/html/filter/ally/tests/behat/folder\_files.feature
