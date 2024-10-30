# SUDO rights for ccspmdl

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/cron.php

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/fix\_course\_sequence.php

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/maintenance.php --enable

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/maintenance.php --disable

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/purge\_caches.php

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/reset\_password.php

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/upgrade.php --define memory\_limit=\[0-4\]\[0-9\]\[0-9\]\[0-9\]M --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php --non-interactive

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/upgrade.php --define memory\_limit=\[0-4\]\[0-9\]\[0-9\]\[0-9\]M --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/upgrade.php --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php --non-interactive

sudo -u ccspwww /usr/bin/php /data/apache/htdocs/moodle/admin/cli/upgrade.php --define error\_log=/home/ccspwww/moodle\_upgrade\_php\_errors\_$(date +%Y%m%d).log /data/apache/htdocs/moodle/admin/cli/upgrade.php

**Added during the night 09-10 January 2018 (pre-prod and prod)**

sudo -u ccspwww  /usr/bin/php /data/apache/htdocs/moodle/admin/cli/alternative\_component\_cache.php --helpsudo -u ccspwww  /usr/bin/php /data/apache/htdocs/moodle/admin/cli/alternative\_component\_cache.php --rebuild

sudo -u ccspwww  /usr/bin/php /data/apache/htdocs/moodle/admin/cli/alternative\_component\_cache.php --print

sudo -u ccspwww  /usr/bin/php /data/apache/htdocs/moodle/admin/cli/alternative\_component\_cache.php --file=filepath

## Comments:

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Martin,</p>
<p>sudo -l may help, it lists what each account can do:</p>
<div class="code panel pdl" style="border-width: 1px;">
<div class="codeContent panelContent pdl">
<pre class="java" data-syntaxhighlighter-params="brush: java; gutter: false; theme: Confluence" data-theme="Confluence" style="brush: java; gutter: false; theme: Confluence"><code>jamesr@gimbal:~$ sudo -l
Matching Defaults entries for jamesr on this host:
    env_reset
User jamesr may run the following commands on this host:
    (ALL) ALL, (ALL) NOPASSWD: /usr/bin/rsync
</code></pre>
</div>
</div>
<p>The above example may run anything, but also rsync without a password.</p>
<p> </p>
<p>Hope that helps</p>
<p> </p>
<div class="smallfont" align="left" style="color: #666666; width: 98%; margin-bottom: 10px;">
<img src="images/icons/contenttypes/comment_16.png" width="16" height="16" /> Posted by cceajra at Jul 25, 2016 13:32
</div></td>
</tr>
</tbody>
</table>


