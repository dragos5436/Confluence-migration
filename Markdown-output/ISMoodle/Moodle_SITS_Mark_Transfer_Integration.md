# Moodle/SITS Mark Transfer Integration

## Overview

This integration between Moodle and SITS  is designed to automate the transfer of summertive assessment actual marks from Moodle courses linked by a corresponding module assessment component to the student record.

## Development Methodology

This work will apply Agile developmental practices of an iterative, "development/engagement/feedback/development" cycle. This methology will be used in initial development phases, pilots and on into general release 

## Core Requirements

-   Transfer actual marks associated with summertive activities from Moodle to SITS
-   Ensure mark transfers are mapped against a corresponding module assessment component
-   Reduce the risk of selecting an incorrect mapping
-   Create the solution using using approved ISD standards (Easkit, StuTalk)
-   Lean development and process, make use of exisiting technology (e.g. endpoints) where appropriate

## Benefits

-   Reduced in administration time for mark transfer
-   Reduction in administration for mark transfer error correction
-   Reduction in manual mark transfer errors
-   Alignment with SRS policy and guidance
-   Additional control/governance over process by SRS

## Approach

### Initial Design

The initial approach for the this integration was to make the process Moodle activity focused. This meant that a user would first choose the activity they wanted to use for assessment and as part of configuring the assessment within the Moodle settings select the assessment component from a drop down list. While this process worked, during feedback from endusers and working with our stakeholders in SRS we agreed to change this approach. It was felt that by simply providing the administrators with a single selection drop down we were creating a significant risk of miss-selection. So it was agreed that we would reverse the process thinking and put the assessment component as the primary choice.

### Assessment Wizard Inital Design

To do this we created the concept of an "assessment wizard" that would guide the end user through a series of modular steps/processes.  The wizard would present to the course administrators/tutors all the available Module Assessment Pattern (MAP) sequences available to the course as enabled by the Module Deliverys selected for that course by the MIM (Portico Mapping Tool). The list presented would then be additionally filtered on assessment type to remove assessment types that are not supported by Moodle activities such as WiseFlow.

The user would then select the MAP sequence they wish to transfer grades too and would be passed to another part of the wizard where they would choose the source. At the initial stage this will only be "Select an existing assessment activity" or "Create a new assessment activity. At this selection screen within the wizard where we would in the future add additional choices such as Grade Book item selection or advanced complex scenarios, such as multipart Turnitin.

If the user chooses an exisiting activity, they would be presented with a screen that shows all the exisiting assessment activitys within their Moodle course that are allowed to be grade pushed. Within the initial design we are limiting the assessment activity types to Moodle Assignment, Moodle Quiz and Turnitin Assignment. In the future we would add in additional assessment activities such as Workshop as well as the ability to transfer LTI activity types and direct Gradebook line entrys.

If the user chooses to create a new activity the screen will display the activity types available to them and once selected would take them to the acitivty settings pages for each Moodle. Upon completing the activity setup they would then be presented back to the activity listing panel where they can slect the activity to be linked.

Once an activity has been chosen to link with a specific MAP sequence then the user would be presented with a confirmation screen which once completed would return them to the initial overview screen.

This assessment wizard will enable us in the future to add additional functionality and selection by adding braching choices.

[<img src="rest/documentConversion/latest/conversion/thumbnail/302809980/1" height="250" />](/download/attachments/260866869/Mark%20Transfer%20Wizard%20Paper%20overview%20Nov%2023.pptx?version=1&modificationDate=1701093271000&api=v2)

## Timeline

-   Initial development of pilot 1 MVP - TI-03/04 22/23
-   Pilot 1 MVP - October 2023
-   Development for pilot 2 MVP -  TI-01 23/24
-   Pilot 2 MVP - January 2023
-   Re-development and testing TI-02 23/24
-   General release of MVP late March 2024
-   Support and post release development will commence in TI-03

[<img src="rest/documentConversion/latest/conversion/thumbnail/302810016/1" height="250" />](/download/attachments/260866869/Mark-Transfer-Timeline.pptx?version=1&modificationDate=1701098516000&api=v2)

# Additional Pages

[Marks Transfer High Level Design](Marks_Transfer_High_Level_Design)

[Marks Transfer Integration Roadmap](Moodle-SITS_Assessment_Integration_MVP_Outline)

[Moodle-SITS Assessment integration MVP Outline](Moodle-SITS_Assessment_Integration_MVP_Outline)

[Mark Transfer Processs Diagrams (Business Analyst - Pre-development)](Marks_Entry_Process)

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Mark Transfer Wizard Paper overview Nov 23.pptx](attachments/260866869/302809980.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Mark-Transfer-Timeline.pptx](attachments/260866869/302810016.pptx) (application/vnd.openxmlformats-officedocument.presentationml.presentation)

