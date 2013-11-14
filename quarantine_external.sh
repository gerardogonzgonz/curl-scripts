#!/bin/bash

curl --verbose -X PUT http://10.60.11.35/api/admin/datacenters/3/network/86/ips -H Accept:application/vnd.abiquo.externalips+json -H Content-type:application/vnd.abiquo.externalips+json -u admin:xabiquo -d @quarantines_external
