#!/bin/bash

#download Google App Engine SDK for Python
wget -P /var/crop_metrics/ "https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.38.zip"

#Unzip App Engine SDK
unzip /var/crop_metrics/google_appengine_1.9.38.zip -d google_appengine1.9.38

#setup execution path
export PATH=$PATH:/var/crop_metrics/google_appengine1.9.38/google_appengine

