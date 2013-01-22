#!/bin/bash

curl --verbose 'http://10.60.11.186/api/admin/enterprises' \
      -X "POST" \
      -H "Content-type:application/xml" \
      -H "Accept:application/xml" \
      -d @enterprise.xml \
      -u admin:xabiquo | xmlindent -nbe -f
