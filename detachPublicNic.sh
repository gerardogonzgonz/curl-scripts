#!/bin/bash

curl --verbose -X PUT 'http://10.60.11.187:80/api/cloud/virtualdatacenters/790/publicips/topurchase/229465' \
    -H 'Accept: application/vnd.abiquo.publicip+xml; version=2.4' \
    -H 'Content-Type: application/vnd.abiquo.publicip+xml; version=2.4' \
    -u admin:xabiquo \
    -d '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<publicip>
<link title="publicip" rel="edit" type="application/vnd.abiquo.publicips+xml" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/790/publicips/topurchase/229465"/>
<link title="publi" rel="publicnetwork" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.187:80/api/admin/datacenters/195/network/960"/>
<link title="PUT" rel="purchase" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/790/publicips/purchased/229465"/>
<link rel="topurchase" type="application/vnd.abiquo.publicips+xml" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/790/publicips/topurchase"/>
<id>229465</id>
<ip>80.80.80.4</ip>
<networkName>PublicNetwork</networkName>
<available>true</available>
<quarantine>false</quarantine>
</publicip>' | xmlindent -nbe -f
