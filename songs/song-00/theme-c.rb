# hier ein erster versuch eines songs
# start coding: 22.4.2016

in_thread do
  3.times do
    args = Hash.new
    args[:tempo] = song.getBaseSleep
    f6_drum_speed(args)
    args[:times] = 1
    f7_drum_fill_speed(args)
    f6_drum_speed(args)
    f6_drum_speed(args)
    f7_drum_fill_speed(args)
    f6_drum_speed(args)
    args[:times] = 2
    f7_drum_fill_speed(args)
  end
end

in_thread do
  args = Hash.new
  args[:tempo] = song.getBaseSleep
  args[:amp_cymbal] = 0.2
  args[:amp] = 0.3
  args[:pan] = -1
  args[:bass_sample] = :bass_woodsy_c
  f3_bass_groove(args)
  f3_bass_groove(args)
end

in_thread do
  sleep song.getBaseSleep * 18 * 2
  use_synth :sine
  args = Hash.new
  args[:tones] = u1_rrand_i_list(:number => 14)
  args[:sleeps] = [1.25,0.75,1,1,1.25,0.75,1,1,1.25,0.75,1,1,1.25,1.75]
  args[:tempo] = song.getBaseSleep * 4
  args[:tonic] = :Fs
  args[:amp] = 0.3
  args[:pan] = [0.9, 0, -0.9, 0]
  args[:tonic_name] = :minor
  f5_lead_tones(args)
end


sleep song.getBaseSleep * 8 * 16
