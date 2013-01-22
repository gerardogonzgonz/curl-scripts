#!/bin/bash

curl --verbose 'http://mothership.bcn.abiquo.com/api/cloud/virtualdatacenters/5/virtualappliances/989/virtualmachines/2299/action/deploy' \
	-X "POST" \
	-H 'Content-Type: application/vnd.abiquo.virtualmachinetask+xml;version=2.0' \
        -u ggonzalez:ggonzalez \
      	-d '<virtualmachinetask><forceEnterpriseSoftLimits>OFF</forceEnterpriseSoftLimits></virtualmachinetask>' | xmlindent -nbe -f
