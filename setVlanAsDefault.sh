#!/bin/bash

curl --verbose -X PUT 'http://10.60.11.187/api/cloud/virtualdatacenters/804/action/defaultvlan' \
    -H 'Accept: application/vnd.abiquo.links+xml; version=2.4' \
    -H 'Content-Type: application/vnd.abiquo.links+xml; version=2.4' \
    -u admin:xabiquo \
    -d '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<network>
<link rel="edit" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/804/privatenetworks/986"/>
<link rel="ips" type="application/vnd.abiquo.privateips+xml" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/804/privatenetworks/986/ips"/>
<link rel="networkservicetype" type="application/vnd.abiquo.vlan+xml" href="http://10.60.11.187:80/api/admin/datacenters/198/networkservicetypes/198"/>
<link rel="virtualdatacenter" type="application/vnd.abiquo.virtualdatacenter+xml" href="http://10.60.11.187:80/api/cloud/virtualdatacenters/804"/>
<id>986</id>
<name>default_private_network</name>
<address>192.168.0.0</address>
<mask>24</mask>
<gateway>192.168.0.1</gateway>
<type>INTERNAL</type>
<dhcpOptions/>
</network>' | xmlindent -nbe -f
