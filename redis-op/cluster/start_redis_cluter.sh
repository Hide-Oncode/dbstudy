#!/bin/bash
read ip

redis-cli -a 111111 --cluster create \
--cluster-replicas 1 \
$ip:7100 \
$ip:7101 \
$ip:7102 \
$ip:7103 \
$ip:7104 \
$ip:7105 
