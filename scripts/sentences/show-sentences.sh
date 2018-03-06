#!/bin/bash
TOKEN="BAhJIiU4NjFkOGVmNDYyNzgxOTlmYmJhYTU1N2YyNzlkZjJlYwY6BkVG--d0caaab748bf9b2f710f4294f1810c36a78fd6cd"
ID="1"

curl "http://localhost:4741/sentences/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
