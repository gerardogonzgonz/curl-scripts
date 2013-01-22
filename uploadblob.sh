#!/bin/bash

file={$1}

token=$2

uri=$3

blobName=$4

curl -v -T $file -H 'X-Auth-Token: '$token'' $uri'/'$blobName
