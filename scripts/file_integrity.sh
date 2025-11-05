#!/bin/bash
# Verify multiple files using SHA256 checksums

checksums_file="checksums.sha256"

if [ ! -f "$checksums_file" ]; then
    echo "❌ Checksums file '$checksums_file' not found!"
    exit 1
fi

echo "🔍 Verifying file integrity..."
echo

while read -r expected file; do
    if [ -z "$expected" ] || [ -z "$file" ]; then
        continue  # skip empty lines
    fi

    if [ ! -f "$file" ]; then
        echo "❌ $file missing"
        continue
    fi

    current=$(sha256sum "$file" | awk '{print $1}')

    if [ "$current" == "$expected" ]; then
        echo "✅ $file verified"
    else
        echo "⚠️ $file integrity compromised"
    fi
done < "$checksums_file"

