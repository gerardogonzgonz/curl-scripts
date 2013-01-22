#!/bin/bash

curl --verbose http://localhost/api/admin/enterprises/1/blobstorages/2/blobstoragezones -H accept:application/vnd.abiquo.blobstoragezones+xml -u admin:xabiquo | xmlindent -nbe -f
