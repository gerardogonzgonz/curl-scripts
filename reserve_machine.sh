#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/enterprises/1/reservedmachines' \
      -X "POST" \
      -H "Content-type:application/vnd.abiquo.machine+xml; version=2.0;" \
      -H "Accept:application/vnd.abiquo.machine+xml; version=2.0;" \
      -d '<machine>
<description>abiquo-xen</description>
    <initiatorIQN>iqn.1994-05.com.redhat:3ae5f1a9dbd</initiatorIQN>
    <ip>10.60.1.80</ip>
    <ipService>10.60.1.80</ipService>
    <ipmiIP></ipmiIP>
    <ipmiPassword></ipmiPassword>
    <ipmiPort>0</ipmiPort>
    <ipmiUser></ipmiUser>
    <name>abiquo-xen</name>
    <port>8889</port>
    <state>MANAGED</state>
    <type>XEN_3</type>
    <cpu>4</cpu>
    <cpuUsed>0</cpuUsed>
    <ram>4086</ram>
    <ramUsed>0</ramUsed>
    <virtualSwitch>eth1</virtualSwitch>
      </machine>' \
      -u admin:xabiquo | xmlindent -nbe -f
