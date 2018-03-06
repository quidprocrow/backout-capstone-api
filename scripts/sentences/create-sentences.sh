#!/bin/bash
TOKEN="BAhJIiU4NjFkOGVmNDYyNzgxOTlmYmJhYTU1N2YyNzlkZjJlYwY6BkVG--d0caaab748bf9b2f710f4294f1810c36a78fd6cd"
BOOL="true"
GAME="2"
USER="1"

curl "http://localhost:4741/sentences" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "sentence": {
      "active": "'"${BOOL}"'",
      "game_id": "'"${GAME}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
