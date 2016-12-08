#!/bin/bash

cmd_num0 = "%s" % `ps aux|grep ssh|grep \@`
echo $cmd_num0
# printf "cmd_num0 is %s\n" % "$cmd_num0"
# while true; do
#     cmd_num0 = `ps aux|grep ssh| grep $@`
#     if [ $cmd_num0 = '']
#     then
#         ssh -v -o ServerAliveInterval=60 $@
#     fi
#     sleep 30
# done
