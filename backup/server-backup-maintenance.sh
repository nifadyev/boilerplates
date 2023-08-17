#!/bin/bash

restic --repo $REPOSITORY_PATH forget \
    --keep-hourly 1 \
    --keep-daily 7 \
    --keep-weekly 4 \
    --keep-monthly 3 \
    --keep-yearly 1
