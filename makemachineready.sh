#!/bin/bash

#make python packages upto date
apt-get update

#install python make sure python 2.6 or 2.7
apt-get -y install python-pip

#install vim
apt-get -y install vim

#Install Git
apt-get -y install git

#Openssl
apt-get -y install openssl

#setup Google APIs Client Library for Python provides support for authenticating to the Earth Engine servers
sudo pip install google-api-python-client

#Crypto library
sudo pip install pyCrypto

#pyOpenSSL
sudo pip install 'pyOpenSSL>=0.11'

#Google Earth Engine
sudo pip install earthengine-api

#update httplib2
sudo pip install --upgrade httplib2

#Python library for accessing resources protected by OAuth 2.0
sudo pip install --upgrade oauth2client

#download Google App Engine SDK for Python
wget -P /var/crop_metrics/ "https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.38.zip"

#Unzip App Engine SDK
sudo unzip /var/crop_metrics/google_appengine_1.9.38.zip -d /var/crop_metrics/google_appengine1.9.38

#Setup execution path
export PATH=$PATH:/var/crop_metrics/google_appengine1.9.38/google_appengine

#Copy setup project template
sudo mkdir -p /var/crop_metrics/app/crop_app
sudo cp -r /var/crop_metrics/google_appengine1.9.38/google_appengine/new_project_template /var/crop_metrics/app/crop_app

#Setup a credentials file on your computer that authorizes access to Earth Engine on behalf of your Google account
sudo earthengine authenticate



