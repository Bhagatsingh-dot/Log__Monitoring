#!/bin/bash

LOG_DIR="/var/log"  # Change this if logs are stored elsewhere
ARCHIVE_DIR="/var/log/archives"
DAYS_TO_ARCHIVE=7
DAYS_TO_DELETE=30

# Ensure the archive directory exists
mkdir -p "$ARCHIVE_DIR"

echo "Archiving logs older than $DAYS_TO_ARCHIVE days..."
find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS_TO_ARCHIVE -exec tar -czf "$ARCHIVE_DIR/log_archive_$(date +%F).tar.gz" {} + -exec rm {} +

echo "Deleting logs older than $DAYS_TO_DELETE days..."
find "$ARCHIVE_DIR" -type f -name "*.tar.gz" -mtime +$DAYS_TO_DELETE -exec rm {} +

echo "Log management completed!"
