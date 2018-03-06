#!/bin/bash
ID="1"
curl "http://localhost:4741/games/${ID}" \
  --include \
  --request DELETE \

echo
