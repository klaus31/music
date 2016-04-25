#!/bin/bash
# play the latest rb-file modified

for file in songs/in-working-progress/**/*rb; do
  [[ $file -nt $latest ]] && latest=$file
done

cat songs/functions/* > target/song.rb
cat songs/utils/* >> target/song.rb
cat $latest >> target/song.rb
sonic_pi stop && cat target/song.rb | sonic_pi
