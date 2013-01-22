#!/bin/bash

curl --verbose 'http://10.60.11.13/api/admin/statistics/cloudusage/actions/total' \
        -X GET \
	-u admin:xabiquo \
        -H "Accept:application/vnd.abiquo.cloudusage+xml; version=2.0" | xmlindent -nbe -f
