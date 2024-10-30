# Using a jump host for MySQL in AWS

Database server: [mdl-aws-db01-mim.cluster-cweddcllqbin.eu-west-2.rds.amazonaws.com](http://mdl-aws-db01-mim.cluster-cweddcllqbin.eu-west-2.rds.amazonaws.com)

Jump host: [mdl-preview01u.ad.ucl.ac.uk](http://mdl-preview01u.ad.ucl.ac.uk)

``` java
ssh -L 127.0.0.1:3306:mdl-aws-db01-mim.cluster-cweddcllqbin.eu-west-2.rds.amazonaws.com:3306 cceaasp@mdl-preview01u.ad.ucl.ac.uk
```

This works even for use within Docker. Explicitly using 127.0.0.1 ensures you are not exposing the port binding to the rest of the network.

You can then configure code running on local machine/docker to connect to localhost:3306 on your local machine and this will be transparently forwarded to the database server via the Jump Host.
