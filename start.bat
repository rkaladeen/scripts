@ECHO off
set /p projname="Enter Project Name: "
CALL C:\OneDrive\CodingDojo\python_stack\my_environments\djangoPy3Env\Scripts\activate
cd %projname%
START code .
START cmd /k python manage.py runserver
START chrome 127.0.0.1:8000
EXIT