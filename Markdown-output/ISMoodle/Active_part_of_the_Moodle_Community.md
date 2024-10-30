# Active part of the Moodle Community

Upstream first policy - https://wiki.ucl.ac.uk/display/ISMoodle/UCL+Moodle+Customisation+policy

<https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+4.0+upstream+logged+issues>

<https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+Tracker+-+tracking>

<https://www.linkedin.com/pulse/contributions-moodle-41-funded-ucl-crafted-/>

MoodleMoot Global 2022 - https://www.youtube.com/playlist?list=PLxcO\_MFWQBDdvJEgNBTCc1Z3CFpBZ4E\_J

Moodle User Association - https://moodleassociation.org/

Core funding:

-   SRE
-   Quiz consortium
-   UCL feature requests

Theme:

-   Adaptable - widely used and funded by UCL since 2019. Lead funder since Coventry dropped off
-   Titus Productised theme for Moodle 4.x

Sharing our approach to testing

-   With the core Moodle dev community - https://moodledev.io/general/community/meetings/202301
-   Releasing our build & testing environments Pipeline to the community - once GHA and Cloud Preview are bedded in

Post-CI Core Performance fixes

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>What</p></td>
<td><p>Tracker</p></td>
<td><p>State</p></td>
<td><p>Integrated?</p></td>
<td><p>Backported?</p></td>
</tr>
<tr class="even">
<td><p>Partial modinfo rebuild</p></td>
<td><p><a href="https://tracker.moodle.org/browse/MDL-55231" class="uri">https://tracker.moodle.org/browse/MDL-55231</a></p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.0</p></td>
<td><p>not possible</p></td>
</tr>
<tr class="odd">
<td><p>Local cache</p></td>
<td><p><a href="https://tracker.moodle.org/browse/MDL-67020" class="uri">https://tracker.moodle.org/browse/MDL-67020</a></p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.1</p></td>
<td><p>no</p></td>
</tr>
<tr class="even">
<td><p>Stacked cache</p></td>
<td><p><a href="https://tracker.moodle.org/browse/MDL-72837" class="uri">https://tracker.moodle.org/browse/MDL-72837</a></p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.0</p></td>
<td><p>Backported in 3.11 - in Prod</p></td>
</tr>
<tr class="odd">
<td><p>Async purge file cachestore</p></td>
<td><p><a href="https://tracker.moodle.org/browse/MDL-69088" class="uri">https://tracker.moodle.org/browse/MDL-69088</a></p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.0</p></td>
<td><p>To be back ported for 3.11</p></td>
</tr>
</tbody>
</table>

SnowFlake

<https://github.com/catalyst/moodle-tool_dataflows>

SRE Perf

<https://github.com/catalyst/moodle-tool_excimer>

Moodle Tracker Core Dev

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Ticket</p></td>
<td><p>Tracker</p></td>
<td><p>State</p></td>
<td><p>Integrated?</p></td>
</tr>
<tr class="even">
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p><br />
</p></td>
<td><p>Target 4.2</p></td>
</tr>
<tr class="odd">
<td><p>MDL-60666 - ldap login</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-60666</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.1</p></td>
</tr>
<tr class="even">
<td><p>SRE - MDL-67020 - Localised-only cache setup flaw</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-67020</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.1</p></td>
</tr>
<tr class="odd">
<td><p>MDL-65061 - IMS Suspend Status</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-65061</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.1</p></td>
</tr>
<tr class="even">
<td><p>MDL-68093 - group membership GDPR compliance</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-68093</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.2</p></td>
</tr>
<tr class="odd">
<td><p>MDL-69489 - Make an LTI only available to specific course categories</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-69489</p></td>
<td><p>Waiting for Integration review</p></td>
<td><p>4.3?</p></td>
</tr>
<tr class="even">
<td><p>MDL-68407 - Expose an index log of Ad-Hoc Tasks</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-68407 (already done in 4.0)</p>
<p>https://tracker.moodle.org/browse/MDL-70975</p></td>
<td><p>Integrated   (complete)</p>
<p><br />
</p>
<p><br />
</p>
<p>Integrated   (complete)</p></td>
<td><p>In 4.0</p>
<p><br />
</p>
<p>  </p>
<p>In 4.2</p></td>
</tr>
<tr class="odd">
<td><p>MDL-67685 - Task Index (performance)</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-67685</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.1</p></td>
</tr>
<tr class="even">
<td><p>SRE - MDL-72533 - Events Table performance</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-72533</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.2</p></td>
</tr>
<tr class="odd">
<td><p>SRE - MDL-72451 - regrading error (performance)</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-72451</p></td>
<td><p>Integrated   (complete)</p></td>
<td><p>In 4.2</p></td>
</tr>
<tr class="even">
<td><p>SRE - MDL-68806 - pre-compute quiz attempt</p></td>
<td><p>https://tracker.moodle.org/browse/MDL-68806</p></td>
<td><p>bigger piece as it needs engagement with Tim Hunt &amp; changes in &amp; planned for in 4.x</p>
<p>Not started</p></td>
<td><p><br />
</p></td>
</tr>
</tbody>
</table>

Core SRE

https://tracker.moodle.org/browse/MDL-72451

https://tracker.moodle.org/browse/MDL-68806

AAD / auth\_oidc

<https://github.com/microsoft/o365-moodle/issues/2156> 

<https://github.com/microsoft/o365-moodle/issues/2157>

<https://github.com/microsoft/o365-moodle/issues/2155>
