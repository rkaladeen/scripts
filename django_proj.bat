@ECHO OFF
set /p projname="Enter Project Name: "
@ECHO Created a new project named: %projname%
@ECHO OFF
CALL C:\OneDrive\CodingDojo\python_stack\my_environments\djangoPy3Env\Scripts\activate
django-admin startproject %projname%
cd %projname%
mkdir apps
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
cd ..
cd ..


START cmd /k python manage.py runserver
START cmd /k python manage.py shell
START cmd /k
START chrome 127.0.0.1:8000
git init 
git add .
git commit -m "initial commit"
code .
PAUSE
EXIT
