#!/bin/bash

curl --verbose 'http://10.60.21.206/api/admin/enterprises/1/reservedmachines' \
        -X "GET" \
        -H "Accept:application/vnd.abiquo.machines+xml;version=2.0" \
        -u admin:xabiquo | xmlindent -nbe -f
