#!/bin/sh

# Usage: ./post_request.sh <URL> <JSON_FILE> [BEARER_TOKEN]

URL=$1
JSON_FILE=$2
BEARER_TOKEN=$3
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

if [[ -z "$URL" || -z "$JSON_FILE" ]]; then
  echo "Usage: $0 <URL> <JSON_FILE> [BEARER_TOKEN]"
  exit 1
fi

if [[ ! -f "$JSON_FILE" ]]; then
  echo "Error: JSON file '$JSON_FILE' does not exist."
  exit 1
fi

# Extract domain from URL
DOMAIN=$(echo "$URL" | awk -F[/:] '{print $4}')

# Set log directory and file
LOG_DIR="$HOME/code/collections/logs/$DOMAIN"
LOG_FILE="$LOG_DIR/post_request_log_$(date +"%Y%m%d").json"

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Load request body from file
REQUEST_BODY=$(cat "$JSON_FILE" | jq -c .)

# Make the POST request and capture the response along with status code
HTTP_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST -H "Content-Type: application/json" \
  ${BEARER_TOKEN:+-H "Authorization: Bearer $BEARER_TOKEN"} \
  "$URL" -d @"$JSON_FILE")

# Separate the body and status code from the response
RESPONSE_BODY=$(echo "$HTTP_RESPONSE" | sed '$d')
STATUS_CODE=$(echo "$HTTP_RESPONSE" | tail -n1)

# Pretty print response to terminal
echo "$RESPONSE" | jq

# Try to pretty print the response if it's valid JSON
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

# Append log entry as a single line to JSON log file
printf '%s\n' "$LOG_ENTRY" >> "$LOG_FILE"
