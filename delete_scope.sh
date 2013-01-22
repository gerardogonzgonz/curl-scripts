#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/scopes/1' \
      -X "DELETE" \
      -H "Accept:application/vnd.abiquo.scope+xml; version=2.0;" \
      -H "Content-type:application/vnd.abiquo.scope+xml; version=2.0;" \
      -u admin:xabiquo | xmlindent -nbe -f
