#!/bin/bash

curl --verbose 'http://10.60.21.206/api/admin/enterprises/5/users/' \
	-X "POST" \
	-u admin:xabiquo \
	-H "Content-type:application/xml" \
	-H "Accept:application/xml" \
      	-d '<user>
      	    <name>hola</name>
            <surname>Doe</surname>
            <description>Unknown user</description>
            <email>john.doe@example.com</email>
            <nick>jdoe</nick>
            <authType>ABIQUO</authType>
            <locale>en_US</locale>
            <active>true</active>
            <password>the_password</password>
<link rel="role" href="http://10.60.21.206/api/admin/roles/2"/>
          </user>' | xmlindent -f
