#!/bin/sh

# Usage: ./post_form_data_request.sh <URL> <FILE_FIELD> <FILE_PATH> <TEXT_FIELD> <JSON_FILE> [BEARER_TOKEN]

URL=$1
FILE_FIELD=$2
FILE_PATH=$3
TEXT_FIELD=$4
JSON_FILE=$5
BEARER_TOKEN=$6
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

if [[ -z "$URL" || -z "$FILE_FIELD" || -z "$FILE_PATH" || -z "$JSON_FILE" ]]; then
  echo "Usage: $0 <URL> <FILE_FIELD> <FILE_PATH> <TEXT_FIELD> <JSON_FILE> [BEARER_TOKEN]"
  exit 1
fi

if [[ ! -f "$FILE_PATH" ]]; then
  echo "Error: File '$FILE_PATH' does not exist."
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

# Convert the entire JSON content into a single-line string
JSON_STRING=$(cat "$JSON_FILE" | jq -c .)  # jq -c makes it a compact string

# Make the POST request and capture the response along with status code
HTTP_RESPONSE=$(curl -s -w "\n%{http_code}" -X POST "$URL" \
  -F "$FILE_FIELD=@$FILE_PATH" \
  -F "$TEXT_FIELD=$JSON_STRING" \
  ${BEARER_TOKEN:+-H "Authorization: Bearer $BEARER_TOKEN"})

# Separate the body and status code from the response
RESPONSE_BODY=$(echo "$HTTP_RESPONSE" | sed '$d')
STATUS_CODE=$(echo "$HTTP_RESPONSE" | tail -n1)

# Pretty print response to terminal
echo "$RESPONSE" | jq

# Try to pretty print the response if it's valid JSON
if echo "$RESPONSE_BODY" | jq . >/dev/null 2>&1; then
  echo "$RESPONSE_BODY" | jq
  # Log as actual JSON
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --arg file_field "$FILE_FIELD" \
    --arg file_value "$FILE_PATH" \
    --arg text_field "$TEXT_FIELD" \
    --arg text_value "$JSON_STRING" \
    --argjson response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      file_field: $file_field,
      file_value: $file_value,
      text_field: $text_field,
      text_value: $text_value,
      response: $response
    }')
else
  echo "$RESPONSE_BODY"
  # Log as plain string if not JSON
  LOG_ENTRY=$(jq -n \
    --arg timestamp "$TIMESTAMP" \
    --arg url "$URL" \
    --arg status "$STATUS_CODE" \
    --arg file_field "$FILE_FIELD" \
    --arg text_field "$TEXT_FIELD" \
    --arg response "$RESPONSE_BODY" \
    '{
      timestamp: $timestamp,
      url: $url,
      status: ($status | tonumber),
      file_field: $file_field,
      text_field: $text_field,
      response: $response
    }')
fi

# Append log entry as a single line to JSON log file
printf '%s\n' "$LOG_ENTRY" >> "$LOG_FILE"
