@ECHO OFF
set /p projname="Enter Project Name: "
cd %projname%
START code .
START cmd /k call mongod.exe
START cmd /k call mongo.exe
EXIT