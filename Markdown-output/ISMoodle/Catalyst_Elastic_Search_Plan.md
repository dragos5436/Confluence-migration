# Catalyst Elastic Search Plan

**Elastic search**

1.  navigate to <https://aws.amazon.com/elasticsearch-service/>
2.  create a new domain with the followings
    1.  Step 1 - Choose deployment type
        1.  Deployment type - Production
        2.  Elastic version - 6.4 (later versions available but not mentioned as supported <https://moodle.org/plugins/search_elastic>)
    2.  Step 2 - Configure domain
        1.  Elastic domain name - ucl-global-search
        2.  Availability zones - 3AZ
        3.  Instance type - t3.medium
        4.  nodes - 3
        5.  Data nodes storage type - EBS
        6.  EBS volume type - SSD
        7.  EBS storage size per node - 20GB
    3.  Step 3 - Configure access and security
        1.  Network configuration - VPC
        2.  Access policy - IAM
        3.  Encryption - HTTPS, node to node encryption, enable encryption at rest


