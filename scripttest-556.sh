#!/bin/bash

curl --verbose 'http://10.60.21.33/api/admin/enterprises/1/users/41' \
        -X "PUT" \
	-u admin:xabiquo \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
        -d '<user>
              <name>Pepeeeeeee</name>
              <surname>Doe</surname>
              <description>Found user!!!!!</description>
              <email>john.doe@example.com</email>
              <nick>jdoe2</nick>
              <locale>en_US</locale>
              <active>true</active>
              <availableVirtualDatacenters/>
              <password>1234</password>
              <authType>ABIQUO</authType>
            </user>' | xmlindent -f
