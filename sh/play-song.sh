#!/bin/bash
SONG_FILES=`ls $1/*`
echo "" > target/song.rb

for I in $SONG_FILES; do
  if [[ $I =~ \/theme-(.+).rb$ ]]; then
    echo "skip >  "$I
  else
    echo "add >  "$I
     cat $I >> target/song.rb
  fi
done

if test $# == 2; then
  for I in $SONG_FILES; do
    if [[ $I =~ \/theme-$2.rb$ ]]; then
      echo "add >  "$I
      cat $I >> target/song.rb
    fi
  done
else
  for I in $SONG_FILES; do
    if [[ $I =~ \/theme-(.+).rb$ ]]; then
      echo "add >  "$I
      cat $I >> target/song.rb
    fi
  done
fi

sonic_pi stop && cat target/song.rb | sonic_pi
