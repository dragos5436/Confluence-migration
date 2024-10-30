# Portico Mappings

This is a moodle courses block that provides the following functionality:

-   Assigning modules to a course
-   Removing modules from a course

It exists within blocks\\portico\_enrolments

**Key Files**

-   portico\_model.php (located in portico\_enrolments\\mvc)  - responsible for interacting with moodle\_sits\_management\_dev2 database
-   portico\_controller.php (located in portico\_enrolments\\mvc)  - responsible for interacting with portico\_model.php & generating data
-   view php (located in portico\_enrolments) page that handles the user view & initiates a portico\_controller class
-   misc .php files (located in portico\_enrolments\\mvc\\views) – files for handling AJAX POST & GET requests
-   mappings.js (located in portico\_enrolments\\mvc\\javscript) – JavaScript file

**Mapping process**

If the block has been activated on a selected course, it will display all modules associated with the course, otherwise message notifies the user to add some modules.

-   Input the code or name of the module you wish to map to the selected course
-   Ensure Module appears in the “Mapping items” select box
-   Click search
-   Retrieved modules will be displayed below
-   Select one or more modules & click map to course
-   The selected modules will be displayed within a pending list
    -   This list of pending items will be added to the database table “moodle\_course\_and\_module” in moodle\_sits\_management\_dev2
    -   Each new entry’s moodle\_export status will be set to “pending”, & its status to “mapped”
    -   Should the user change their mind about adding a new module to the course, they should select it from the list & click the “Remove from pending” button – this will remove the entry from the database; it is important that any removals are actioned before the sits\_filter\_2 script generates the moodle xml output

**Un-mapping process**

This includes removing modules currently mapped to the current course.

-   Select one or more  modules from the list & then click “Unmap”
-   The module(s) will appear in the pending list
-   Similar process to mapping, should the user wish to undo this process, select the relevant module & click Remove from pending”

