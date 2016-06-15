#!/bin/bash

#make python packages upto date
apt-get update

#install python make sure python 2.6 or 2.7
apt-get install python-pip

#install vim
apt-get install vim

#Install Git
apt-get install git

#Openssl
apt-get install openssl

#setup Google APIs Client Library for Python provides support for authenticating to the Earth Engine servers
pip install google-api-python-client

#Crypto library
pip install pyCrypto

#pyOpenSSL
pip install 'pyOpenSSL>=0.11'

#Google Earth Engine
pip install earthengine-api

#update httplib2
pip install --upgrade httplib2

#Python library for accessing resources protected by OAuth 2.0
pip install --upgrade oauth2client

#Setup a credentials file on your computer that authorizes access to Earth Engine on behalf of your Google account
python -c "import ee; ee.Initialize()"


