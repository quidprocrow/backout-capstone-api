#!/bin/bash
BOOL="true"
GAME="1"
ID="3"
STEPID="4"

curl "http://localhost:4741/sentences/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "sentence": {
      "active": "'"${BOOL}"'",
      "game_id": "'"${GAME}"'"
    }
  }'

echo
