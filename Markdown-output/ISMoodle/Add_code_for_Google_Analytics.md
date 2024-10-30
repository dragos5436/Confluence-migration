# Add code for Google Analytics

Some Javascript needs to be added to each of the themes in order that stats about page accesses can be logged at the Google Analytics web site.

**Moodle 1**

The theme folders are ucl-blue, ucl-darkgreen, ucl-generic, ucl-pink, ucl-purpleblue and ucl-royalblue in /data/apache/htdocs/moodle/theme. The following code should be added just before the &lt;/body&gt; at the end of the **footer.html** file

**Moodle 2**

Log into your Moodle site as an admin user, and navigate to the Additional HTML option:

Settings &gt; Site administration &gt; Appearance &gt; Additional HTML

Paste the tracking code into the first box which is called “Within HEAD” and save.

**tracking code**

``` javascript
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-4551567-2']);
  _gaq.push(['_setDomainName', 'ucl.ac.uk']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
```

To view the Google Analytics reports, go to <http://www.google.com/analytics> and log in as is-google-analytics@ucl.ac.uk OR ccaalts@ucl.ac.uk - the password is stored in LTSS Restricted folder for both accounts. This account can also give other gmail accounts access to the reports.
