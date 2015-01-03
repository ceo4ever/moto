#!/bin/bash

#=================================== Build Essential Installation =====================================
apt-get install -y build-essential
#======================================================================================================


#============================== WebServer(Apache Httpd) Installation ==================================
apt-get install -y apache2 \
                   libapache2-mod-wsgi
#======================================================================================================


#================================== Python DEV, PIP Installation ======================================
apt-get install -y python-pip \
                   python2.7-dev 
#======================================================================================================


#================================ OpenJDK 1.7 and 1.6 Installation ====================================
apt-get install -y openjdk-7-jdk 
#======================================================================================================


#======================================= Fonts Installation ===========================================
apt-get install ttf-bitstream-vera
#======================================================================================================


#====================================== Cran R Installation ===========================================
#add-apt-repository "deb http://cran.stat.ucla.edu/bin/linux/ubuntu trusty/"
#apt-key adv --keyserver keyserver.ubuntu.com --recv-key E084DAB9
#apt-get update
#apt-get install -y r-base

#r-Studio
apt-get install gdebi-core
apt-get install libapparmor1  # Required only for Ubuntu, not Debian
wget http://download2.rstudio.org/rstudio-server-0.98.501-amd64.deb
gdebi rstudio-server-0.98.501-amd64.deb
#======================================================================================================



