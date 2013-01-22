#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

containerName=$4

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers' \
        -X "POST" \
        -H "Accept: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -u enteradmin2:xabiquo \
        -d '<blobstoragecontainer>
            <name>'$containerName'</name>
            </blobstoragecontainer>' | xmlindent -nbe -f
