# Integration Workshops Notes and Diagrams Nov 2022

Whiteboard links:

<https://app.whiteboard.microsoft.com/me/whiteboards/p/c3BvOmh0dHBzOi8vbGl2ZXVjbGFjLW15LnNoYXJlcG9pbnQuY29tL3BlcnNvbmFsL2NjZWFuYm9fdWNsX2FjX3Vr/b!l6RWYKLUWEOE4Yi10aQRt_n0idFBsgtGig43-nLOtND1YvrRcOT3S7RrpwYO_nam/013NJOLOSLS2DWU72L4FFYOVT3274REAEO>

<https://app.whiteboard.microsoft.com/me/whiteboards/p/c3BvOmh0dHBzOi8vbGl2ZXVjbGFjLW15LnNoYXJlcG9pbnQuY29tL3BlcnNvbmFsL2NjZWFuYm9fdWNsX2FjX3Vr/b!l6RWYKLUWEOE4Yi10aQRt_n0idFBsgtGig43-nLOtND1YvrRcOT3S7RrpwYO_nam/013NJOLOU76VKLITMU7ND22MTYV47G2T2J>

<https://app.whiteboard.microsoft.com/me/whiteboards/p/c3BvOmh0dHBzOi8vbGl2ZXVjbGFjLW15LnNoYXJlcG9pbnQuY29tL3BlcnNvbmFsL2NjZWFuYm9fdWNsX2FjX3Vr/b!l6RWYKLUWEOE4Yi10aQRt_n0idFBsgtGig43-nLOtND1YvrRcOT3S7RrpwYO_nam/013NJOLOV4SYH3ROKODVB2DAVZWLCDJLVX>

<https://app.whiteboard.microsoft.com/me/whiteboards/p/c3BvOmh0dHBzOi8vbGl2ZXVjbGFjLW15LnNoYXJlcG9pbnQuY29tL3BlcnNvbmFsL2NjZWFuYm9fdWNsX2FjX3Vr/b!l6RWYKLUWEOE4Yi10aQRt_n0idFBsgtGig43-nLOtND1YvrRcOT3S7RrpwYO_nam/013NJOLOXWEMJARX53YFGIYLFYQVMWCJZ4>

Integration Worksop 8/11/2022
[Moodle Integration Manager (MIM) - SITS/CMIS integration](Moodle_Integration_Manager_MIM_-_SITS_CMIS_integration)

AD
ldap\_sync creates the users with basic data via scheduled task auth\_ldap::sync\_users

local\_userprofilefields\_import takes UCL\_SIS\_Userprofilefields.csv and imports the data in Moodle user table

SITS exposes data via materialised views. This data is copied in moodle\_int\_management database in moodle prod db

CMIS exposes data via views. This data is copied in moodle\_int\_management database in moodle prod db

user\_profile field import depends in MIM running to refresh the data in the view that it needs to refresh data in Moodle. If MIM does not run the user\_profile field will run but with old data.

Plugins used:

-   auth\_ldap - moodle core. Used in AD
-   local\_userprofilefields\_import - UCL developed. Used in SITS
-   enrol\_imsenterprise - moodle core. Used in SITS
-   enrol\_dbuserrel - UCL developed. Used in SITS (tutor/tutee relationship)
-   block\_portico\_enrolments

Cron triggered (run via crons) in admin01: user: sa-tux-moodlecron

usr/local/bin/mdl\_int\_mgmt\_RunSits.sh at 1:15am - generates below xml and csv files

-   UCL\_SIS\_Userprofilefields.csv - adds more data to the user (see above wiki page)
    - UCL\_SIS\_export.xml - is the enrolment data
    - triggers sits\_students table refresh via Stored procedure in the moodle\_int\_management which feeds view sits\_v\_personaltutorrole. Moodle enrol\_dbuserrol uses this view to run the cron dbuserrel\_sync

usr/local/bin/mdl\_int\_mgmt\_RunCmis.sh at 2:15am - pushes data into Moodle rest api; relies on a read-only copy from Moodle prod for groups/groupings to push the data to Moodle prod

tutor/tutee relationship - <https://www.ucl.ac.uk/students/academic-support/personal-tutors/personal-tutoring>

MV views exposed by SITS:
ucl\_bdo\_v\_moodle\_faculties
ucl\_bdo\_v\_moodle\_department
ucl\_bdo\_v\_moodle\_student
ucl\_bdo\_v\_moodle\_programme
ucl\_bdo\_v\_moodle\_route
ucl\_bdo\_v\_moodle\_module\_inst
ucl\_bdo\_v\_moodle\_module\_struc
ucl\_bdo\_v\_moodle\_student\_enrl
ucl\_bdo\_v\_moodle\_assignment

Example: ucl\_bdo\_v\_moodle\_student depends on

Codes takes the data from the above view and copies it in the moodle\_int\_management db corresponding tables adding \_dump at the end of the name.
Then after further processing it will produce the xml file for the SIST integration.

MIM code has a user with set of credentials that can access the SITS MV above and dump the data in moodle\_int\_management db in AWS 

CMIS Groups

Cron job

**block\_portico\_enrolment datails:**

sits\_mapping\_statuses - if vle\_number changes it could mess up integration SB

Questions:

-   BDO ids being depreciated. What do we do about them?


