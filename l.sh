#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

container={$4}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers/'$container'/blobs' \
        -X "POST" \
        -H "Accept: application/vnd.abiquo.temporaryredirect+xml" \
        -H "Content-Type: multipart/form-data" \
        -u enteradmin:xabiquo \
        -H 'X-Blobstorage: c69a39bd64ffb77ea7ee3369dce742f3' | xmlindent -nbe -f
