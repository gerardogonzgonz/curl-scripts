#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

container={$4}

blobname={$5}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers/'$container'/blobs/'$blobname'' \
        -X "GET" \
        -H "Accept: application/vnd.abiquo.blob.download+xml" \
        -H "Content-Type: application/vnd.abiquo.blob+xml" \
        -u user2:xabiquo | xmlindent -nbe -f
