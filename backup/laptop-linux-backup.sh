#!/bin/bash

restic --repo "$REPOSITORY_PATH" \
    backup $EXCLUDE_PATTERNS "$BACKUP_PATTERNS"
    # backup "$BACKUP_PATTERNS" \
    # "$EXCLUDE_PATTERNS"
    
    # "$EXCLUDE_PATTERNS" --exclude-caches \
    # disable file scanning for estimation, no need in systemd service
    # --no-scan
