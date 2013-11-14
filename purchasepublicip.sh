#!/bin/bash

curl --verbose -X PUT http://10.60.11.50/api/cloud/virtualdatacenters/7/publicips/purchased/4841 \
    -H 'Accept: application/vnd.abiquo.publicip+json; version=2.6' \
    -H 'Content-Type: application/vnd.abiquo.publicip+json; version=2.6' \
    -u admin:xabiquo \
    -d '<publicip>
    <networrkName>14efeef2-965</networkName>
    <available>true</available>
    <quarantine>false</quarantine>
</publicip>' | jsonprint
