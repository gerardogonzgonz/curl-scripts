#!/bin/bash

curl -v -X POST "http://10.60.21.187/api/admin/rules/machineLoadLevel" \
       -u admin:xabiquo \
       -H "Content-type:application/vnd.abiquo.machineloadrule+xml;version=2.0" \
       -H "Accept:application/vnd.abiquo.machineloadrule+xml;version=2.0" \
       -d @rules3.xml | xmlindent -nbe -f
