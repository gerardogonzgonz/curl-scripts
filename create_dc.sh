#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/datacenters/' \
      -X "POST" \
      -H "Content-type:application/xml" \
      -H "Accept:application/xml" \
      -u admin:xabiquo \
      -d @datacenterwithremoteservicescreation.xml | xmlindent -nbe -f
