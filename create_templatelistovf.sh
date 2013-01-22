#!/bin/bash

curl --verbose -X POST "http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitionLists" \
       -H "Content-type:text/plain" \
       -H "Accept:application/xml" \
       -u admin:xabiquo \
       -d 'http://rs.bcn.abiquo.com:9000/' | xmlindent -nbe -f
