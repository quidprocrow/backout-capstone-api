#!/bin/bash
ARR="[ 1, 2, 3, 4, ]"
WORD="1"

curl "http://localhost:4741/steps" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "step": {
      "redact": "'"${ARR}"'",
      "word_id": "'"${WORD}"'"
    }
  }'

echo
