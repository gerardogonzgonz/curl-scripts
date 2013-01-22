#!/bin/bash

curl --verbose 'http://10.60.11.13/api/admin/statistics/enterpriseresources/actions/total' \
        -X GET \
        -u admin:xabiquo \
        -H "Accept:application/vnd.abiquo.enterprisesresources+xml; version=2.0" | xmlindent -nbe -f

