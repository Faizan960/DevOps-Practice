#!/bin/bash

echo "Enter folder to backup:"
read folder

timestamp=$(date +%Y%m%d_%H%M%S)
tar -czf "${folder}_backup_$timestamp.tar.gz" "$folder"

echo "Backup created: ${folder}_backup_$timestamp.tar.gz"

