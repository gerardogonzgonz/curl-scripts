#!/bin/bash

curl --verbose 'http://10.60.21.185/api/admin/enterprises/296/users/317' \
        -X "PUT" \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
	-u admin:xabiquo \
        -d '<user>
              <name>John</name>
              <surname>Pepe</surname>
              <description>Found user</description>
              <email>john.doe@example.com</email>
              <nick>Pep</nick>
              <locale>en_US</locale>
              <active>true</active>
              <availableVirtualDatacenters></availableVirtualDatacenters>
              <authType>ABIQUO</authType>
            </user>'
