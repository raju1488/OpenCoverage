@echo off
set "iis=C:\Windows\System32\inetsrv\w3wp.exe"
set "targetdir=D:\WebClients\code\WebClient\bin"
set "output=\\ldo-pkt-pc1150\Share\IIS\xml\test122.xml"
set "filter=+[*ClinicalNarative*]* +[*CarePlan]* +[LorAppCommon]*"
set "info=-debug "
REM > "D:\code coverage\log.txt" -searchdirs:"%searchdirs%" 
cd cd\
d:
cd D:\code coverage\Demo\batch\opencover.4.6.519
echo on
"OpenCover.Console.exe" -skipautoprops -register:user -target:"%iis%" -targetargs:"-debug -in test-1000" -targetdir:"%targetdir%" -filter:"%filter%" -output:"%output%" -nodefaultfilters 
REM "D:\code coverage\new\opencover-master\opencover-master\main\bin\Debug\OpenCover.Console.exe" -skipautoprops -register:user -target:"%iis%" -targetargs:"%info%" -targetdir:"%targetdir%" -filter:"%filter%" -output:"%output%" -nodefaultfilters 
pause