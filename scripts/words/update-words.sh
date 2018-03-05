#!/bin/bash
TEXT="test"
BOOL="false"
SEN="1"
ID="2"

curl "http://localhost:4741/words/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "word": {
      "text": "'"${TEXT}"'",
      "clickable": "'"${BOOL}"'",
      "redacted": "'"${BOOL}"'",
      "sentence_id": "'"${SEN}"'"
    }
  }'

echo
