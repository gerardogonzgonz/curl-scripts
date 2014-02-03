#!/bin/bash

curl --verbose -k -u admin:xabiquo -F "diskInfo=@templateUpload.xml" -F "diskFile=@Core.qcow2" https://servermaster/am/erepos/1/templates
