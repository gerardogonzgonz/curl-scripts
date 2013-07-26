#!/bin/bash

curl --verbose -u admin:xabiquo -F "diskInfo=@templateUploadVeryLarge.xml" -F "diskFile=@w2008enterprise.qcow2" http://10.60.11.220:8009/am/erepos/1/templates
