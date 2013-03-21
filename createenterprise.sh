#!/bin/bash

enterprise={$1}

curl --verbose -X POST "http://localhost/api/admin/enterprises" \
       -H "Content-type: application/vnd.abiquo.enterprise+xml;version=2.4" \
       -H "Accept: application/vnd.abiquo.enterprise+xml;version=2.4" \
       -d @$1 \
       -u admin:xabiquo | xmlindent -nbe -f
