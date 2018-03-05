#!/bin/bash
ID="1"

curl "http://localhost:4741/steps/${ID}" \
  --include \
  --request GET \

echo
