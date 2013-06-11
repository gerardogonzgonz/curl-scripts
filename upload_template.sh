#!/bin/bash

curl --verbose -u admin:xabiquo -F "diskInfo=@templateUpload.xml" -F "diskFile=@Core.qcow2" http://10.60.11.9/am/erepos/5/templates
