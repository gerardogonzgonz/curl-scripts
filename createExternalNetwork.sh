#!/bin/bash

curl --verbose -X POST 'http://10.60.11.20/api/admin/datacenters/6/network' \
-H "Accept: application/vnd.abiquo.vlan+xml" \
-H "Content-type: application/vnd.abiquo.vlan+xml" \
-u admin:xabiquo \
-d '<network>
<link href="http://10.60.11.20:80/api/admin/enterprises/5" rel="enterprise"/>
<name>external</name>
<tag>50</tag>
<address>10.10.0.0</address>
<mask>25</mask>
<gateway>10.10.0.1</gateway>
<primaryDNS>8.8.8.8</primaryDNS>
<suffixDNS>bcn.abiquo.com</suffixDNS>
<defaultNetwork>false</defaultNetwork>
<link rel="networkservicetype" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.20/api/admin/datacenters/6/networkservicetypes/6"/>
</network>'
