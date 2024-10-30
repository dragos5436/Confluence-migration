# Moodle Preview AWS Instances

Creating/refreshing an instance takes about 8 hours for the database to restore via our [pipeline](https://github.com/ucl-isd/moodle-mysql-restore/actions), after which the settings for the instance need to be set / updated. So this is a next day affair but is minimal human effort totalling no more than an hour. 

<table>
<thead>
<tr class="header">
<th>Instance</th>
<th>Purpose</th>
<th>Version</th>
<th>Code deploy frequency</th>
<th>Database  </th>
<th>Retirement plans</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="https://4-demo.preview-moodle.ucl.ac.uk/" class="uri">https://4-demo.preview-moodle.ucl.ac.uk/</a></td>
<td><p>Moodle 4 demo site used by end users to familiarise themselves with Moodle 4.</p></td>
<td>4.3</td>
<td>weekly</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><a href="https://43-theme.preview-moodle.ucl.ac.uk/" class="uri">https://43-theme.preview-moodle.ucl.ac.uk/</a></td>
<td>Moodle 4 theme development environment. Used by theme developers.</td>
<td>4.3.x</td>
<td>anytime, at least weekly</td>
<td><br />
</td>
<td>N/A - freshly created</td>
</tr>
<tr class="odd">
<td><a href="https://43-clc.preview-moodle.ucl.ac.uk/" class="uri">https://43-clc.preview-moodle.ucl.ac.uk/</a></td>
<td>Used for course lifecycle related development </td>
<td>4.3</td>
<td>anytime, at least weekly</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="even">
<td><a href="https://42-training.preview-moodle.ucl.ac.uk/login/index.php">https://42-training.preview-moodle.ucl.ac.uk/</a></td>
<td>Used for Moodle 4 training. Started with a empty database</td>
<td>4.2</td>
<td>on request, at least weekly</td>
<td><br />
</td>
<td>Need to export training completion data before decom</td>
</tr>
<tr class="odd">
<td><a href="https://311-oidc.preview-moodle.ucl.ac.uk/l">https://311-oidc.preview-moodle.ucl.ac.uk/</a></td>
<td>Moodle 4.2 instance configured against AAD test and having MS Teams LTIs working. (has been upgraded despite the name</td>
<td>4.2.x</td>
<td>anytime</td>
<td><br />
</td>
<td><p>keep for now - AAD/Teams testing</p>
<p>upgrade to 4.3 in TI1 Sprint 5</p></td>
</tr>
<tr class="even">
<td><a href="https://43-release.preview-moodle.ucl.ac.uk" class="uri">https://43-release.preview-moodle.ucl.ac.uk</a></td>
<td><p>Used to test new deployments to production</p>
<p><br />
</p></td>
<td>4.3.x</td>
<td>only for prod release leads</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><a href="https://42-media.preview-moodle.ucl.ac.uk/" class="uri">https://42-media.preview-moodle.ucl.ac.uk/</a></td>
<td>Moodle 4.2 Media apps dedicated preview instance</td>
<td>4.2</td>
<td>anytime</td>
<td><br />
</td>
<td>upgrade to 4.3 in sprint 5</td>
</tr>
<tr class="even">
<td><a href="https://43-teams.preview-moodle.ucl.ac.uk/" class="uri">https://43-teams.preview-moodle.ucl.ac.uk/</a></td>
<td>Moodle 4.3 Teams testing dedicated instance</td>
<td>4.3</td>
<td>anytime</td>
<td><br />
</td>
<td><br />
</td>
</tr>
<tr class="odd">
<td><a href="https://43-codebase.preview-moodle.ucl.ac.uk/" class="uri">https://43-codebase.preview-moodle.ucl.ac.uk/</a></td>
<td>Moodle 4.3 codebase testing&amp;prep instance</td>
<td>4.3</td>
<td>anytime</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>


