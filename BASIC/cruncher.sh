# removes rem statements
# removes spaces

filename=$(basename -- "$1")
extension="${1##*.}"
filename_only="${1%.*}"
output_dir="$(pwd)/${2}"
echo "\$1=${1}"
echo "\$2=${2}"
echo "filename=${filename}"
echo "extension=${extension}"
echo "filename_only=${filename_only}"
cat "${output_dir}/${1}" | sed -e '/^[[:digit:]]*[[:space:]]*rem/d' | sed -e '/"./!s/ //g' | sed -e 's/[[:space:]]*print[[:space:]]*/print/g' > "${output_dir}/${filename_only}_.bas"
