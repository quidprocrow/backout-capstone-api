#!/bin/bash
ARR="[1, 2, 3, 4, 5,]"
WORD="2"
USER="1"
SEN="3"
HMOD="100"
WMOD="50"
TOKEN="BAhJIiU4NjFkOGVmNDYyNzgxOTlmYmJhYTU1N2YyNzlkZjJlYwY6BkVG--d0caaab748bf9b2f710f4294f1810c36a78fd6cd"

curl "http://localhost:4741/steps" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "step": {
      "redact": "'"${ARR}"'",
      "word_id": "'"${WORD}"'",
      "hopemodifier": "'"${HMOD}"'",
      "wisdommodifier": "'"${WMOD}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
