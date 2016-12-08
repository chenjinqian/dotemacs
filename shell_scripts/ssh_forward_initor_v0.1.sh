#!/bin/bash

# DaDingShan opps collector default initor, IP 192.168.100.2
ssh -o ServerAliveInterval=60 -R 15122:192.168.100.151:22 eppds@119.254.98.42 -p 10422 -N
# ssh -o ServerAliveInterval=60 eppds@119.254.98.42 -p 10422 $@
