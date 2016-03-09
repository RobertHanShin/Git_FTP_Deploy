#!/bin/sh

# eppz!tools

REPOSITORY_PATH="$1"
echo "'$REPOSITORY_PATH'"

cd "$REPOSITORY_PATH"

/usr/local/bin/git-ftp init —A

exit 0