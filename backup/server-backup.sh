#!/bin/bash

restic --repo $REPOSITORY_PATH \
    backup $BACKUP_PATTERNS \
    $EXCLUDE_PATTERNS --exclude-caches
