# Moodle 2.8.8 upgrade - Tue 10th Nov 2015 (SCP 8185)

Summary

    Date of upgrade: Tue 10th Nov 2015, 8:00 - 9:00am

    Upgrading to:    Moodle 2.8.8+ (Build: 20151016) - Release notes: https://docs.moodle.org/dev/Moodle_2.8.8_release_notes

    Upgrading from:  Moodle 2.8.7+ (Build: 20150723) - Release notes: https://docs.moodle.org/dev/Moodle_2.8.7_release_notes

     

    UCL Subversion branch: https://svn.ucl.ac.uk/repos/isd/moodle28/branches/moodle_ucl-2.8.8_cceatga/ (Browse source (Trac))

     

    UAT: https://v288.moodle-uat.ucl.ac.uk/

     

#### Additional plugins upgraded

    | Plugin                                                  | From                                         | To                                            | 
    |----------------------------------|----------------------|----------------------------------------------|-----------------------------------------------| 
    | HTMLPlus                         | atto_htmlplus        | 2.7 (Build: 2014053003)                      | 2.9 (Build: 2015082100)                       | 
    | More font colours                | atto_morefontcolors  | 1.0 for Moodle 2.7-2.8                       | 1.2 for Moodle 2.7-2.9                        | 
    | Grid format                      | format_grid          | 2.8.2.2                                      | 2.8.2.4                                       | 
    | Collapsed Topics                 | format_topcoll       | 2.8.2.2                                      | 2.8.2.5                                       | 
    | Reading List items               | mod_aspirelist       | 2.7.4 (Build: 20150915)                      | 2.7.7 (Build: 20150928)                       | 
    | Group Choice                     | mod_choicegroup      | 1.8.2 for Moodle 2.7-2.8 (Build: 2015022302) | 1.8.3 for Moodle 2.7-2.9 (Build: 2015080100)  | 
    | HotPot module                    | mod_hotpot           | 2015.04.05 (65)                              | 2015-10-07 (77)                               | 
    | Forum (Advanced)                 | mod_hsuforum         | 2.7.0 (Build: 20141229)                      | 2.8.0 (Build: 20150708)                       | 
    | Scheduler                        | mod_scheduler        | 2.7.0                                        | 2.7.1                                         | 
    | Microsoft Word 2010 table format | qformat_wordtable    | 3.1.4 (Build: 20150402)                      | 3.4.3 (Build: 20150930)                       | 
    | Drag and drop onto image         | qtype_ddimageortext  | 1.6 for Moodle 2.6+                          | 1.8 for Moodle 2.6+                           | 
    | Multinumerical                   | qtype_multinumerical | 2.5.3 for Moodle 2.3-2.7                     | 2.5.4 for Moodle 2.3-2.9                      | 
    | Pattern match                    | qtype_pmatch         | 1.7 for Moodle 2.6+                          | 1.9 for Moodle 2.6+                           | 
    | Essential                        | theme_essential      | 2.8.1.4 (Build: 2015040900)                  | 2.8.1.10 (Build: 2015061903)                  | 
     
    The Jmol filter was not upgraded due to problems found in testing which are being investigated. It remains at release 4.2 (Build: 2015010200).
    We had intended to upgrade to release 5.0 (Build: 2015091800).

 

#### Tasks

~~Switch on Marking Workflow~~ (bumped - 'to be prioritised by ELE'). See <https://svn.ucl.ac.uk/projects/isd/moodle28/ticket/42>

 

 
