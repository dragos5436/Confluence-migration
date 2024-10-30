# Bulk user download

Downloading users as a file from Users&gt;Accounts&gt;Bulk User Actions&gt;Download isn't working
Output was displayed in browser instead of allowing the user to download as a file. With debugging turned on it was displaying error message 'headers already sent'. This has been fixed on live see SCP 3810. The extra LF characters were removed from the end of /data/apache/htdocs/moodle/lang/en\_utf8/block\_course\_menu.php.

12/12/08

I've discovered that these extra LF chars get created if you copy a file from a windows os to unix.
