#!/bin/sh
TIMESTAMP=$(date +%F-%H%M)
BACKUP_DIR="/backups" # Replace with your own path
VOLUME_NAME="minecraft_data"
tar -zcvpf "${BACKUP_DIR}/minecraft_backup_$TIMESTAMP.tar.gz" --absolute-names /var/lib/docker/volumes/$VOLUME_NAME/_data
