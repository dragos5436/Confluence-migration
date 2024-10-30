# Moodle Gradebook Setup Error

Sometimes when users try to access the 'Grades' tab in a Moodle course they see the message "Grade recalculations are being performed in the background. Displayed grades may be incorrect until the process is complete". They may also me unable to export grades, running into the following error:

### Explanation

The course grade calculation on the course refers to non-existent grade item idnumbers, which makes the calculation fail. 

### Example

In this case, elements like \#\#gi505245\#\# or \#\#gi505233\#\# are placeholders for the idnumbers that do not exist. They need to either be removed or replaced with idnumbers for grade items that currently exist in the course. These are listed below the calculation:

### Cause

When a graded activity is removed from the course, in the final grade calculation formula it is replaced by an arbitrary id (eg \#\#gi123456\#\#) which leads to the calculation failing. It is a known issue in Moodle that hasn't been fixed yet. Ideally, the formula should change automatically, but until this is resolved it will have to be done manually.

### Prevention

When removing/replacing graded activities from a course make sure to amend the Course total grade calculation formula so that it takes into account the changes. 

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2024-6-3\_14-5-49.png](attachments/330466896/330466888.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2024-6-3\_14-8-8.png](attachments/330466896/330466890.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [image-2024-6-3\_14-9-22.png](attachments/330466896/330466892.png) (image/png)

