#!/bin/bash

curl --verbose 'http://10.60.11.186/api/config/pricingtemplates' \
-X "POST" \
-H "Content-type:application/xml" \
-H "Accept: application/xml" \
-d @pricingTemplate-create.xml \
-u admin:xabiquo | xmlindent -nbe -f
