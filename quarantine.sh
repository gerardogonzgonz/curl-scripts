#!/bin/bash

curl --verbose -X PUT http://10.60.11.35/api/admin/datacenters/3/network/87/ips/18082 -H Accept:application/vnd.abiquo.publicip+json -H Content-type:application/vnd.abiquo.publicip+json -u admin:xabiquo -d @quarantine
