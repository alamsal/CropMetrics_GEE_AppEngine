#!/bin/bash

#make python packages upto date
apt-get update

#install python make sure python 2.6 or 2.7
sudo apt-get install python-pip

#setup Google APIs Client Library for Python provides support for authenticating to the Earth Engine servers
sudo pip install google-api-python-client

#Crypto library
pip install pyCrypto

#Openssl
apt-get install openssl

#pyOpenSSL
pip install 'pyOpenSSL>=0.11'

#Google Earth Engine
pip install earthengine-api

#update httplib2
pip install --upgrade httplib2

#install vim
apt-get install vim

