# Block - Library resources v2.0

## Purpose

This block was created to enhance the current Library Resources block; the current block only allows for a single reading list, and this new block will allow for up to 3 reading lists and 3 past exam papers. These will be custom too as in the previous incarnation you could only select if you wanted to use the reading list and this would use the courses idnumber to generate the link to the reading list this is now custom.

## Installation Instructions

To install this plugin export the code from <https://svn.ucl.ac.uk/repos/isd/moodle2/moodle2-main/trunk/data/apache/htdocs/moodle/blocks/library_resources_new/&nbsp>; to the blocks folder of moodle. Then visit the "notifications" tab and install as any other plugin.

Once finished go to a course and add the new block, and click configure to check all the links exist.

## Tables Created

This created a single table called "block\_library\_resources\_new" that is used to store the data of the relevant links this is auto populated when the first block is initiated.

## How to Configure

To configure this block simply click on the edit button, and then from this screen you can decide which library source you wish to display for the specific course this block is connected to. For reading lists or past exam papers simply make sure the display option is "checked" and that the code box has a valid library code in it or the final 3 libary options if you wish these to be displayed simply make sure the display box is "checked".
