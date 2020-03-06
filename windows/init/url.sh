urlencode() {
  local raw="${1}"
  local rawlen=${#raw}
  local encoded=""
  local i r e

  for (( i=0 ; i<rawlen ; i++ )); do
     r=${raw:$i:1}
     case "$r" in
        [-_.~a-zA-Z0-9] ) e="${r}" ;;
        * )               printf -v e '%%%02x' "'$r"
     esac
     encoded+="${e}"
  done
  echo "${encoded}"
}