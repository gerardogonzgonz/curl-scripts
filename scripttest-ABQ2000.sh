#!/bin/bash

curl --verbose http://10.60.21.33/api/login -X 'GET' -u pep:1234 | xmlindent -f
