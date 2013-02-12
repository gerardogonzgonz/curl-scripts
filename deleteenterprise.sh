#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/2' \
        -X "DELETE" \
        -H "Accept: application/vnd.abiquo.enterprise+xml;version=2.2" \
        -H "Content-Type: application/vnd.abiquo.enterprise+xml;version=2.2" \
        -u admin2:xabiquo | xmlindent -nbe -f
