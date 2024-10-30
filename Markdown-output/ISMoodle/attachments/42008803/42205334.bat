@ECHO OFF
CLS
SET timestamp=%date:~-4,4%%date:~-7,2%%date:~-10,2%-%time:~0,2%%time:~3,2%%time:~6,2%
ECHO %timestamp%
REM C:\apache-jmeter-2.9\bin\jmeter -n -t %~dp0\PTEST-MTest-01.jmx -l %~dp0\Results\resultlog_%timestamp%.jtl
"C:\Program Files (x86)\apache-jmeter-2.11\bin\jmeter" -n -t %~dp0\PTEST-MTest-IDW.jmx -q %~dp0\local.properties -l C:\moodle\jmeter\Results\results_%timestamp%.jtl
