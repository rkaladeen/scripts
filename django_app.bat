@ECHO OFF
set /p projname="Enter Current Project Name: "

@ECHO OFF
CALL C:\OneDrive\CodingDojo\python_stack\my_environments\djangoPy3Env\Scripts\activate
cd %projname%
cd apps
set /p appname="Enter App Name: "
@ECHO Created a new app named: %appname%
@ECHO OFF
python ../manage.py startapp %appname%
cd %appname%
type nul>urls.py
mkdir templates 
mkdir templates\%appname%
type nul>templates\%appname%\index.html
mkdir static 
mkdir static\%appname% 
mkdir static\%appname%\css
type nul>static\%appname%\css\style.css
mkdir static\%appname%\js
type nul>static\%appname%\js\script.js
mkdir static\%appname%\images


PAUSE
EXIT
