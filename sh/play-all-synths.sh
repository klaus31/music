#!/bin/bash

# set `ls /usr/share/sonic-pi/synthdefs/compiled/*scsyndef | sed "s/.*sonic-pi-//g" | sed "s/.scsyndef//"`
#
# for I; do
#   echo use_synth :$I
#   sonic_pi << EOF
# use_synth :$I
# play :C
# play :E
# play :G
# EOF
#  sleep 2
# done

set chipnoise cnoise dark_ambience dpulse dsaw dtri dull_bell fm gnoise growl hollow hoover mod_beep mod_dsaw mod_fm mod_pulse mod_saw mod_sine mod_tri noise piano pluck pnoise pretty_bell prophet pulse saw sine square subpulse supersaw tb303 tri zawa
TMP=/tmp/play-all-synths.tmp
touch $TMP
for I; do
  echo $I
  sonic_pi << EOF
use_synth :$I
play :C
play :E
play :G
EOF
  sleep 2
done
