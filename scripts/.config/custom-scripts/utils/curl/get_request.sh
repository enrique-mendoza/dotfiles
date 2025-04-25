#!/bin/sh

# Usage: ./get_request.sh <URL_WITH_PARAMS>

URL=$1
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
LOG_DIR="$HOME/code/collections/logs"
LOG_FILE="$LOG_DIR/get_request_log_$(date +"%Y%m%d").json"

if [ -z "$URL" ]; then
  echo "Usage: $0 <URL_WITH_PARAMS>"
  exit 1
fi

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Make request and capture both response and status code
HTTP_RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "$URL")

# Separate body and status code
RESPONSE_BODY=$(echo "$HTTP_RESPONSE" | sed '$d')
STATUS_CODE=$(echo "$HTTP_RESPONSE" | tail -n1)

# Pretty print response to terminal
echo "$RESPONSE" | jq

# Try to pretty print response if it's valid JSON
if echo "$RESPONSE_BODY" | jq . >/dev/null 2>&1; then
  echo "$RESPONSE_BODY" | jq
  # Log as actual JSON
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --argjson response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      response: $response
    }')
else
  echo "$RESPONSE_BODY"
  # Log as plain string if not JSON
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --arg response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      response: $response
    }')
fi

# Save the log entry
printf '%s\n' "$LOG_ENTRY" >> "$LOG_FILE"
