#!/bin/bash

echo "Enter file name:"
read file

# Check if file exists
if [ ! -e "$file" ]; then
  echo "❌ File does not exist"
  exit 1
fi

# Show current ownership
echo "👀 Current Ownership:"
ls -l "$file"

# Ask for new owner username
echo "Enter new owner username (must exist):"
read new_owner

# Try to change owner
echo "🔧 Attempting to change owner to '$new_owner'..."
sudo chown "$new_owner" "$file"

# Show updated ownership
echo "✅ Updated Ownership:"
ls -l "$file"
