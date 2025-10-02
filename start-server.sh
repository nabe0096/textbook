#!/bin/bash

# Change to script directory
cd "$(dirname "$0")"

# Get local IP address
LOCAL_IP=$(ipconfig getifaddr en0 || ipconfig getifaddr en1)

# Kill any existing servers
pkill -f "browser-sync" 2>/dev/null

# Start browser-sync with auto-reload
echo "Starting server..."
echo "パソコン用: http://localhost:3000/index.html"
echo "スマホ用: http://${LOCAL_IP}:3000/index.html"
echo ""
echo "サーバーを停止するには Ctrl+C を押してください"

browser-sync start --server --files "*.html" --port 3000 --no-ghost-mode
