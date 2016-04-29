# hier ein erster versuch eines songs
# start coding: 22.4.2016

in_thread do
  args = Hash.new
  args[:tempo] = song.getBaseSleep
  2.times do # x 8 tempo
    f6_drum_speed(args)
  end
  1.times do # x 8 tempo
    f7_drum_fill_speed(args)
  end
  1.times do # x 4 tempo
    f6_drum_speed(args)
  end
  1.times do # x 8 tempo
    f7_drum_fill_speed(args)
  end
  1.times do # x 4 tempo
    f6_drum_speed(args)
  end
end

in_thread do
  args = Hash.new
  args[:tempo] = song.getBaseSleep
  args[:amp_cymbal] = 0.2
  args[:amp] = 0.15
  args[:pan] = -1
  args[:bass_sample] = :bass_woodsy_c
  f3_bass_groove(args)
end

sleep song.getBaseSleep * var_loop
