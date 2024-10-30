# Solr Search Engine Setup

1.  Log a ticket to ISD.IS Hybrid Infrastructure Services
    1.  install PHP Solr extension: [pecl.php.net/package/solr](http://pecl.php.net/package/solr)
    2.  Increase php.ini memory\_limit TO 6gb
2.  Register for a free trial <https://app.searchstax.com/freetrial/>
3.  Log into searchstax &gt; click create deployment &gt; choose aws &gt; uk region &gt; pick latest solr version &gt; create deployment
4.  Once deployment is running &gt; setup IP rule of mdl-preview01u.ucl.ac.uk
5.  Click on the solr hostname &gt; setup a username/password (must have admin role)
6.  log into solr and create an index
7.  Log into Moodle &gt; navigate to site admin &gt; plugins &gt; search &gt; solr
8.  Enter the following details &gt; save
    1.  Host name: [ss313519-3dsggg6r-eu-west-2-aws.searchstax.com](http://ss313519-3dsggg6r-eu-west-2-aws.searchstax.com)
    2.  Index name: *the index you set on solr*
    3.  Secure mode: ticked
    4.  Port: 443
    5.  HTTP authentication username: *the username you set on solr*
    6.  HTTP authentication password: *the password you set on solr*
    7.  Enable file indexing: ticked
    8.  Maximum file size to index (kB): 0
9.  Navigate to site admin &gt; plugins &gt; search &gt; manage global search
10. Go through each step until all green
11. ssh onto [mdl-preview01u.ucl.ac.uk](http://mdl-preview01u.ucl.ac.uk) &gt;create a new tmux session <https://danielmiessler.com/study/tmux/>
12. run following to start index 'php /data/apache/moodle-vhosts/*name of moodle folder*/search/cli/indexer.php'

