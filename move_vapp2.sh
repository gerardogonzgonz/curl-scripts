#!/bin/bash

curl --verbose 'http://10.60.11.50/api/cloud/virtualdatacenters/6/virtualappliances' \
      -X "POST" \
      -H 'Accept: application/vnd.abiquo.virtualappliance+json' \
      -H 'Content-type: application/vnd.mv-virtualappliance+json' \
      -u admin:xabiquo \
      -d '{"links": [
        {
	"href": "http://10.60.11.50/api/cloud/virtualdatacenters/1/virtualappliances/24", 
        "rel": "source"
        }
    ]
}'
