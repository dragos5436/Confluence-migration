# Moodle 3.11.12

Release date: Thursday 19th January 2023 1am-2am

Release Lead: NB

Deadline to add changes to this release: Friday 13th January 2023 8pm

Deadline to handover release to Catalyst: Monday 16th January 2023 8pm

Must sign-off staging deployment by: Tuesday 17th January 2023 5pm

1) Minor Release of Moodle 3.11.12

Update from 3.11.11

2) Changes that will need to be included in the release

4) Changes to settings:

Component

Setting name

Before

After

Reason

zoom
allowrecordingchangeoption
1
0
Zoom has automatic recording set to off for all users. 

Making this option not visible to users in Moodle will make the settings consistent. (Applied on 4/01/2023 NB) 

block\_lifecycle 
weeks\_delay
9
12
12 wasn't an option previously. 3 months is the timeframe we've historically provided for teams to wrap up their courses before read-only
block\_lifecycle
late\_summer\_assessment\_end\_2018
06/12/2022
aligning to new 12 week delay - must land on 28th February 2023 for initial freeze go-live
block\_lifecycle
late\_summer\_assessment\_end\_2019
06/12/2022
aligning to new 12 week delay - must land on 28th February 2023 for initial freeze go-live
block\_lifecycle
late\_summer\_assessment\_end\_2020
06/12/2022
aligning to new 12 week delay - must land on 28th February 2023 for initial freeze go-live
block\_lifecycle
late\_summer\_assessment\_end\_2021
06/12/2022
aligning to new 12 week delay - must land on 28th February 2023 for initial freeze go-live
block\_lifecycle
late\_summer\_assessment\_end\_2022
07/09/2023
aligning to new 12 week delay - must land on 30th November 2023 as per snapshot freeze historically
block\_lifecycle
late\_summer\_assessment\_end\_2023
07/09/2024
aligning to new 12 week delay - must land on 30th November 2024 as per snapshot freeze historically
theme\_adaptable
mycoursesmenulimit
30
120
Users enrolled in a large number of courses are unable to see all of them in the 'My courses' dropwdown menu.
theme\_adaptable
fontname
Open Sans
Default
Bold font was difficult to read in Safari.
theme\_adaptable
googlefonts
Bold font was difficult to read in Safari.

5) Config changes:

<table>
<thead>
<tr class="header">
<th>Setting</th>
<th>Current</th>
<th><div class="content-wrapper">
<p>New</p>
</div></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><br />
</td>
<td><br />
</td>
<td><br />
</td>
</tr>
</tbody>
</table>

Release Notes:

**Update Moodle to version 3.11.12**

-   fixes [bugs](https://docs.moodle.org/dev/Moodle_3.11.12_release_notes) and security issues

**New Plugin -** Sharing Cart (added to the build but disabled) 

-   Miniguide: link to miniguide
-   Blog Post: link to blog post

