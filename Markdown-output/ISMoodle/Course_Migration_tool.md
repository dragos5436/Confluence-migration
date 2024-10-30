# Course Migration tool

# Introduction

This tool was created to facilitate the migration of courses from the pre-AMP, pre-upgrade instance of Moodle to a newer instance which had been refactored for the new AMP structure. It can be made available to a range of end users to allow them to migrate their own courses. It could be used in future for other migrations, although is liable to need some tweaking as a lot of manual work still needs to be done to enable this.

The tool is based on City University of London (CUL) Rollover Tool. Reference for that is here:
- <https://github.com/amandadoughty/moodle_local_culrollover#readme>

# Installation

The tool is installed on both instances of Moodle, source and destination. Migrations are scheduled via cron on the source installation to be pushed across to the destination instance.

The tool must be installed on a location available to both source and destination installations. This invariably means mounting an NFS directory for both.

# Basic use

The tool requires shell courses to be created and mapping between the source and destination course can be done via the interface, via autocomplete dropdown lists. Once a mapping has been selected it is added to a list which is worked through progressively by the schedule. The contents of each migration can be select - either course content and staff enrolment or staff enrolment only.

# Scheduled tasks

Tasks are scheduled using Moodle's task API: <https://moodle.ucl.ac.uk/admin/tool/task/scheduledtasks.php>

There are three tasks:

## Fetch destination course list

Expected location: \\local\_migratecourses\\task\\fetchdestcourses\_task
Runs on: source instance

Initiates webservice call to retrieve the full list of courses available on the destination instance. Populates a temporary table with the results and then uses that temporary table to update the tool. This list is used for the aforementioned autocomplete for selecting destination courses.

## Course migration processing

Expected location: \\local\_migratecourses\\task\\migratecourses\_task
Runs on: source instance

As per the original CUL Rollover Tool, creates a backup of the pending course, with the associated metadata manifest file.

Backups are saved at that shared location (i.e. /moodlefs-mip-migration/ucl\_migratecourses/) and use a particular naming convention to make them easier to detect:

YYYYMMDDTHHMMSS\_\_mid\_\_src\_\_dst.mbz

Metadata manifest files will be saved within (i.e. /moodlefs-mip-migration/ucl\_migratecourses/), and will be named as follows:

manifest\_YYYYMMDDTHHMMSS\_\_mid\_\_src\_\_dst.json

## Course restore processing

Expected location: \\local\_migratecourses\\task\\restorecourses\_task
Runs on: destination instance

Restores all backup files from the shared location (i.e. /moodlefs-mip-migration/ucl\_migratecourses/) for which there is an associated metadata manifest file in the same path.

When the restore process completes, the manifest file will be moved to the 'processed\_success' or 'processed\_failure' subdirectory, according to whether it succeeded or failed.


