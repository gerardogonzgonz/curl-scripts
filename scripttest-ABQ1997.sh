#!/bin/bash

curl --verbose 'http://10.60.21.33/api/admin/enterprises/1/users' \
	-X "POST" \
	-u admin:xabiquo \
	-H "Content-type:application/xml" \
	-H "Accept:application/xml" \
      	-d '<user>
            <name>John</name>
            <surname>Doe</surname>
            <description>Unknown user</description>
            <email>john.doe@example.com</email>
            <nick>jdoe</nick>
            <authType>ABIQUO</authType>
            <locale>en_US</locale>
            <active>true</active>
	    <password> </password>
            <availableVirtualDatacenters/>
            <link rel="role" href="http://10.60.21.33/api/admin/roles/1"/>
          </user>' | xmlindent -f
