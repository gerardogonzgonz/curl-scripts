#!/bin/bash

curl --verbose -X POST 'http://10.60.21.206/api/config/costcodes/9/currencies' \
       -d @CostCodeCurrency.xml \
       -u admin:xabiquo \
       -H "Content-type: application/xml" | xmlindent -f
