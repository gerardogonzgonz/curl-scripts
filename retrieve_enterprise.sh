#!/bin/bash

curl --verbose 'http://10.60.11.186/api/admin/enterprises/1' \
        -X "GET" \
        -H "Accept:application/xml" \
        -u admin:xabiquo | xmlindent -nbe -f
