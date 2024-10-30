# Themes CSS changes

More about themes is available at How Moodle works

We have adjusted the **ucl-blue** theme on the wasdev-a (moodle-dev) server as follows:

-   **/moodle/theme/ucl-blue/fw\_fonts.css** (edit around lines 82)

``` java
.logininfo,
#header-home .headermenu font {
     font-size:1em;
     /* was .08em */
}
```

-   **/moodle/theme/ucl-blue/fw\_layout.css**

``` java
.generalbox {
     /*Main (bottom) box for activities*/
     width:97%;
     /* was 90% */
     border-width:1px;
     border-style:solid;
     margin-top:10px;
     margin-bottom:10px;
     padding:10px;
}
```

-   **/moodle/theme/ucl-blue/fw\_color.css**
    ``` java
    .generalbox {
       border-color:#193b5a;
       background-color:#FFFFFF;
       /*was EAFCFF*/
    }

    .generalbox h2  {
      color:#193b5a;
      background:#FFFFFF;
      /*was EAFCFF*/
    }
    ```

    ``` java
    .sideblock .content {
       border-color:#cee7ee;
       background-color:#eafcff;
       /*was #FFFFFF*/
    }
    ```


