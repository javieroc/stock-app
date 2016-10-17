#! /bin/bash
# Script to create and restore mysql database.

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -lt $EXPECTED_ARGS ]
then
    echo "You need input the dbname and mysql password"
    exit $E_BADARGS
fi

if [ ! -f ./backups/stockdb.sql ]; then
    echo "File not found!"
    exit
fi

if type mysql >/dev/null 2>&1; then
    Q1="DROP DATABASE IF EXISTS $1;"
    Q2="CREATE DATABASE IF NOT EXISTS $1;"
    SQL="${Q1}${Q2}"

    echo "Installing database"

    mysql -uroot -p$2 -e "$SQL"

    mysql -uroot -p$2 $1 < backups/stockdb.sql

    echo "The database $1 was created and restored"
else
    echo "MYSQL is not installed"
fi


