#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/enterprises/1/users' \
      -X "POST" \
      -H "Accept: application/vnd.abiquo.user+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.user+xml;version=2.0" \
      -d '<user>
            <name>aa</name>
            <surname>bb</surname>
            <description>Unknown user</description> 
            <email></email>
            <nick>jdoe</nick>
            <authType>ABIQUO</authType>
            <locale>en_US</locale>
            <active>true</active>
            <password>aa</password>
            <availableVirtualDatacenters/>
            <link rel="role" href="http://10.60.11.186/api/admin/roles/1"/>
          </user>' \
       -u admin:xabiquo | xmlindent -nbe -f
