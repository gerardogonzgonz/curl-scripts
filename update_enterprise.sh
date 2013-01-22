#!/bin/bash

curl --verbose 'http://10.60.21.206/api/admin/enterprises/1/properties' \
        -X "PUT" \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
        -d @properties.xml \
        -u pep:1234 | xmlindent -nbe -f
