#!/bin/bash

# Script is used to automatically backup and compress databases in postgres docker containers
# Source - https://github.com/ChristianLempa/scripts/blob/main/db-container-backup/db-container-backup.sh

CONTAINERS=$(docker ps --format '{{.Names}}:{{.Image}}' | grep 'postgres' | cut -d":" -f1)

if [ ! -d $BACKUPDIR ]; then
    mkdir -p $BACKUPDIR
fi

for i in $CONTAINERS; do
    POSTGRES_DB=$(docker exec $i env | grep POSTGRES_DB |cut -d"=" -f2-)
    POSTGRES_PASSWORD=$(docker exec $i env | grep POSTGRES_PASSWORD |cut -d"=" -f2-)
    POSTGRES_USER=$(docker exec $i env | grep POSTGRES_USER |cut -d"=" -f2-)

    # ? Add --user to make it non root
    docker exec --env PGPASSWORD=$POSTGRES_PASSWORD --interactive $i \
    pg_dump --username $POSTGRES_USER $POSTGRES_DB \
    | gzip > $BACKUPDIR/$i-$POSTGRES_DB-$(date +"%Y%m%d%H%M").sql.gz

    # ! Not useful for now
    # OLD_BACKUPS=$(ls -1 $BACKUPDIR/$i*.gz |wc -l)
    # if [ $OLD_BACKUPS -gt $DAYS ]; then
    #     find $BACKUPDIR -name "$i*.gz" -daystart -mtime +$DAYS -delete
    # fi
done
