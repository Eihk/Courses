#!/bin/sh
set -e

# Settings
BRANCH="Ilissa.Shell01"
FILE_LOC="shell/01/01_Reponses.md"

# Get repo root no matter where script is executed
REPO_ROOT=$(git rev-parse --show-toplevel)
FILE_PATH="$REPO_ROOT/$FILE_LOC"

# Safety checks
if [ ! -f "$FILE_PATH" ]; then
	echo "Error: file not found -> $FILE_PATH"
	exit 1
fi

# Create or switch branch safely
git checkout -B "$BRANCH"

# Get last commit message on this branch
LAST_MSG=$(git log -1 --pretty=%B 2>/dev/null || true)

# Extract last number from commit message (if exists)
LAST_NUM=$(echo "$LAST_MSG" | grep -o '[0-9]\+' | tail -1)

# Compute next number
if [ -n "$LAST_NUM" ]; then
  NEXT_NUM=$((LAST_NUM + 1))
else
  NEXT_NUM=1
fi

# Add ONLY target file
git add "$FILE_PATH"

# Commit message
MSG="Ilissa: Shell01 - sendWork $NEXT_NUM"

git commit -m "$MSG"

# Push with upstream auto-set
# git push -u origin "$BRANCH"