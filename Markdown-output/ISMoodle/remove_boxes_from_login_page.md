# remove boxes from login page

LTSS have asked that the boxes are removed from the login page. To do this you need to comment out a rule in the stylesheet. This needs to be done for each 'theme'.

Go to **/data/apache/htdocs/moodle/theme/ucl-blue** and edit the **fw\_layout.css** file and comment out the following lines of code (around line 144) to remove the remove **.subcontent** rule

``` java
/* .loginbox .subcontent {
  border-width:1px;
  border-style:solid;
} */
 
```

The **.subcontent** rule is already defined in **styles\_layout.css**

-   See also Remedy/ARS ISH0046159

