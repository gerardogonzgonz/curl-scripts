#!/bin/bash

curl --verbose 'http://10.60.21.206/api/config/costcodes/9/currencies/20' \
        -X PUT \
        -d @CostCodeCurrency.xml \
        -u admin:xabiquo \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" | xmlindent -f \
