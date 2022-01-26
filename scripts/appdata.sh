DIRS=(
  'appdata'
  'appdata/db'
  'appdata/mq'
  'appdata/back'
  'appdata/back/static'
  'appdata/back/media'
)

for dir in "${DIRS[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir "$dir"
  fi
done
