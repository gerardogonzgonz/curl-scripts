#!/bin/bash

curl --verbose -X GET "http://10.60.21.206/api/admin/datacenters/1/action/discover?ipFrom=10.60.1.110&ipTo=10.60.1.125&hypervisortype=vmx-04&user=root&password=temporal" \
        -u admin:xabiquo \
        -H "Accept:application/xml" | xmlindent -f \
