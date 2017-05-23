#!/bin/sh

# Author:minchangchen
# Date:23:30 2017/3/3
# start incremental backup

MONTH=`date "+%Y%m"`
DAY=`date "+%d"`

DPATH="/data/backup/mariadb/$MONTH/$DAY"
CURR="/data/backup/mariadb/$MONTH/current"
if [ -e "$DPATH" ]; then
  echo "File: $DPATH exist. no need incremental backup."
else
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "begin to incremental backup at $DATATIME."
  mkdir -p $DPATH
  xtrabackup --user=backup --password=xtrapwd --backup --target-dir=$DPATH --incremental-basedir=$CURR
  rm -rf $CURR
  ln -s $DPATH $CURR
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "finished incremental backup at $DATATIME."
fi
echo ""

