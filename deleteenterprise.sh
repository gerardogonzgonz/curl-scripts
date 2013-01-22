#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/1' \
        -X "DELETE" \
        -H "Accept: application/vnd.abiquo.enterprise+xml;version=2.2" \
        -H "Content-Type: application/vnd.abiquo.enterprise+xml;version=2.2" \
        -u admin:xabiquo | xmlindent -nbe -f
