# halber 4/4tel takt
define :f6_drum_speed do |args=Hash.new|
  u2_default_args_if_not_set(args)

  4.times do
    sample :drum_bass_soft
    sample :drum_cymbal_closed, amp: args[:amp_cymbal] * 1.3, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan] * -1
    sleep args[:tempo] / 2
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: args[:amp_cymbal] * 0.7, pan: args[:pan]
    sleep args[:tempo] / 2
    sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan] * -1
    sleep args[:tempo] / 2
  end
end
