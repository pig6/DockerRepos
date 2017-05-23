#!/bin/sh

# Author:minchangchen
# Date:23:30 2017/3/3
# start to full backup

/data/env/shell/deletebackup.sh

MONTH=`date "+%Y%m"`
DAY=`date "+%d"`

DPATH="/data/backup/mariadb/$MONTH/$DAY"
MPATH="/data/backup/mariadb/$MONTH"
CURR="$MPATH/current"
if [ -e "$CURR" ]; then
  echo "File: $CURR exist. no need full backup."
else
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "begin to full backup at $DATATIME."
  mkdir -p $DPATH
  xtrabackup --user=backup --password=xtrapwd --backup --target-dir=$DPATH
  rm -rf $CURR
  ln -s $DPATH $CURR
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "finished full backup at $DATATIME."
fi
echo ""

