# Retrieving files from s3

<https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html> (This is installed on Preview)

<https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html#cli-configure-files-methods>

[https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/index.html](index)

Retrieve a missing file from prod filedr

``` java
#Use S3 filedir read-only credentials used for preview & snapshot instances
aws configure --profile filedir
#Check File exists
aws s3 ls ucl-eu-west-2-moodle-sitedata/85/a1/85a18f91a3f7688d4b37e78b7b821ebd3521f533 --profile filedir
#Copy it locally
aws s3 cp s3://ucl-eu-west-2-moodle-sitedata/85/a1/85a18f91a3f7688d4b37e78b7b821ebd3521f533 . --profile filedir
```
