#!/usr/bin/env bash
# removes rem statements
# removes spaces

filename=$(basename -- "$1")
extension="${1##*.}"
filename_only="${1%.*}"

#echo "${filename}"
#echo "${extension}"
#echo "${filename_only}"

cat "${filename}" | sed -e '/^[[:digit:]]*[[:space:]]*rem/d' | sed -e '/"./!s/ //g' | sed -e 's/ print /print/g' > "${filename_only}_.bas"
