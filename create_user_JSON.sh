#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/1/users' -X "POST" -u admin:xabiquo -H "Accept: application/vnd.abiquo.user+json;version=2.6" -H "Content-Type: application/vnd.abiquo.user+json;version=2.6" -d '{"links": [{"rel": "role", "href" : "http://localhost/api/admin/roles/1"}], "name": "aaa", "surname": "bbb", "description": "Unknown user", "email": "aa@aa.aa", "nick": "jdoee'$1'" ,"authType": "ABIQUO","locale":"en_US","active": "true", "password": "xabiqua"}' -u admin:xabiquo
