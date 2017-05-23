#!/bin/sh

echo 511 > /proc/sys/net/core/somaxconn
echo never > /sys/kernel/mm/transparent_hugepage/enabled
sysctl vm.overcommit_memory=1
redis-server /data/env/redis/redis.conf