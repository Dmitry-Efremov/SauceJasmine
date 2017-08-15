#!/bin/bash

curl https://saucelabs.com/rest/v1/$SAUCE_USERNAME/js-tests/status \
  -X POST \
  -u $SAUCE_USERNAME:$SAUCE_ACCESS_KEY \
  -H "Content-Type: application/json" \
  -d "{ \"js tests\": [ \"$1\" ] }" \
  | jq -r "."
