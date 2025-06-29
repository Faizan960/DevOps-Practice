#!/bin/bash

# Auto Commit Script by Faizan Patel
set -e

branch=$(git rev-parse --abbrev-ref HEAD)
commit_msg="Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"

# Stage changes
git add .

# Check for staged changes
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    git commit -m "$commit_msg"
    
    echo "🔄 Pulling latest changes from origin/$branch..."
    git pull --rebase origin "$branch"
    
    echo "📤 Pushing changes..."
    git push origin "$branch"
    
    echo "✅ Auto committed and pushed by Faizan Patel!"
fi
