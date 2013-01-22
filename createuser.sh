#!/bin/bash

curl --verbose -X POST "http://localhost/api/admin/enterprises/2/users" \
       -H "Content-type: application/vnd.abiquo.user+xml;version=2.4" \
       -H "Accept: application/vnd.abiquo.user+xml;version=2.4" \
       -d @createuser2.xml \
       -u admin:xabiquo | xmlindent -nbe -f
