#!/bin/bash

curl --verbose --insecure -u admin:xabiquo -X POST -F "diskInfo=@templateUpload.xml" -F "diskFile=@Core.qcow2" https://10.60.11.223:8009/am/erepos/1/templates
