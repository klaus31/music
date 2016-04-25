# halber 4/4tel takt (8 x tempo)
define :f2_drum_basic do |args=Hash.new|
  u2_default_args_if_not_set(args)

  # 1
  sample :drum_bass_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan]
  sleep args[:tempo]
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan] if one_in(2)
  sleep args[:tempo]
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan]
  sleep args[:tempo] * 2

  # 2
  sample :drum_snare_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan]
  sleep args[:tempo]
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan] if one_in(2)
  sleep args[:tempo]
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: args[:pan]
  sleep args[:tempo] * 2

end
