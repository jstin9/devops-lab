log-archive() {
  LOG_DIRECTORY=$1
  DATE=$(date +%Y%m%d_%H%M%S)
  ARCHIVE_DEST="logs_archive"

  if [ ! -d "$LOG_DIRECTORY" ]; then
    echo "Directory '$LOG_DIRECTORY' does not exist."
    return 1
  fi

  if [ ! -d "$ARCHIVE_DEST" ]; then
    mkdir "$ARCHIVE_DEST"
    echo "Created directory: $ARCHIVE_DEST"
  fi

  tar -czf "$ARCHIVE_DEST/logs_archive_$DATE.tar.gz" "$LOG_DIRECTORY"
  echo "Archive created: $ARCHIVE_DEST/logs_archive_$DATE.tar.gz"
}
