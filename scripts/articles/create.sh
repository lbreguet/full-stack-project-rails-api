#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/articles"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content_Type: application/json" \
  --data '{
    "article": {
      "title": "'"${TITLE}"'",
      "date_posted": "'"${DATE_POSTED}"'",
      "description": "'"${DESCRIPTION}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
