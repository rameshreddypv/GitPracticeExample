set HERE=%CD%
set JAVA_HOME=%HERE%\jdk1.6.0_21
set PATH=%JAVA_HOME%\jre\bin;%JAVA_HOME%\bin;%PATH%
set SELENIUM_VERSION=2.17.0
set CHROME_VERSION=chrome-18.0.995.0
set HUB_URL=http://localhost:4444/grid/register
set CHROME_DRIVER_LOC=%HERE%/%CHROME_VERSION%/chromedriver.exe
start java -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role hub
start java -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role node 
-Dwebdriver.chrome.driver= %CHROME_DRIVER_LOC% -hub %HUB_URL% -port 5556