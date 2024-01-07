#!/bin/bash

cd "$VAULTWARDEN_DATA_PATH" || return

sqlite3 data/db.sqlite3 "VACUUM INTO '${BACKUP_PATH}/db-$(date '+%Y%m%d-%H%M').sqlite3'"

cd - || return
