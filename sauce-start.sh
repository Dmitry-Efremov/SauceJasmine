#!/bin/bash

curl https://saucelabs.com/rest/v1/$SAUCE_USERNAME/js-tests \
  -X POST \
  -u $SAUCE_USERNAME:$SAUCE_ACCESS_KEY \
  -H "Content-Type: application/json" \
  -d '{ "platforms": [[ "Windows 7", "firefox", "" ]], "url": "http://localhost:8085/test.html", "framework": "jasmine", "tunnel-identifier": "saucelabs-jasmine-example-tunnel" }' \
  | jq -r "."
