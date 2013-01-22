#!/bin/bash

curl --verbose -X POST "http://localhost/api/admin/enterprises" \
       -H "Content-type: application/vnd.abiquo.enterprise+xml;version=2.4" \
       -H "Accept: application/vnd.abiquo.enterprise+xml;version=2.4" \
       -d @createenterprise.xml \
       -u admin:xabiquo | xmlindent -nbe -f
