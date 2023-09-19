#!/bin/bash

# Script is used to automatically decompress and restore databases in postgres docker containers
# from SQL dump, which is copied to container's volume
# $0 - script name
# $1 - docker container id
# $2 - database name
# $3 - path to compressed DB dump

POSTGRES_DB=$(docker exec $1 env | grep POSTGRES_DB |cut -d"=" -f2-)
#! Not used ATM
POSTGRES_PASSWORD=$(docker exec $1 env | grep POSTGRES_PASSWORD |cut -d"=" -f2-)
POSTGRES_USER=$(docker exec $1 env | grep POSTGRES_USER |cut -d"=" -f2-)

# Create DB if not exists
docker exec $1 bash -c \
"psql --username $POSTGRES_USER \
-tc \"SELECT 1 FROM pg_database WHERE datname = '$2'\" \
| grep -q 1 | psql --username $POSTGRES_USER --command \"CREATE DATABASE $2\""
docker cp $3 $1:/
# Remove all containing folders in path
compressed_dump_name=${3##*/}
# Remove trailing .gz extension
decompressed_dump_name=${compressed_dump_name::-3}
docker exec $1 gzip --decompress $compressed_dump_name
#! Output all executed commands, stdout is not clear because of it
# probably should be just written to log and here return success/error message
docker exec $1 psql --username $POSTGRES_USER $2 -f $decompressed_dump_name
#? rm sql file from docker
