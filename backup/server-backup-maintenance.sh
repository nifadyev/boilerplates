#!/bin/bash

# Delete old snapshots
# `--prune` option - remove the remaining data that was referenced only by the removed snapshots
restic --repo "$REPOSITORY_PATH" forget \
    --cleanup-cache \
    --keep-hourly 1 \
    --keep-daily 7 \
    --keep-weekly 4 \
    --keep-monthly 3 \
    --keep-yearly 1 \
    --prune

# Validate repository health
restic --repo "$REPOSITORY_PATH" check
