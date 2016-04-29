# halber 4/4tel takt
define :f7_drum_fill_speed do |args=Hash.new|
  u2_default_args_if_not_set(args)

  2.times do
    sample :drum_bass_soft, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_bass_soft, pan: args[:pan] * -1
    sleep args[:tempo] / 2
  end
  2.times do
    sample :drum_tom_mid_soft, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_tom_mid_soft, pan: args[:pan] * -1
    sleep args[:tempo] / 2
  end
  2.times do
    sample :drum_bass_soft, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_bass_soft, pan: args[:pan] * -1
    sleep args[:tempo] / 2
  end
  2.times do
    sample :drum_snare_soft, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_snare_soft, pan: args[:pan] * -1
    sleep args[:tempo] / 2
  end
end
