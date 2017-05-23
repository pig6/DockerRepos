# rsync
docker images of rsync base on centos7

## Supported Tags
latest


## What's in this image?
This image contains the version 3.1.2 of rsync


## Usage
The default passwd is c90e2392f3f911e68d6a00ffd56dc7a0, you should mount your file /etc/rsync.conf or /etc/rsyncd.passwd on your production environment.

You can mount /data,/data[0-9] while run docker.

  Demo:
 * [root@serverhost ~]# docker run -d -p 873:873 --restart=always -v /home/data0:/data0 -v /home/data1:/data1 --name rsync rsync
 * [root@testhost ~]# echo "c90e2392f3f911e68d6a00ffd56dc7a0" > /etc/rsync/forker.passwd
 * [root@testhost ~]# chmod 600 /etc/rsync/forker.passwd
 * [root@testhost ~]# rsync -av --password-file=/etc/rsync/forker.passwd forker@serverhost::data0 /data/save/d0
 * [root@testhost ~]# rsync -av --password-file=/etc/rsync/forker.passwd forker@serverhost::data1 /data/save/d1


## Supported Docker Versions
This has been tested with Docker version 1.12.2 and higher.

## Issues
If you have any issues with this image, please raise a bug
