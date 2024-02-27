#!/bin/bash

cd "$VAULTWARDEN_DATA_PATH" || return

sqlite3 data/db.sqlite3 "VACUUM INTO '${BACKUP_PATH}/db-$(date '+%Y%m%d-%H%M').sqlite3'"

find "$VAULTWARDEN_BACKUP_PATH" -wholename "$VAULTWARDEN_BACKUP_PATH/*.sqlite3" -daystart -mtime +"$VAULTWARDEN_MAX_BACKUPS_COUNT" -delete

cd - || return
