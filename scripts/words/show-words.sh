#!/bin/bash
ID="1"
TOKEN="BAhJIiU4NjFkOGVmNDYyNzgxOTlmYmJhYTU1N2YyNzlkZjJlYwY6BkVG--d0caaab748bf9b2f710f4294f1810c36a78fd6cd"

curl "http://localhost:4741/words/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --include \
  --request GET \

echo
