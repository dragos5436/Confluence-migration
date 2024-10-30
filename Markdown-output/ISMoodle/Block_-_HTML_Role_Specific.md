# Block - HTML Role Specific

Download the plugin from:

-   <http://moodle.org/mod/data/view.php?d=13&rid=794>
-   <http://haywood.richard.googlepages.com/html_role_specific.zip>

This plugin only adds a new folder to the blocks folder. It does not overwrite any existing files or change the structure of the database so it is pretty low risk.
Download the file to /data/apache/htdocs/moodle/blocks

Unzip the file and it will create a new folder at /data/apache/htdocs/moodle/blocks/html\_role\_specific (make sure it doesn't put an extra 'html\_role\_specific' folder inside here)

This new folder should contain 3 files:

-   block\_html\_role\_specific.php
-   config\_instance.html 
-   lang\\en\_utf8\\block\_html\_role\_specific.php

Copy the language file to /data/apache/htdocs/moodle/lang/en\_utf8
Go to the **Admin** &gt; **Notifications** page. This plugin does not alter the structure of the database, but it will add an extra row to the **mdl\_block** table.

Go to **Admin** &gt; **Modules** &gt; **Blocks** &gt; **Manage Blocks** and you will see a new entry for **HTML Role Specific** in the list.

