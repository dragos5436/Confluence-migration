# Course alignment & Course custom fields & categories

1) Category Structure

We will generate Category structure for both 2021-22 and 2022-23, when a course rollover is requested, we will place the rolled over course into the relevant 2022-23 category (assuming the mappings for that course are for 2022-23) and the source course into the relevant 2021-22 category (assuming the mappings for that course are for 2021-22).

2) Alignment

We should record wether a course is:

-   module aligned
-   programme aligned
-   a miscellaneous/supplementary course which is aligned to an academic year
-   timeless 

If, **module aligned** we should place the course into the category for the Entity so: Academic Year&gt;Faculty&gt;Department&gt;**Entity**

If, **programme aligned** we should place the course into a "Programme" sub-category of the **Department** so: Academic Year&gt;Faculty&gt;Department&gt;**Programme**

If, **a miscellaneous course which is aligned to an academic year** we should place the course into a "Miscellaneous" sub-category of the **Department** so:  Academic Year&gt;Faculty&gt;Department&gt;**Miscellaneous**

A separate, simplified category structure for **Timeless** courses should be developed, the rollover tool won't move courses into this structure. 

Moving existing Timeless courses into this structure and out of the current one could either be done as a large human driven cleanup exercise or we might be able to develop a simple tool for this. To be discusses/explored.

3) Course Custom Fields

We should create course custom fields which record this data:

-   alignment
-   academic year
-   for module or programme aligned, an array of the module short codes

We could then make use of this in multiple ways in the future:

-   differing approach for auto-suggest depending on alignment type
-   auto-rollover
-   dashboard filtering by AY & course type

4) UI changes

This could be added to Screen \#1 as below, or as a new screen between \#1, after the optional full mappings selection and \#2 - if  the latter, we could pre-select "Programme aligned" if all the mappings are programmes or module aligned if only modules are mapped

![](attachments/198911425/198911432.png)

5) Data analysis for decision making

<https://liveuclac-my.sharepoint.com/:w:/g/personal/uczcsgi_ucl_ac_uk/Efj4PP7HTcFCkkwIBzMj7J0B9e_uQaY5HHOSTbPiQqc7rg?e=oobLss>

CTP-757 - Mappings Analysis Done

## Attachments:

<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Rollover Tool Wireframe-Screen \#1 with alignment - multi-course mapping.drawio.png](attachments/198911425/198911431.png) (image/png)
<img src="images/icons/bullet_blue.gif" width="8" height="8" /> [Moodle Rollover Tool Wireframe-Screen \#1 with alignment - multi-course mapping.drawio annotated.png](attachments/198911425/198911432.png) (image/png)

