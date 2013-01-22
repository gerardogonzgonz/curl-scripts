#!/bin/bash

curl --verbose 'http://10.60.11.13/api/admin/statistics/dcsresources/actions/total' \
        -X GET \
        -u admin:xabiquo \
        -H "Accept:application/vnd.abiquo.datacenterresources+xml; version=2.0" | xmlindent -nbe -f

