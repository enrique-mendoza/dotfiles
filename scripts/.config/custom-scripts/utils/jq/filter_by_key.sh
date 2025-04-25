#!/bin/sh

# Usage: ./filter_by_key.sh <LOG_FILE> <KEY> <PATTERN>

LOG_FILE=$1
KEY=$2
PATTERN=$3

if [ -z "$LOG_FILE" ] || [ -z "$KEY" ] || [ -z "$PATTERN" ]; then
  echo "Usage: $0 <LOG_FILE> <KEY> <PATTERN>"
  exit 1
fi

if [ ! -f "$LOG_FILE" ]; then
  echo "Error: File '$LOG_FILE' does not exist."
  exit 1
fi

# Filter the data based on the key and pattern
FILTERED=$(jq --arg key "$KEY" --arg pattern "$PATTERN" \
  'select(.[$key] | tostring | test($pattern))' "$LOG_FILE")

# Count the number of filtered results
COUNT=$(echo "$FILTERED" | jq -s 'length')

echo "$FILTERED" | jq -s '.[-1]'  # Get the last result
