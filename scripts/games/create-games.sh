#!/bin/bash
NUM="100"
TOKEN="BAhJIiU4NjFkOGVmNDYyNzgxOTlmYmJhYTU1N2YyNzlkZjJlYwY6BkVG--d0caaab748bf9b2f710f4294f1810c36a78fd6cd"
ID="1"

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "hope": "'"${NUM}"'",
      "wisdom": "'"${NUM}"'",
      "user_id": "'"${ID}"'"
    }
  }'

echo
