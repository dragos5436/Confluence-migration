# Moodle-SITS Assessment Integration MVP Outline

Approach:

-   Lean development
-   leverage prior work in the Moodle world and in Assessment@UCL space
-   aim for MVP go-live in late May / early June 2023
-   [Modern API Integration Principles](Modern_API_Integration_Principles) and Patterns

What is included:

-   Link one Moodle activity to one SITS Assessment Component
-   only available for courses with mappings to a Module Delivery 
-   push numerical grades 0-100
-   manual trigger for push
-   push the submission date & time
-   Activities: Moodle Assignment, Turnitin Assignment (only with 1 part - most common) and Quiz.
-   Limit Assessment Component availability to ensure only compatible [SITS Marking Schemes](SITS_Marking_Schemes) and [SITS Assessment Types](SITS_Assessment_Types) can be mapped. And for ***Exam*** Assessment types, only allow those components where the exam room code = EXAMMDLE

What we will do later

-   Mapping one Moodle Activity to multiple assessment components for different module deliveries
-   push grades from a scale e.g. A-F
-   SORAs and ECs - create the user/group deadline overrides
-   continuous updating of grades as marking takes place - proper integration
-   Late / non-submission reporting
-   Activities: Workshop, LTI, Moodle Gradebook, multi-part Turnitin assignments
-   Course level overview of the assessment component mappings and ability to push them all. (may do sooner)
-   re-assessments

References

-   [Marks Entry Process](https://wiki.ucl.ac.uk/display/ISMoodle/Marks+Entry+Process)
-   [Moodle to SITS Grade Transfer Process](https://wiki.ucl.ac.uk/display/ISMoodle/Moodle+to+SITS+Grade+Transfer+Process)

