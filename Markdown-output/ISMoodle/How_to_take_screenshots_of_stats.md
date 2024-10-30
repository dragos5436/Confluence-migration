# How to take screenshots of stats

1.  load up every server required to collect stats from, i use a program called <https://kuthulu.com/gcm/>
2.  htop into every server &gt; arrange the panels so the memory/cpu is visible
3.  open up google analytics, new relic and mysql enterpise monitoring
4.  you should now have the following open and looks like this [Moodle-Exams12-05-2020-11:54:59.png](attachments/137139533/137139606.png)
5.  copy file [auto-screenshots.sh](attachments/137139533/137139609.sh) to a local location &gt; the file does the following

    while true; do scrot -d 60 \#loop the scrot command every 60 seconds

    'Moodle-Exams-%d-%m-%Y-%H:%M:%S.png' \#name of the file to save

    'mv $f /home/ehsananwar/Pictures/Moodle-Exams-MayJune-13052020' \#move the file to this location

6.  amend the save to location in the file to a local path &gt; save file
7.  execute the script &gt; this will now take a screenshot of your desktop and save to the local location every 60 seconds

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle-Exams12-05-2020-11:54:59.png](attachments/137139533/137139606.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [auto-screenshots.sh](attachments/137139533/137139609.sh) (application/x-sh)

