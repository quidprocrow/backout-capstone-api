#!/bin/bash
ARR="[1, 2, 3, 4, 5,]"
WORD="1"
ID="4"
SEN="3"
HMOD="100"
WMOD="50"

curl "http://localhost:4741/steps" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "step": {
      "redact": "'"${ARR}"'",
      "word_id": "'"${WORD}"'",
      "hopemodifier": "'"${HMOD}"'",
      "wisdommodifier": "'"${WMOD}"'"
    }
  }'

echo
