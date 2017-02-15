#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/articles/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "article": {
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "body": "'"${BODY}"'"
    }
  }'
  # --header "Authorization: Token token=$TOKEN"

echo
