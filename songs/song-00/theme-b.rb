# hier ein erster versuch eines songs
# start coding: 22.4.2016

in_thread do
  args = Hash.new
  args[:tempo] = song.getBaseSleep
  args[:times] = 2
  2.times do
    f6_drum_speed(args)
  end
  1.times do # x 8 tempo
    f7_drum_fill_speed(args)
  end
end

sleep (song.getBaseSleep * 8) * 2
