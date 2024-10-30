# SQL Router Improvement Progress

**Router Improvements**

Jmeter Settings
New Relic Stats
Threads
Ramp (seconds)
Duration (seconds)
App Server
Apdex Score
Error Rate (%)
Screenshot
Performance %
Without router
500
125
1800
1.2s
0.59
0.0019%
<https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147959017/directreadwrite-500threads-run1.png>
With router
500
125
1800
5.2s
0.61
0%
<https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/141328714/clusterrouter-500threads-run2.png>
- 500%

With router + routing\_strategy=first-available
500
125
1800
1.3s
0.7
0%
<https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147956599/clusterrouter-500threads-run4.png>
- 50%

With router + name server caching enabled on app servers
500
125
1800
753ms
0.75
0%
<https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147956839/clusterrouter-500threads-run5.png>
+ 40%

**Timeline**

<table>
<thead>
<tr class="header">
<th>Month</th>
<th>Progress</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>June</td>
<td>Performance Test baseline without router - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/137151111/slavevms-500threads.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/137151111/slavevms-500threads.png</a></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Performance Test baseline with router - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/141328714/clusterrouter-500threads-run2.png">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/141328714/clusterrouter-500threads-run1.png</a></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td><div class="content-wrapper">
<p>Open called with Oracle Support re. Performance issues → <a href="attachments/147959761/151268167.pdf">SR Detail.pdf</a></p>
</div></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>NewRelic reports uploaded to Oracle Support</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Discounted antivirus, antimalware, port scanners, or other processes operating on hosts</td>
</tr>
<tr class="even">
<td><p>July</p></td>
<td>Disable TLS encryption</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Collect network tcpdump trace files from each application server connection to the cluster</td>
</tr>
<tr class="even">
<td><br />
</td>
<td>Trace where MySQL Router is enabled</td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>Trace where MySQL Router is not enabled</td>
</tr>
<tr class="even">
<td><p>August</p></td>
<td>Tested performance by switching over Primary Server from dbc01 to dbc03 - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/137162648/clusterrouter-500threads-run1.png">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/137162648/clusterrouter-500threads-run2.png</a></td>
</tr>
<tr class="odd">
<td>September</td>
<td>modified cluster parameter routing-strategy to 'first-available' - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147949158/clusterrouter-500threads-run3.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147949158/clusterrouter-500threads-run3.png</a></td>
</tr>
<tr class="even">
<td>October</td>
<td>Enabled Named Sever caching - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147956599/clusterrouter-500threads-run4.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147956599/clusterrouter-500threads-run4.png</a></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>UP TO DATE Performance Test  - baseline without router - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147959017/directreadwrite-500threads-run1.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147959017/directreadwrite-500threads-run1.png</a></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>UP TO DATE Performance Test - hard coded reads - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147958745/directreadonly-500threads-run1.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147958745/directreadonly-500threads-run1.png</a></td>
</tr>
<tr class="odd">
<td><br />
</td>
<td>UP TO DATE Performance Test - full router - <a href="https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147958712/clusterrouter-500threads-run6.png" class="uri">https://wiki.ucl.ac.uk/display/ISMoodle/MoodlePP+Covid-19+Load+Testing?preview=/131390869/147958712/clusterrouter-500threads-run6.png</a></td>
</tr>
<tr class="even">
<td><br />
</td>
<td>UP TO DATE Performance Test - Functional testing of failover scenarios - <a href="MoodlePP-Covid-19-Load-Testing_131390869.html#MoodlePPCovid19LoadTesting-NEWFailOver">MoodlePP Covid-19 Load Testing#NEWFailOver</a></td>
</tr>
</tbody>
</table>

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [SR Detail.pdf](attachments/147959761/151268167.pdf) (application/pdf)

