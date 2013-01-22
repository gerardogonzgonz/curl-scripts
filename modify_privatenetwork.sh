#!/bin/bash

curl --verbose -X PUT 'http://10.60.11.9/api/cloud/virtualdatacenters/1/privatenetworks/12' \
	-H "Accept: application/vnd.abiquo.vlan+xml;version=2.0;" \
	-H "Content-type: application/vnd.abiquo.vlan+xml;version=2.0;" \
	-u admin:xabiquo \
	-d '<network>
       <address>192.168.1.0</address>
  	<dhcpOptions/>
 	<gateway>192.168.1.1</gateway>
	<id>12</id>
    	<mask>24</mask>
    <name>new_private_network</name>
    <type>INTERNAL</type>
	</network>' | xmlindent -nbe -f
