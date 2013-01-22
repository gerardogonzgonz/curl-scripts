#!/bin/bash

curl --verbose 'http://10.60.21.185/api/cloud/virtualdatacenters/23/volumes' \
        -X GET \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
        -u "admin:xabiquo" | xmlindent -nbe -f

