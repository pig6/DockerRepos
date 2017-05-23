#!/bin/sh

# Author:minchangchen
# Date:23:30 2017/3/3
# delete backup before 2 months ago

MONTH=`date "+%Y%m"`
BCKPATH=/data/backup/mariadb
MPATH="$BCKPATH/$MONTH"

if [ -e "$MPATH" ]; then
  echo "File: $MPATH exist. not need delete."
else
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "begin to delete backup before 2 months ago at $DATATIME."
  rm -rf $BCKPATH/todelete
  mv $BCKPATH/older $BCKPATH/todelete
  mv $BCKPATH/old $BCKPATH/older
  mv $BCKPATH/new $BCKPATH/old
  mkdir -p $MPATH
  ln -s $MPATH $BCKPATH/new
  DATATIME=`date "+%Y-%m-%d %H:%M:%S.%s"`
  echo "finished delete backup at $DATATIME."
fi
echo ""

