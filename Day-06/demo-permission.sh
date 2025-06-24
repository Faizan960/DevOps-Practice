#!/bin/bash

echo "Enter file name:"
read file

if [ -e "$file" ]; then
  ls -l "$file"
else
  echo "❌ File does not exist"
fi

echo "👤 Executed by user: $(whoami)"
echo "📂 Groups: $(groups)"
