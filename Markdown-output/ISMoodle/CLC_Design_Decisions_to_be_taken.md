# CLC Design Decisions to be taken

Areas we need to think about:

1) Where should the auto-suggest logic exist?

2) Should the bits that look at the MIM database be abstracted into the clcadmin plugin? So that they could be switched out within clcadmin once we re-integrate with SITS Cloud?

→ Decision was for this to be within local-course\_rollover plugin for now.

3) Do we want to add metadata to the courses? (course custom fields)

e.g. This course is one of:

-   SITS module aligned,
-   SITS programme aligned,
-   not aligned,
-   timeless

If aligned, store array of module(s) / programme(s) it’s aligned to.

4) Are “category ID numbers” (the string not the number) used by anything?

If not, then we should update the current structure to be aligned with the SITS-generated ones.

5) Do we want to limit how many times a course is rolled over.

→ This seems like a yes & we should make it an additional permission for someone to override that (e.g. for LTs, etc)

6) Do we generate a category structure for 2021-22 and place rolled over courses into it?

7) Where do we place timeless courses?


