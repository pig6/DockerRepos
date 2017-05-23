#!/bin/sh

# Author:minchangchen
# Date:23:30 2017/3/3
# start all service

DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
echo "begin to start at $DATATIME"
/data/env/shell/startbackup.sh &
crond
chown -R mysql:mysql /data/env/mariadb
mysqld --user=mysql
DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
echo "start finished at $DATATIME."
echo ""

