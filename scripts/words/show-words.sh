#!/bin/bash
ID="2"

curl "http://localhost:4741/words/${ID}" \
  --include \
  --request GET \

echo
