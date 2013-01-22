#!/bin/bash

file=$1

token=$2

uri=$3

curl -v -o $file -H 'X-Auth-Token: '$token'' $uri
