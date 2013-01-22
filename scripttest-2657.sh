#!/bin/bash

curl --verbose -X GET 'http://10.60.21.206/api/cloud/virtualdatacenters/13/virtualappliances/18/virtualmachines/43/network/nics' \
       -H "Accept:application/xml" \
       -u admin:xabiquo | xmlindent -f
