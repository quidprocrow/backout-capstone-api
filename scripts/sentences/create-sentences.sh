#!/bin/bash
BOOL="true"
GAME="1"

curl "http://localhost:4741/sentences" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "sentence": {
      "active": "'"${BOOL}"'",
      "game_id": "'"${GAME}"'"
    }
  }'

echo
