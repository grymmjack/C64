#!/usr/bin/env bash
# removes rem statements
# removes spaces

filename=$(basename -- "$1")
extension="${1##*.}"
filename_only="${1%.*}"

echo "\$1=${1}"
echo "filename=${filename}"
echo "extension=${extension}"
echo "filename_only=${filename_only}"

cat "${1}" | sed -e '/^[[:digit:]]*[[:space:]]*rem/d' | sed -e '/"./!s/ //g' | sed -e 's/[[:space:]]*print[[:space:]]*/print/g' > "${filename_only}_.bas"
