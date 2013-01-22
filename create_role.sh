#!/bin/bash

curl --verbose -X POST 'http://localhost/api/admin/roles' \
      -H "Accept: application/vnd.abiquo.role+xml;version=2.2" \
      -H "Content-Type: application/vnd.abiquo.role+xml;version=2.2" \
      -u admin:xabiquo \
      -d '<role>
  <blocked>false</blocked>
  <name>blobstorage_role</name>
</role>' | xmlindent-nbe -f
