#!/bin/bash

curl --verbose -X POST 'http://10.60.11.15/api/cloud/virtualdatacenters/12/virtualappliances/27/action/deploy' \
 -u admin:xabiquo \
 -H 'Content-type:application/vnd.abiquo.virtualmachinetask+xml; version=2.2;' \
 -H 'Accept:application/vnd.abiquo.acceptedrequest+xml; version=2.2;' \
 -d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' | xmlindent -nbe -f
