#!/bin/bash

curl -X POST "http://10.60.11.186/api/admin/rules/machineLoadLevel" \
       -d @machineLoadLevelRule.xml \
       -u admin:xabiquo \
       -H "Content-type:application/xml" \
       -H "Accept:application/xml" | xmlindent -nbe -f
