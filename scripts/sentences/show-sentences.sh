#!/bin/bash

ID="1"

curl "http://localhost:4741/sentences/${ID}" \
  --include \
  --request GET \

echo
