#!/bin/sh

# eppz!tools

# SourceTree Custom Action parameter hooks goes like
# $PATH <ftp username> <ftp password> <ftp path>

REPOSITORY_PATH="$1"
FTP_USERNAME="$2"
FTP_PASSWORD="$3"
FTP_PATH="$4"

echo "Switching directory to repository root at '$REPOSITORY_PATH'"
cd "$REPOSITORY_PATH"

echo "Pushing latest checkout to '$FTP_PATH' with the given credentials"
git ftp push -u $FTP_USERNAME -p $FTP_PASSWORD "$FTP_PATH"

exit 0