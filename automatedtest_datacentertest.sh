#!/bin/bash 

curl --verbose -X GET -u admin:xabiquo 'http://10.60.21.33/api/admin/datacenters/1693/action/discoversingle?ip=10.60.1.79&hypervisor=xenserver' \
        -H "Accept:application/xml" | xmlindent -f
