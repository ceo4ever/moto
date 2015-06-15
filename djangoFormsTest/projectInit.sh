#!/bin/bash


# variables setting
projectName="formstest"  # ---> lower case 
addAppName="formstestapp" 
HOST=""         # ---> db host
CHOST=""        # ---> django development runserver ip address
CPORT=""        # ---> django development runserver port number

# django start project
cd /var/www/html
django-admin.py startproject $projectName

# django app add 
cd /var/www/html/$projectName
python manage.py startapp $addAppName

mkdir /var/www/html/$projectName/$addAppName/templates
mkdir /var/www/html/$projectName/$addAppName/static

projectSetupFile='/var/www/html/'$projectName'/'$projectName'/settings.py'
sed -i "40i\   \'$addAppName\',"  $projectSetupFile

#template dir setting...
sed -i '$ a\TEMPLATE_DIRS = ("/var/www/html/'$projectName'/'$addAppName'/templates",)' $projectSetupFile

#static dir setting...
st="\'static\'"
sed -i '$ a\STATICFILES_DIRS = (os.path.join(os.path.dirname(__file__),'$st'),"/var/www/html/'$projectName'/'$addAppName'/static/", )\
       ' $projectSetupFile
