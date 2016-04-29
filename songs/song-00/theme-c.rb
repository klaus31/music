# hier ein erster versuch eines songs
# start coding: 22.4.2016

var_loop = 3
in_thread do
  args = Hash.new
  args[:tempo] = var_tempo
  var_loop.times do
    f6_drum_speed(args)
  end
end

in_thread do
  args = Hash.new
  args[:tempo] = var_tempo
  args[:amp_cymbal] = 0.2
  args[:amp] = 0.15
  args[:pan] = -1
  args[:bass_sample] = :bass_woodsy_c
  var_loop.times do
    f3_bass_groove(args)
  end
end
