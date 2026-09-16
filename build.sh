#!/usr/bin/env bash
# Wrap the artifact-style fragment (index.html) into a full HTML document for GitHub Pages → docs/ (Pages source: main /docs)
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p docs
{ printf '<!doctype html>\n<html lang="en">\n<head>\n'; sed -n '1,/^<\/style>$/p' index.html; printf '</head>\n<body>\n'; sed '1,/^<\/style>$/d' index.html; printf '</body>\n</html>\n'; } > docs/index.html
rm -rf docs/assets && cp -R assets docs/assets
echo "built docs/ ($(du -sh docs | cut -f1))"
