# Plugins update page always appearing when logging in as admin

# Problem

Plugins check page is displayed to admins when logging in, even though no plugin versions have changed.

# Context

From version 2.6 Moodle now checks the Moodle core version and plugin versions every time a user logs in. If it detects a difference from its recorded versions it will show the plugins update check page and ask to update the database.

The check is performed by hashing the collected version numbers of all plugins and the core Moodle version, and storing the hash in the database in mdl\_config -&gt; allversionshash value. It seems to only regenerate this value in the database when a database upgrade is done.

It is possible that this hash value may be cleared in the database. In this situation the plugins check page will appear even though no plugins have actually been updated. As far as I can see the database value is only cleared when a plugin is uninstalled through the web admin interface. Note that a 'purge all caches' operation does not clear this value.

# Fix

Clicking the 'upgrade' database button on the plugins update page should just regenerate this value and do nothing else, if no other changes are listed on the plugins update page.

If you really don't want to click the upgrade database button, the only workaround I can find is to create a temporary hack that dumps the calculated allversionshash value. For this you need to run some code like this:

    <?php
    require_once('../config.php');
    require_once('../lib/setup.php');
    require_once('../lib/classes/component.php');
    echo(core_component::get_all_versions_hash());
    ?>

This code could go in a php file in ucl\_tools for example. This will dump the new hash value to screen when visited. The printed hash can then be manually added to the database.

    UPDATE mdl_config SET value='<hash>' WHERE name='allversionshash';

Where you replace &lt;hash&gt; with the value dumped by the script. This should stop the plugins check page appearing.

 

 

 

 

 

 
