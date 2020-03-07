#!/bin/bash

if [$1 = ""]
then
echo "Please enter valid address-range"
exit 1
fi
for ip4 in `seq 1 254`; do
ping -c 1 $1.$ip4 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
