#!/bin/bash

curl --verbose 'http://10.60.21.187/api/cloud/virtualdatacenters?datacenter=1' \
      -X "POST" \
      -H "Accept: application/vnd.abiquo.virtualdatacenter+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.virtualdatacenter+xml;version=2.0" \
      -d @vdcreation.xml \
      -u admin:xabiquo | xmlindent -nbe -f
