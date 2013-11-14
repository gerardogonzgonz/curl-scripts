#!/bin/bash

curl --verbose 'http://u.abiquo.com/api/cloud/virtualdatacenters/64/volumes/18528/action/move' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.moved+json; version=2.6;" \
      -H "Content-type:application/vnd.abiquo.links+json; version=2.6;" \
      -u admin:xabiquo \
      -d '{"links": [
        {
	"href": "http://u.abiquo.com:80/api/cloud/virtualdatacenters/65", 
            "hreflang": null, 
            "length": null, 
            "rel": "virtualdatacenter", 
            "type": "application/vnd.abiquo.virtualdatacenter+json"
        }
    ]
}'
