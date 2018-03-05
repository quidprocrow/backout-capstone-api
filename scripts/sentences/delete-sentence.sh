#!/bin/bash

ID="2"

curl "http://localhost:4741/sentences/${ID}" \
  --include \
  --request DELETE \

echo
