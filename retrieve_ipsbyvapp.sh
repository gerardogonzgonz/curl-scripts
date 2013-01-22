#!/bin/bash

curl --verbose -X GET -u admin:xabiquo -H 'Content-type:application/xml' -H 'Accept:application/xml' 'http://10.60.11.186/api/cloud/virtualdatacenters/2/virtualappliances/7/virtualmachines/action/ips' | xmlindent -nbe -f
