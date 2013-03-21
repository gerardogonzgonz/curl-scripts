#!/bin/bash

#identerprise={$1}

user={$1}

curl --verbose -X POST "http://localhost/api/admin/enterprises/3/users" \
       -H "Content-type: application/vnd.abiquo.user+xml;version=2.4" \
       -H "Accept: application/vnd.abiquo.user+xml;version=2.4" \
       -d @$1 \
       -u admin:xabiquo | xmlindent -nbe -f
