#!/bin/bash

# ! Do not add quotes around EXCLUDE_PATTERNS otherwise systemd task will fail
restic --repo "$REPOSITORY_PATH" \
    backup \
    "$BACKUP_PATTERNS" \
    --exclude-caches \
    $EXCLUDE_PATTERNS
