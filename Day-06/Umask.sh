#!/bin/bash

# Show current umask
echo "🔍 Current umask: $(umask)"

# Create test file and folder
touch testfile.txt
mkdir testdir

# Show their default permissions
echo "📄 File permissions:"
ls -l testfile.txt

echo "📁 Directory permissions:"
ls -ld testdir

# Clean up
rm testfile.txt
rmdir testdir
