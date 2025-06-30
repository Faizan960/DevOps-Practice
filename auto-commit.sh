#!/bin/bash

# Auto Commit Script by Faizan Patel
set -e

branch=$(git rev-parse --abbrev-ref HEAD)
timestamp=$(date '+%Y-%m-%d %H:%M:%S')
commit_msg="Auto commit on $timestamp by Faizan Patel"

# 📝 Log the commit time
echo "Committed at $timestamp" >> .daily-commit-log.txt

# ✅ Stage everything (to avoid unstaged error)
git add .

# ✅ Commit the change
git commit -m "$commit_msg"

# 🔄 Rebase pull to sync with remote
git pull --rebase origin "$branch"

# 🚀 Push the changes
git push origin "$branch"

echo "✅ Auto commit done and pushed by Faizan Patel!"
