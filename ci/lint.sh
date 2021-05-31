#!/usr/bin/env bash

npm install -g markdownlint-cli
git fetch origin main:main
for file_name in $(git diff --name-only $HEAD main); do
  if [[ $file_name == *".md" ]]; then
    markdownlint "$file_name"
  fi
done
