#!/bin/bash

curl --verbose -X PUT http://10.60.11.35/api/admin/datacenters/3/network/87/ips -H Accept:application/vnd.abiquo.publicips+json -H Content-type:application/vnd.abiquo.publicips+json -u admin:xabiquo -d @quarantines
