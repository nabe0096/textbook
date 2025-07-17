#!/bin/bash

# 自動デプロイスクリプト
echo "📤 GitHubにアップロード中..."

# 変更をコミット
git add .
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

# GitHubにプッシュ（認証設定済み）
git push origin main

echo "✅ アップロード完了！"
echo "🌐 サイトURL: https://nabe0096.github.io/textbook/"
echo "🕐 サイトの更新には1-2分かかる場合があります"