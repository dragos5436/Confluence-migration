# Libre lambda file converter for Moodle Assignment

The Learning Apps team wants to use the Librelambda file converter plugin instead of rebuilding on-prem Unoconv on dedicated servers. To put this into context, this is part of the resolution plan for [Unoconv / File conversion Issues for Moodle Assignment](Unoconv_File_conversion_Issues_for_Moodle_Assignment) logged as Problem PR00000194 which is a long running problem, it has been partially addressed by the introduction of the Onedrive for Business file converter in January 2019 which will remain the primary file converter. Unoconv was suspended in February 2019 due to major conversion issues with the remaining file types it supported. However, Onedrive for Business has a much more restricted range of file types it can convert than unoconv, in particular jpg, png and txt files are not supported despite being submitted by students in significant numbers  - 7 394 files which could be supported by Librelambda). Compared to 57 387 currently supported by Onedrive, this would convert 6.1% of all files submitted. Onedrive converts 47.37% of all files submitted.

Here is the ordered list of file types which have been submitted to New Moodle Assignments since it's launch up to 17/05/2019. In green are those Onedrive currently converts, in yellow those Librelambda would convert, in red those which we would not support conversions for anymore.

<table>
<thead>
<tr class="header">
<th>File Type</th>
<th>Count</th>
<th>File converter</th>
<th>Proportion of all Assignment submissions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>PDF</td>
<td>52 146</td>
<td>No conversion required</td>
<td>43.05%</td>
</tr>
<tr class="even">
<td>docx</td>
<td>42 736</td>
<td>Onedrive for Business</td>
<td>35.28%</td>
</tr>
<tr class="odd">
<td>pptx</td>
<td>5 729</td>
<td>Onedrive for Business</td>
<td>4.72%</td>
</tr>
<tr class="even">
<td>jpg</td>
<td><p>5 409</p></td>
<td>Librelambda</td>
<td>4.46%</td>
</tr>
<tr class="odd">
<td>doc</td>
<td>4 244</td>
<td>Onedrive for Business</td>
<td>3.5%</td>
</tr>
<tr class="even">
<td>xlsx</td>
<td>3 120</td>
<td>Onedrive for Business</td>
<td>2.57%</td>
</tr>
<tr class="odd">
<td>txt</td>
<td>951</td>
<td>Librelambda</td>
<td>0.78%</td>
</tr>
<tr class="even">
<td>png</td>
<td>867</td>
<td>Librelambda</td>
<td>0.71%</td>
</tr>
<tr class="odd">
<td>ppt</td>
<td>593</td>
<td>Onedrive for Business</td>
<td>0.48%</td>
</tr>
<tr class="even">
<td>csv</td>
<td>314</td>
<td>Onedrive for Business</td>
<td>0.26%</td>
</tr>
<tr class="odd">
<td>odt</td>
<td>236</td>
<td>Onedrive for Business</td>
<td>0.19%</td>
</tr>
<tr class="even">
<td>xls</td>
<td>220</td>
<td>Onedrive for Business</td>
<td>0.18%</td>
</tr>
<tr class="odd">
<td>html</td>
<td>167</td>
<td>Librelambda / Onedrive beta API</td>
<td>0.13%</td>
</tr>
<tr class="even">
<td>rtf</td>
<td>115</td>
<td>Onedrive for Business</td>
<td>0.09%</td>
</tr>
<tr class="odd">
<td>pptm</td>
<td>26</td>
<td>Onedrive for Business</td>
<td>0.02%</td>
</tr>
<tr class="even">
<td>odp</td>
<td>25</td>
<td>Onedrive for Business</td>
<td>0.02%</td>
</tr>
<tr class="odd">
<td>ppsx</td>
<td>21</td>
<td>Onedrive for Business</td>
<td>0.01%</td>
</tr>
<tr class="even">
<td>gif</td>
<td>15</td>
<td>Librelambda</td>
<td>0.01%</td>
</tr>
<tr class="odd">
<td>ods</td>
<td>8</td>
<td>Onedrive for Business</td>
<td>-</td>
</tr>
<tr class="even">
<td>tiff</td>
<td>8</td>
<td>Onedrive beta API</td>
<td>-</td>
</tr>
<tr class="odd">
<td>xml</td>
<td>8</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="even">
<td>potx</td>
<td>5</td>
<td>Onedrive for Business</td>
<td>-</td>
</tr>
<tr class="odd">
<td>emf</td>
<td>4</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="even">
<td>pps</td>
<td>3</td>
<td>Onedrive for Business</td>
<td>-</td>
</tr>
<tr class="odd">
<td>bmp</td>
<td>2</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="even">
<td>eps</td>
<td>2</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="odd">
<td>svg</td>
<td>2</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="even">
<td>wps</td>
<td>2</td>
<td><br />
</td>
<td>-</td>
</tr>
<tr class="odd">
<td>ltx</td>
<td>1</td>
<td><br />
</td>
<td>-</td>
</tr>
</tbody>
</table>

N.B. The API the Onedrive file converter relies on has a second 'beta' version where html and tiff file types are supported. Once it is announced as stable, the Onedrive plugin would be updated to include support for these.

Unoconv on-prem issues:

-   significant amount of testing time required
-   successful outcome not guaranteed / unlikely -&gt; likely that running as a listener is a source of the issues encountered but also a necessity
-   requires 4 on-prem servers -&gt; additional burden maintaining these servers in the long run & associated cost
-   security risk of having a server opening documents (which have been virus scanned) known to be a significant vector of compromise 

Lambda function

-   thoroughly tested
-   known to work reliably
-   minimal amount of testing time required from Learning Apps
-   running costs minimal (approx 10£/year)
-   supported and maintained by a Moodle Partner for their own use. We just need to apply updates
-   uses a fresh instance for each file converted -&gt; no concurrency issue
-   no persistent security threat

Function templates ready to deploy

-   <https://github.com/mattporritt/moodle-fileconverter_librelambda/tree/master/lambda>
-   <https://github.com/mattporritt/moodle-fileconverter_librelambda/tree/master/libre>

AWS setup - <https://github.com/mattporritt/moodle-fileconverter_librelambda#aws-stack-setup>

Conversion Architechture - <https://github.com/mattporritt/moodle-fileconverter_librelambda#conversion-architecture>

Overall the Librelambda fileconverter implementation would complete the resolution of a significant issue for the Moodle service, provide a fallback option if Onedrive was experiencing a service outage, but affect a relatively small proportion of the file conversion service.With this being one of the first uses of a cloud service within UCL ISD in production, it is a relatively low risk (all the configuration provided and tested) and low impact (a very small part of a part of the Moodle service) solution to implement.

Option A - ISD:

-HIS provided AWS sub-account with resource tagging applied for billing 

-Learning Apps to deploy S3&Lambda config 

-Issues with Lambda function reported to Moodle Partner after investigation by Learning Apps. Call upon HIS if they have time / capacity / interest / ... but no expectation of support.

-HIS oversight of config 

-HIS can increase their involvement as much as they see fit

-migrate to ISD Cloud Service Model once defined, if AWS is (one of) the selected supplier(s).

-cost approx 10£/year

Option B - Learning Apps:

-Learning Apps setup own AWS account

-Learning Apps to deploy S3& Lambda config 

-Issues with Lambda function reported to Moodle Partner after investigation by Learning Apps.

-migrate to ISD Cloud Service Model once defined, if AWS is (one of) the selected supplier(s).

-cost approx 10£/year

Option C - Moodle Partner:

-Moodle Partner to provide a managed solution

-Issues with Lambda function reported to Moodle Partner

-cost approx 5k£/year

**MIP DG recommended path: A or B - probably B.**

Timeline: this would have to go live after the Moodle upgrade to 3.7 on 26th July. but aiming for this to go live shortly after so early August 2019


