#!/bin/bash

curl -v -X POST "http://10.60.11.187/api/admin/rules?idDatacenter=266" \
       -u admin:xabiquo \
       -H "Content-type:application/vnd.abiquo.rules+xml" \
       -H "Accept:application/vnd.abiquo.rules+xml" \
       -d @rules.xml | xmlindent -nbe -f
