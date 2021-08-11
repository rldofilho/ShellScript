#! /bin/bash

mkdir /tmp/$(date +%T-%d.%m.%Y)

cp -r /root /tmp/$(date +%T-%d.%m.%T)

tar -czf /root/$(date +%T-%d.%m.%Y).tar.gz /root/$(date +%T-%d.%m.%Y)/

rm -rf /root/$(date +%T-%d.%m.%Y)
