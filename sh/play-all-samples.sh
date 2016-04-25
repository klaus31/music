#!/bin/bash

set `ls /usr/share/sonic-pi/samples/*flac | sed "s/.*\///g" | sed "s/.flac//"`
for I; do
  echo sample :$I
    sonic_pi sample :$I
  sleep 2
done
sample_duration(:$I)
