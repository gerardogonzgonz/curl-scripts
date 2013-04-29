#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

includeZones={$3}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones?includeZones='$includeZones'' -H accept:application/vnd.abiquo.blobstoragezones+xml -u admintest:passadmin | xmlindent -nbe -f
