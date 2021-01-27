#!/bin/bash
#This script is only an example, in the real world this is not a reliable way to sweep ips

if [ "$1" == "" ]
then
echo "Usage: ./script x.x.x"

else
for ip in `seq 1 254`
do
ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi