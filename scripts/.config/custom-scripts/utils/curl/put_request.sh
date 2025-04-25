#!/bin/sh

# Usage: ./put_request.sh <URL> <JSON_FILE> [BEARER_TOKEN]

URL=$1
JSON_FILE=$2
BEARER_TOKEN=$3
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
LOG_DIR="$HOME/code/collections/logs"
LOG_FILE="$LOG_DIR/put_request_log_$(date +"%Y%m%d").json"

if [[ -z "$URL" || -z "$JSON_FILE" ]]; then
  echo "Usage: $0 <URL> <JSON_FILE> [BEARER_TOKEN]"
  exit 1
fi

if [[ ! -f "$JSON_FILE" ]]; then
  echo "Error: JSON file '$JSON_FILE' does not exist."
  exit 1
fi

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Load request body from file
REQUEST_BODY=$(cat "$JSON_FILE" | jq -c .)

# Make the PUT request and capture the response and status code
HTTP_RESPONSE=$(curl -s -w "\n%{http_code}" -X PUT -H "Content-Type: application/json" \
  ${BEARER_TOKEN:+-H "Authorization: Bearer $BEARER_TOKEN"} \
  "$URL" -d @"$JSON_FILE")

# Separate body and status code
RESPONSE_BODY=$(echo "$HTTP_RESPONSE" | sed '$d')
STATUS_CODE=$(echo "$HTTP_RESPONSE" | tail -n1)

# Pretty print response to terminal
echo "$RESPONSE" | jq

# Try to parse response as JSON
if echo "$RESPONSE_BODY" | jq . >/dev/null 2>&1; then
  echo "$RESPONSE_BODY" | jq
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --argjson request "$REQUEST_BODY" \
    --argjson response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      request: $request,
      response: $response
    }')
else
  echo "$RESPONSE_BODY"
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --argjson request "$REQUEST_BODY" \
    --arg response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      request: $request,
      response: $response
    }')
fi

# Save the log entry
printf '%s\n' "$LOG_ENTRY" >> "$LOG_FILE"
