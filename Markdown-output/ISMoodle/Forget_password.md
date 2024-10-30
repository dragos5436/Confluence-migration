# Forget password

On the front page it provides the user with a link to follow if they forget their password. As we use LDAP this is not useful for our users.

Remove it by going to /data/apache/htdocs/moodle/**login/index-form.html** and commenting out lines **63** to **73** with &lt;!-    -&gt; e.g.

``` java
<!--      <div class="subcontent forgotsub">
        <div class="desc">
          <?php print_string("forgotten") ?>
        </div>
        <form action="forgot_password.php" method="post" id="changepassword">
          <div class="forgotform">
            <input type="hidden" name="sesskey" value="<?php echo sesskey() ?>"/>
            <input type="submit" value="<?php print_string("passwordrecovery") ?>" />
          </div>
        </form>
      </div> -->
```

If the **login block** is used the following file also needs to be edited:

    /data/apache/htdocs/moodle/**blocks/login/block\_login.php**

commenting out line **37**:

``` java
  //  $forgot = $wwwroot . '/login/forgot_password.php';
```
