#!/bin/bash

curl --verbose -X POST 'http://10.60.21.206/api/config/currencies' \
       -d @CostCode.xml \
       -u admin:xabiquo \
       -H "Content-type: application/xml" | xmlindent -f
