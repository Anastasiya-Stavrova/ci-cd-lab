#!/bin/bash

MESSAGE=$1

printf '{"chat_id": "%s", "text": "%s", "parse_mode": "Markdown"}' \
        "$TELEGRAM_CHAT_ID" "$MESSAGE" |
      curl -s -X POST \
        -H "Content-Type: application/json" \
        -d @- \
        "https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"