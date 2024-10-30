# Elastic Search Engine Setup

**Elastic search**

1.  navigate to <https://aws.amazon.com/elasticsearch-service/>
2.  create a new domain with the following
    1.  Elasticsearch version 7.9
    2.  t3.small.elasticsearch
    3.  Require HTTP - Enabled
    4.  None to node encryption - Enabled
    5.  Encryption at rest - Enabled
3.  click the action drop down &gt; click modify access policy
4.  restrict to mdl-preview01u ip address and moodle-es ARN (telnet [telnetmyip.com](http://telnetmyip.com) to get public ip of a VM)
5.  Navigate to moodle &gt; site admin &gt; plugins &gt; search &gt; elastic &gt; fill in details as following
    1.  plugins settings
        1.  hostname - <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com>
        2.  port - 443
        3.  index - *enter a name*
        4.  request size - set http request payload limit based on vm size <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/aes-limits.html>
        5.  wildcard at end - enabled
        6.  wildcard at start - enabled
        7.  enable request signing - enabled
        8.  key id and secret - *<https://console.aws.amazon.com/iam/home?region=eu-west-2#/users>*
        9.  Region - *from aws dashboard*
        10. use simple search - enabled
    2.  data enrichment settings
        1.  Enable file indexing - enable
        2.  file processing - apache tika
        3.  hostname - *ip for apache tika vm*
        4.  tika port - 9998
        5.  maximum file size - 512000000
        6.  image processor - none
6.  navigate to site admin &gt; plugins &gt; search &gt; manage global search
7.  go through all the steps until green
8.  from preview01u command line
    1.  create index - curl -X PUT <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com/search2previewmoodle>
    2.  delete index (when required) - curl -X DELETE <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com/search2previewmoodle>
9.  Navigate to <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com/_plugin/kibana/app/dev_tools#/console> &gt; disable the replica running following.  disable replica due to using single node for testing - <https://stackoverflow.com/questions/23656458/elasticsearch-what-to-do-with-unassigned-shards>
10. 1.  GET /search2previewmoodle/\_settings

        PUT /search2previewmoodle/\_settings
        {
          "index" : {
            "number\_of\_replicas" : 0
          }
        }

11. ssh onto [mdl-preview01u.ucl.ac.uk](http://mdl-preview01u.ucl.ac.uk) &gt;create a new tmux session <https://danielmiessler.com/study/tmux/>
12. run following to start index 'php /data/apache/moodle-vhosts/*name of moodle folder*/search/cli/indexer.php'

