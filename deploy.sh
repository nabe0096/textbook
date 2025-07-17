#!/bin/bash

# 自動デプロイスクリプト
echo "📤 GitHubにアップロード中..."

# 変更をコミット
git add .
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

# GitHubにプッシュ
echo "🔐 GitHubの認証情報を入力してください:"
git push origin main

echo "✅ アップロード完了！"
echo "🌐 サイトURL: https://nabe0096.github.io/textbook/"