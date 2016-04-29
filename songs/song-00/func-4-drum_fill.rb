# achtung - kein vollständiger 4/4tel (12 x tempo)
define :f4_drum_fill do |args=Hash.new|
  u2_default_args_if_not_set(args)

  # 1
  sample :drum_bass_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: 1
  sleep args[:tempo] * 2
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: 1
  sleep args[:tempo] * 2

  # 2
  sample :drum_snare_soft
  sample :drum_cymbal_open, attack: 0.01, sustain: 0, release: sample_duration(:drum_cymbal_open) - 1, pan: 1
  sleep args[:tempo]
  sample :drum_tom_hi_soft, pan: -1
  sleep args[:tempo] / 2
  sample :drum_tom_hi_soft, pan: -1
  sleep args[:tempo] / 2
  sample :drum_tom_mi_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: 1
  sleep args[:tempo]
  sample :drum_tom_lo_soft, pan: 1
  sleep args[:tempo]

  # 3
  sample :drum_bass_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: 1
  sample :drum_tom_hi_soft, pan: -1
  sleep args[:tempo]
  sample :drum_tom_hi_soft, pan: -1
  sleep args[:tempo]
  sample :drum_bass_soft
  sample :drum_cymbal_closed, amp: args[:amp_cymbal], pan: 1
  sample :drum_tom_mi_soft, amp: 2
  sleep args[:tempo]
  sample :drum_tom_mi_soft, amp: 2
  sleep args[:tempo]

  # 4
  sample :drum_bass_hard
  sample :drum_splash_hard, attack: 0.01, sustain: 0, release: 1, amp: 0.8

end
