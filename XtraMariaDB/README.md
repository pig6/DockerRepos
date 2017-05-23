# xtramariadb
docker images of xtrabackup & mariadb base on minchangchen/crontab image.

## Supported Tags
latest

## What's in this image?
This image contains the version 10.1.21 of mariadb, the version 2.4.6 of xtrabackup

## Usage

You should import the data of mariadb, the reset the password of backup user.

docker run -d -p 3306:3306 -v /data/env/xtramariadb/db:/data/env/xtramariadb -v /data/backup/mariadb:/data/backup/mariadb --name xtramariadb minchangchen/xtramariadb

The container will full backup the data of mariadb for every month, incremental backup every day, and will remove the backup files before 2 months ago.

## Supported Docker Versions
This has been tested with Docker version 1.12.2 and higher.

## Issues
If you have any issues with this image, please raise a bug
