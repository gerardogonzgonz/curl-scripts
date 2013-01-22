#!/bin/bash

curl --verbose 'http://10.60.21.33/api/cloud/virtualdatacenters/60' \
      -X "PUT" \
      -H "Content-type:application/xml" \
      -H "Accept:application/xml" \
      -d @vdcupdate.xml \
      -u admin:xabiquo | xmlindent -nbe -f
