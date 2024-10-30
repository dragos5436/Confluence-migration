# Renew SSL Certificate for Moodle Preview in AWS

1.  Request renewal certificate by filling Remedy Force self service form
2.  Once ready download the new certificate
3.  In Lastpass under SSL Certificate for Moodle preview you will find the private key and passphrase
4.  Before importing in AWS you will need to decrypt the private key locally using 
    ``` java
    openssl rsa -in ssl.key.encrypted -out ssl.key.decrypted
    ```

5.  Once you get the decrypted key you can add the new SSL certificate to AWS Certificate Manager (it only accepts decrypted key)
6.  Then go to the AWS Load balancer and make the new certificate the default one
7.  Check the site to see if the new certificate has been applied
8.  Done

