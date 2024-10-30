# login block

The Login block comes as part of Moodle, but we have made slight changes to it as follows:

-   In the file **/moodle/blocks/login/block\_login.php** change (around line 51) to add two non-breaking spaces (  ) between the label and text box where the password is entered, this helps with the alignment of the text boxes:

``` java
$this->content->text .= '<div class="c1 fld password"><label for="login_password">'.get_string('password').'</label>&nbsp;&nbsp;';
```

-   In the file **/moodle/blocks/login/styles.php** change the alignment from right to left as shown below (around line 19):
    ``` java
    .block_login .loginform div {
      margin:0.3em 0.8em;
      text-align:left;
      display:block;
    }
    ```

-   In the file **/moodle/lang/en\_utf8/moodle.php** (around line 1551) change 'username' to 'UCL userid'
    ``` java
    $string['username'] = 'UCL userid';
    ```


