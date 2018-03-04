#!/bin/bash
NUM=100

curl "http://localhost:4741/games" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "game": {
      "hope": "'"${NUM}"'",
      "wisdom": "'"${NUM}"'"
    }
  }'

echo
