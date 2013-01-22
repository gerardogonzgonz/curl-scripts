#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/1/blobstorages/1/blobstoragezones/1' \
        -X "PUT" \
        -H "Accept: application/vnd.abiquo.blobstoragezone+xml;version=2.2" \
        -H "Content-Type: application/vnd.abiquo.blobstoragezone+xml;version=2.2" \
        -u admin:xabiquo \
	-d '<blobstoragezone>
        <name>Ehjgj</name>
    </blobstoragezone>' | xmlindent -nbe -f

