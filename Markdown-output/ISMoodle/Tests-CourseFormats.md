# Tests-CourseFormats

Generic tests for new/updated Course Format plugins

-   [All Formats](#TestsCourseFormats-AllFormats)
    -   [\[CFO001T\] Sections/Topics display as expected from documentation](#TestsCourseFormats-%5BCFO001T%5DSections/Topicsdisplayasexpectedfromdocumentation)
    -   [\[CFO002T\] Editing Sections/Topics](#TestsCourseFormats-%5BCFO002T%5DEditingSections/Topics)
    -   [\[CFO003T\] Adding/Editing content](#TestsCourseFormats-%5BCFO003T%5DAdding/Editingcontent)
    -   [\[CFO004T\] Course/Activity Completion](#TestsCourseFormats-%5BCFO004T%5DCourse/ActivityCompletion)
-   [Grid Format](#TestsCourseFormats-GridFormat)
    -   [\[CFOG01T\] Grid Tile Images](#TestsCourseFormats-%5BCFOG01T%5DGridTileImages)
    -   [\[CFOG02T\] Grid-specific Course Settings](#TestsCourseFormats-%5BCFOG02T%5DGrid-specificCourseSettings)
    -   [\[CFOG03T\] Grid Reset Options](#TestsCourseFormats-%5BCFOG03T%5DGridResetOptions)
-   [Collapsed Topics](#TestsCourseFormats-CollapsedTopics)
    -   [\[CFOC01T\] Collapsed Topics-specific Course Settings](#TestsCourseFormats-%5BCFOC01T%5DCollapsedTopics-specificCourseSettings)
    -   [\[CFOG02T\] Grid Reset Options](#TestsCourseFormats-%5BCFOG02T%5DGridResetOptions)

### All Formats

##### \[CFO001T\]  Sections/Topics display as expected from documentation

1.  Go to course settings and change to new CF. 
2.  Save and return to course page. 
3.  Are all sections previously displayed visible?
4.  Does functionality expected occur - eg pop up/collapsed versions of content, moving between sections?

##### \[CFO002T\]  Editing Sections/Topics

1.  See [Tests-General](Tests-General)
     

##### \[CFO003T\]  Adding/Editing content

1.  See [Tests-General](Tests-General)

##### \[CFO004T\] Course/Activity Completion

1.  Does the activity completion box display as intended?

    1.  Students can manually mark the activity as complete
    2.  Show activity as complete when conditions are met

2.  Do activities and sections display as intended based on activity completion and access restrictions?

### Grid Format

##### \[CFOG01T\] Grid Tile Images

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
8.  Can an image be deleted?

##### \[CFOG02T\] Grid-specific Course Settings

1.  Go into 'Edit Settings'
2.  Do all Grid format related options appear under 'Course format'
3.  Does 'Grid reset options' appear and do all options under that section match the appearance of other options?

##### \[CFOG03T\] Grid Reset Options

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
        1.  **Fit the section popup to the window**: No

### Collapsed Topics

##### \[CFOC01T\] Collapsed Topics-specific Course Settings

1.  Go into 'Edit Settings'
2.  Do all collapsed topic format options appear under 'Course format'
3.  Does 'Collapsed Topics reset options' appear and do all options under that section match the appearance of other options?

##### \[CFOG02T\] Grid Reset Options

1.  Go into 'Edit Settings'
2.  Navigate to 'Grid reset options'
3.  Tick the boxes before pressing 'Save and display'. This will set all options back to the default values listed below (taken from live Moodle).
    1.  Display instructions
        1.  **Display intrsuctions**: Yes
    2.  Layout
        1.  **Elements**: No additions
        2.  **Structure**: Topic
        3.  **Columns**: One
        4.  **Column orientation**: Horizontal
        5.  **Show the section summary when collapsed**: No
    3.  Reset colour
        1.  **Toggle foreground**: 000000
        2.  **Toggle foreground hover**: 000000
        3.  **Toggle background**: F0F5F7
        4.  **Toggle background hover**: FFFFFF
    4.  Toggle alignment
        1.  **Toggle text alignment**: Left
        2.  **Icon position**: Left
    5.  Toggle icon set
        1.  **Icon set**: Arrow
        2.  **Toggle all icon hover**: Yes

