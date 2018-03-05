#!/bin/bash
ID="4"

curl "http://localhost:4741/steps/${ID}" \
  --include \
  --request GET \

echo
