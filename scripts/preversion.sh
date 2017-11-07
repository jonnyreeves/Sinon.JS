#!/bin/bash
echo 'Updating History.md'
git changelog --no-merges
git add History.md

echo 'Updating AUTHORS'
git authors --list > AUTHORS
git add AUTHORS

git commit -m "Update History.md and AUTHORS for new release"
