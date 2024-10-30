# Troubleshooting

## **Checking**

**Checking Tika port is accessible from vm**

-   check tika port is access, should see the following

1.  -   telnet 3.8.93.195 9998

    Trying 3.8.93.195...

    Connected to 3.8.93.195.

    Escape character is '^\]'.

**Get public ip of a vm
**

-   telnet [telnetmyip.com](http://telnetmyip.com) to get public ip

telnet [telnetmyip.com](http://telnetmyip.com)
Trying 3.19.111.8...
Connected to [telnetmyip.com](http://telnetmyip.com).
Escape character is '^\]'.
{

"comment": "\#\# Your IP Address is 92.233.31.54 (49540) \#\#",

"family": "ipv4",
"ip": "92.233.31.54",
"port": "49540",
"protocol": "telnet",
"version": "v1.3.0",
"force\_ipv4": "[ipv4.telnetmyip.com](http://ipv4.telnetmyip.com)",
"force\_ipv6": "[ipv6.telnetmyip.com](http://ipv6.telnetmyip.com)",
"website": "<https://github.com/packetsar/checkmyip>",
"sponsor": "Sponsored by ConvergeOne, <https://www.convergeone.com/>"

**Checking curl access**

-   to test vm access to index curl -X GET <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com/test>

NO ACCESS DUE TO INCOMING RULES IP - {"Message":"User: anonymous is not authorized to perform: es:ESHttpGet"}\[cceaean@[ad.ucl.ac.uk](http://ad.ucl.ac.uk)@mdl-preview01u ~\]$ curl -X GET <https://search-search2-preview-moodle-e63yuujwixozwojai3ufcnxutu.eu-west-2.es.amazonaws.com/test>


