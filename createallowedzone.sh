#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones' \
        -X "POST" \
        -H "Accept: application/vnd.abiquo.blobstoragezone+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstoragezone+xml;version=2.4" \
        -u admin3:xabiquo \
        -d '<blobstoragezone>
            <name>DEFAULT</name>
    	    </blobstoragezone>' | xmlindent -nbe -f
