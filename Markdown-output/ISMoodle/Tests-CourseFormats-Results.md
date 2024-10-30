# Tests-CourseFormats-Results

Full list of results for course formats testing. For a full list of tests, check [Tests-CourseFormats](Tests-CourseFormats)

-   [Grid](#TestsCourseFormatsResults-Grid)
-   [One Topic (aka Tabs)](#TestsCourseFormatsResults-OneTopic(akaTabs))
-   [Topics](#TestsCourseFormatsResults-Topics)
-   [Collapsed](#TestsCourseFormatsResults-Collapsed)

# Grid

| \#  | Course Formats Tests                                                                                                                                      | Where Tested                                                | Date Tested (YYYY-MM-DD) | Who Tested | Browser? IE/FF/Ch (incl. v.) | Passed? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> | Comments                                                                                                                                                                                                                                                                                                                                               |
|-----|-----------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|--------------------------|------------|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | **\[CFO001T\]  Sections/Topics display as expected from documentation**                                                                                   
                                                                                                                                                             
  1.  Go to course settings and change to new CF.                                                                                                            
                                                                                                                                                             
  2.  Save and return to course page.                                                                                                                        
                                                                                                                                                             
  3.  Are all sections previously displayed visible?                                                                                                         
                                                                                                                                                             
  4.  Does functionality expected occur - eg pop up/collapsed versions of content, moving between sections?                                                  | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2018> 
                                                                
   and                                                          
                                                                
   <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2016>  | 2018-05-08               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | **First page**                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                
        -   Changed course format from Topics to Grid                                                                                                                                                                                                                                                                                                           
        -   Pressed save and return to course                                                                                                                                                                                                                                                                                                                   
        -   All previously visible sections remained visible                                                                                                                                                                                                                                                                                                    
        -   Clicking on each grid tile brings up the content for that section as expected                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                                                                                
        **Second page**                                                                                                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                
        -   Restored course from live Moodle that used the Grid format                                                                                                                                                                                                                                                                                          
        -   All sections display as intended                                                                                                                                                                                                                                                                                                                    |
| 2   | **\[CFO002T\]  Editing Sections/Topics**                                                                                                                  
                                                                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                                                                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2018> | 2018-05-04               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  I was able to, rename and delete a section/topic                                                                                                                                                                                                                                                                                                   
        2.  I was able to highlight a section but the highlight isn't visible (**theme issue?**)                                                                                                                                                                                                                                                                |
| 3   | **\[CFO003T\]  Adding/Editing content**                                                                                                                   
                                                                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                                                                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2018> | 2018-05-04               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  I was able to add a file via a drag-and-drop before renaming and deleting it                                                                                                                                                                                                                                                                       
        2.  I was able to drag-and-drop an image into the page and have it display directly on the page                                                                                                                                                                                                                                                         
        3.  I was able to show and hide an activity with the intended function                                                                                                                                                                                                                                                                                  |
| 4   | **\[CFO004T\] Course/Activity Completion**                                                                                                                
                                                                                                                                                             
  1.  Does the activity completion box display as intended?                                                                                                  
                                                                                                                                                             
      1.  Students can manually mark the activity as complete                                                                                                
      2.  Show activity as complete when conditions are met                                                                                                  
                                                                                                                                                             
  2.  Do activities and sections display as intended based on activity completion and access restrictions?                                                   | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2016> | 2018-05-08               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Switched role to Student via the Switch role to feature                                                                                                                                                                                                                                                                                            
        2.  Navigated through the content while ensuring all activities and sections became available when they should                                                                                                                                                                                                                                          
            1.  Section 2 was visible with hidden content until activity MoodleTesting4 was complete                                                                                                                                                                                                                                                            
            2.  Section 3 was hidden entirely until activity MoodleTesting14 was complete                                                                                                                                                                                                                                                                       |
| 5   | **\[CFOG01T\] Grid Tile Images**                                                                                                                          
                                                                                                                                                             
  1.  Turn editing on                                                                                                                                        
  2.  Click 'Change image'                                                                                                                                   
  3.  Upload an image that matches size and aspect ratio of the tile (default settings are 210px width and a 3:2 aspect ratio for an image that is 210x140)  
  4.  Click 'Save changes'                                                                                                                                   
  5.  Does this display as intended?                                                                                                                         
  6.  Edit settings for the course page to change the value for 'Set the image container width'                                                              
      1.  Does the uploaded image scale to fill the container for a lower value?                                                                             
      2.  Does the uploaded image scale to fill the container a larger value? Is there white space around the image?                                         
  7.  Edit settings for the course page to change the aspect ratio of the grid tiles and check how the uploaded image displays                               
      1.  Is there white space around the image?                                                                                                             
  8.  Can an image be deleted?                                                                                                                               | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2016> | 2018-05-08               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />                                                                                                                                                                                                 | 1.  Navigated to course page, turned editing on and then uploaded an image that matched the default size and aspect ratio which displayed as intended                                                                                                                                                                                                  
        2.  There are some issues when changing image container width, ratio and scaling method without changing the source image:                                                                                                                                                                                                                              
            1.  A smaller image container with the default ratio and scaling method is fine                                                                                                                                                                                                                                                                     
            2.  A larger image container with the default ratio will leave a white border around the image unless the scaling method is set to Crop                                                                                                                                                                                                             
            3.  Changing the ratio while keeping the width at default means you'll get a white border for Scale and a stretched image for Crop                                                                                                                                                                                                                  
        3.  Images can be deleted without issue                                                                                                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                                                
        There are three settings relating to how the images with the grid tiles, image container is the terminology used within the settings area itself, that can provide a variety of outcomes.                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                
        During my testing for **Set the image resize method**, the option **Scale** will maintain aspect ration and won't make the image larger than the source file whereas **Crop** will make the image fit the container regardless of how much it's stretched.                                                                                              
                                                                                                                                                                                                                                                                                                                                                                
        Doing some further testing would be nice as getting a side-by-side visualisation of all the various combinations would make it easier to explain (and solve?) the issue.                                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                                                                
        A workaround, of sorts, would be to find a container width and ratio that you're happy with before uploading any images.                                                                                                                                                                                                                                |
| 6   | **\[CFOG02T\] Grid-specific Course Settings**                                                                                                             
                                                                                                                                                             
  1.  Go into 'Edit Settings'                                                                                                                                
  2.  Do all Grid format related options appear under 'Course format'                                                                                        
  3.  Does 'Grid reset options' appear and do all options under that section match the appearance of other options?                                          | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2016> | 2018-05-08               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />                                                                                                                                                                                                 | 1.  Opened 'Edit settings' on the course page                                                                                                                                                                                                                                                                                                          
        2.  Expanded the 'Course format' section to be presented with a page of configuration options for the Grid format course layout                                                                                                                                                                                                                         
        3.  'Grid reset options' was present but the actual options within that section were off-set to the right. **This could be a theme issue?**                                                                                                                                                                                                             |
| 7   | **\[CFOG03T\] Grid Reset Options**                                                                                                                        
                                                                                                                                                             
  1.  Go into 'Edit Settings'                                                                                                                                
  2.  Navigate to 'Grid reset options'                                                                                                                       
  3.  Tick the boxes before pressing 'Save and display'. This will set all options back to the default values listed below (taken from live Moodle).         
      1.  Image container size                                                                                                                               
          1.  **Set the image container width**: 210                                                                                                         
          2.  **Set the image container ration relative to the width**: 3:2                                                                                  
      2.  Image resize method                                                                                                                                
          1.  **Set the image resize method**: Scale                                                                                                         
      3.  Image container style                                                                                                                              
          1.  **Set the border colour**: dddddd                                                                                                              
          2.  **Set the border width**: 3                                                                                                                    
          3.  **Set the border radius on/off**: On                                                                                                           
          4.  **Set the image container background colour**: FFFFFF                                                                                          
          5.  **Set the current selected image container text colour**: 3b53ad                                                                               
          6.  **Set the current selected image container colour**: FFFFFF                                                                                    
      4.  Section title options                                                                                                                              
          1.  **Hide section title option**: No                                                                                                              
          2.  **Section title grid length option**: 0                                                                                                        
          3.  **Section title box position**: Outside                                                                                                        
          4.  **Section title box position when 'Inside' option**: Top                                                                                       
          5.  **Show section title summary on hover option**: Yes                                                                                            
          6.  **Set the show section title summary on hover position option**: top                                                                           
          7.  **Section title text colour when 'Inside' option**: 000000                                                                                     
          8.  **Section title background colour when 'Inside' option**: ffffff                                                                               
      5.  New activity                                                                                                                                       
          1.  **Show new activity notification image**: Yes                                                                                                  
      6.  Fit section popup to the window                                                                                                                    
          1.  **Fit the section popup to the window**: No                                                                                                    | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2016> | 2018-05-11               | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Opened 'Edit settings' on the course page                                                                                                                                                                                                                                                                                                          
        2.  Changed a range of settings to make the Grid layout drastically different from the default                                                                                                                                                                                                                                                          
        3.  Pressed Save and then went back into the settings                                                                                                                                                                                                                                                                                                   
        4.  Selected all options under 'Grid reset options' before pressing save                                                                                                                                                                                                                                                                                
        5.  Everything was reset back to the default settings                                                                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                                                                                                                
        There are no issues with how this feature functions but there are more options for the grid layout, and therefore more things to reset, on Moodle 3.4 than on the live Moodle installation. It might be a good idea to have some documentation of what each setting does as there's nothing within the official Moodle documentation that explains it.  |

# One Topic (aka Tabs)

| \#  | Course Formats Tests                                                                                      | Where Tested                                                | Date Tested | Who Tested | Browser? IE/FF/Ch (incl. v.) | Passed? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> | Comments                                                                                                       |
|-----|-----------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|-------------|------------|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| 1   | **\[CFO001T\]  Sections/Topics display as expected from documentation**                                   
                                                                                                             
  1.  Go to course settings and change to new CF.                                                            
                                                                                                             
  2.  Save and return to course page.                                                                        
                                                                                                             
  3.  Are all sections previously displayed visible?                                                         
                                                                                                             
  4.  Does functionality expected occur - eg pop up/collapsed versions of content, moving between sections?  | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2044> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Set course format to the 'Onetopic format' before pressing 'Save and display'                              
        2.  All sections displayed and functioned as intended                                                           |
| 2   | **\[CFO002T\]  Editing Sections/Topics**                                                                  
                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2044> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />                                                                                                                                                                                                 | 1.  I was able to, rename and delete a section/topic                                                           
        2.  I was able to highlight a tab but the highlight isn't visible (**theme issue?**)                            |
| 3   | **\[CFO003T\]  Adding/Editing content**                                                                   
                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2044> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  I was able to add a file via a drag-and-drop before renaming and deleting it                               
        2.  I was able to drag-and-drop an image into the page and have it display directly on the page                 
        3.  I was able to show and hide an activity with the intended function                                          |
| 4   | **\[CFO004T\] Course/Activity Completion**                                                                
                                                                                                             
  1.  Does the activity completion box display as intended?                                                  
                                                                                                             
      1.  Students can manually mark the activity as complete                                                
      2.  Show activity as complete when conditions are met                                                  
                                                                                                             
  2.  Do activities and sections display as intended based on activity completion and access restrictions?   | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2044> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Switched role to Student via the Switch role to feature                                                    
        2.  Navigated through the content while ensuring all activities and sections became available when they should  
            1.  Tab 2 was visible with hidden content until activity MoodleTesting4 was complete                        
            2.  Tab 3 was hidden entirely until activity MoodleTesting14 was complete                                   |

# Topics

| \#  | Course Formats Tests                                                                                      | Where Tested                                                | Date Tested | Who Tested | Browser? IE/FF/Ch (incl. v.) | Passed? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /> | Comments                                                                                                       |
|-----|-----------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|-------------|------------|------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| 1   | **\[CFO001T\]  Sections/Topics display as expected from documentation**                                   
                                                                                                             
  1.  Go to course settings and change to new CF.                                                            
                                                                                                             
  2.  Save and return to course page.                                                                        
                                                                                                             
  3.  Are all sections previously displayed visible?                                                         
                                                                                                             
  4.  Does functionality expected occur - eg pop up/collapsed versions of content, moving between sections?  | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2046> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Set course format to the 'Topics' format before pressing 'Save and display'                                
        2.  All sections displayed and functioned as intended                                                           |
| 2   | **\[CFO002T\]  Editing Sections/Topics**                                                                  
                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2046> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" />                                                                                                                                                                                                 | 1.  I was able to, rename and delete a topic                                                                   
        2.  I was able to highlight a topic but the highlight isn't visible (**theme issue?**)                          |
| 3   | **\[CFO003T\]  Adding/Editing content**                                                                   
                                                                                                             
  1.  See [Tests-General](https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General)                             | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2046> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  I was able to add a file via a drag-and-drop before renaming and deleting it                               
        2.  I was able to drag-and-drop an image into the page and have it display directly on the page                 
        3.  I was able to show and hide an activity with the intended function                                          |
| 4   | **\[CFO004T\] Course/Activity Completion**                                                                
                                                                                                             
  1.  Does the activity completion box display as intended?                                                  
                                                                                                             
      1.  Students can manually mark the activity as complete                                                
      2.  Show activity as complete when conditions are met                                                  
                                                                                                             
  2.  Do activities and sections display as intended based on activity completion and access restrictions?   | <https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2046> | 2018-05-11  | JLH        | Chrome 52 on Windows 7       | <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" />                                                                                                                                                                                                           | 1.  Switched role to Student via the Switch role to feature                                                    
        2.  Navigated through the content while ensuring all activities and sections became available when they should  
            1.  Topic 2 was visible with hidden content until activity MoodleTesting4 was complete                      
            2.  Topic 3 was hidden entirely until activity MoodleTesting14 was complete                                 |

# Collapsed

<table>
<thead>
<tr class="header">
<th>#</th>
<th>Course Formats Tests</th>
<th>Where Tested</th>
<th>Date Tested</th>
<th>Who Tested</th>
<th>Browser? IE/FF/Ch (incl. v.)</th>
<th>Passed? <img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> <img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /> <img src="images/icons/emoticons/error.svg" alt="(error)" class="emoticon emoticon-cross" /></th>
<th>Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td><p><strong>[CFO001T]  Sections/Topics display as expected from documentation</strong></p>
<ol>
<li>Go to course settings and change to new CF. </li>
<li>Save and return to course page. </li>
<li>Are all sections previously displayed visible?</li>
<li>Does functionality expected occur - eg pop up/collapsed versions of content, moving between sections?</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </td>
<td><ol>
<li>Set course format to the 'Topics' format before pressing 'Save and display'</li>
<li>All sections displayed and functioned as intended</li>
</ol></td>
</tr>
<tr class="even">
<td>2</td>
<td><p><strong>[CFO002T]  Editing Sections/Topics</strong></p>
<ol>
<li>See <a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General">Tests-General</a></li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/help_16.svg" alt="(question)" class="emoticon emoticon-question" /></td>
<td><ol>
<li>I was able to, rename and delete a section/topic</li>
<li>I was able to highlight a section but the highlight isn't visible (<strong>theme issue?</strong>)</li>
</ol></td>
</tr>
<tr class="odd">
<td>3</td>
<td><p><strong>[CFO003T]  Adding/Editing content</strong></p>
<ol>
<li>See <a href="https://wiki.ucl.ac.uk/display/ISMoodle/Tests-General">Tests-General</a></li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </td>
<td><ol>
<li>I was able to add a file via a drag-and-drop before renaming and deleting it</li>
<li>I was able to drag-and-drop an image into the page and have it display directly on the page</li>
<li>I was able to show and hide an activity with the intended function</li>
</ol></td>
</tr>
<tr class="even">
<td>4</td>
<td><p><strong>[CFO004T] Course/Activity Completion</strong></p>
<ol>
<li><p>Does the activity completion box display as intended?</p>
<ol>
<li>Students can manually mark the activity as complete</li>
<li>Show activity as complete when conditions are met</li>
</ol></li>
<li>Do activities and sections display as intended based on activity completion and access restrictions?</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </td>
<td><ol>
<li>Switched role to Student via the Switch role to feature</li>
<li>Navigated through the content while ensuring all activities and sections became available when they should
<ol>
<li>Topic 2 was visible with hidden content until activity MoodleTesting4 was complete</li>
<li>Topic 3 was hidden entirely until activity MoodleTesting14 was complete</li>
</ol></li>
</ol></td>
</tr>
<tr class="odd">
<td>5</td>
<td><p><strong>[CFOC01T] Collapsed Topics-specific Course Settings</strong></p>
<ol>
<li>Go into 'Edit Settings'</li>
<li>Do all collapsed topic format options appear under 'Course format'</li>
<li>Does 'Collapsed Topics reset options' appear and do all options under that section match the appearance of other options?</li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </td>
<td><ol>
<li>Opened 'Edit settings' on the course page</li>
<li>Expanded the 'Course format' section to be presented with a page of configuration options for the Grid format course layout</li>
<li>'Collapsed Topics reset options' was present but the actual options within that section were off-set to the right. <strong>This could be a theme issue?</strong></li>
</ol></td>
</tr>
<tr class="even">
<td>6</td>
<td><p><strong>[CFOG02T] Grid Reset Options</strong></p>
<ol>
<li>Go into 'Edit Settings'</li>
<li>Navigate to 'Grid reset options'</li>
<li>Tick the boxes before pressing 'Save and display'. This will set all options back to the default values listed below (taken from live Moodle).
<ol>
<li>Display instructions<br />

<ol>
<li><strong>Display intrsuctions</strong>: Yes</li>
</ol></li>
<li>Layout
<ol>
<li><strong>Elements</strong>: No additions</li>
<li><strong>Structure</strong>: Topic</li>
<li><strong>Columns</strong>: One</li>
<li><strong>Column orientation</strong>: Horizontal</li>
<li><strong>Show the section summary when collapsed</strong>: No</li>
</ol></li>
<li>Reset colour
<ol>
<li><strong>Toggle foreground</strong>: 000000</li>
<li><strong>Toggle foreground hover</strong>: 000000</li>
<li><strong>Toggle background</strong>: F0F5F7</li>
<li><strong>Toggle background hover</strong>: FFFFFF</li>
</ol></li>
<li>Toggle alignment
<ol>
<li><strong>Toggle text alignment</strong>: Left</li>
<li><strong>Icon position</strong>: Left</li>
</ol></li>
<li>Toggle icon set
<ol>
<li><strong>Icon set</strong>: Arrow</li>
<li><strong>Toggle all icon hover</strong>: Yes</li>
</ol></li>
</ol></li>
</ol></td>
<td><a href="https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042" class="uri">https://v34.moodle-01-u.ucl.ac.uk/course/view.php?id=2042</a></td>
<td>2018-05-11</td>
<td>JLH</td>
<td>Chrome 52 on Windows 7</td>
<td><img src="images/icons/emoticons/check.svg" alt="(tick)" class="emoticon emoticon-tick" /> </td>
<td><ol>
<li>Opened 'Edit settings' on the course page</li>
<li>Changed a range of settings to make the Grid layout drastically different from the default</li>
<li>Pressed Save and then went back into the settings</li>
<li>Selected all options under 'Grid reset options' before pressing save</li>
<li>Everything was reset back to the default settings</li>
</ol>
<p>There are no issues with how this feature functions but there are more options for the grid layout, and therefore more things to reset, on Moodle 3.4 than on the live Moodle installation. It might be a good idea to have some documentation of what each setting does as there's nothing within the official Moodle documentation that explains it.</p></td>
</tr>
</tbody>
</table>


