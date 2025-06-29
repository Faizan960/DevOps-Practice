#!/bin/bash

# Bash Auto Commit Script by Faizan Patel

# Exit on any error
set -e

# Stage all changes (including deletions and new files)
git add .

# Check if there are changes
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    # Commit with current timestamp
    commit_msg="Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$commit_msg"
    git push origin "$(git rev-parse --abbrev-ref HEAD)"
    echo "✅ Auto committed and pushed!"
fi
