#!/bin/bash

echo "connect 119.254.98.42 -p 14022, and open port 14022 for local 22"

while true; do
    ssh -o ServerAliveInterval=60 -R 14022:localhost:22  eppds@119.254.98.42 -p 10422 -N
    echo 'sleeping for 30s...'
    sleep 30
done


# while true; do
#     cmd_num0 = `ps aux|grep ssh| grep '$@'`
#     if [ $cmd_num0 = '']
#     then
#         ssh -v -o ServerAliveInterval=60 $@
#     fi
#     sleep 30
# done
