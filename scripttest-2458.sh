#!/bin/bash

curl --verbose -X POST 'http://10.60.21.206/api/config/costcodes' \
       -d @CostCode.xml \
       -H "Content-type: application/xml" \
       -u "admin:xabiquo" | xmlindent -f
       
