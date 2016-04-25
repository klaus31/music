define :normaler_takt do
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end

define :ende_takt do
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_snare_soft
  sample :drum_cymbal_open, attack: 0.01, sustain: 0, release: 2
  sample :drum_tom_lo_soft
  sleep 0.125
  sample :drum_tom_lo_soft
  sleep 0.125
  sample :drum_tom_mi_soft
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_tom_mi_soft
  sleep 0.125
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sample :drum_tom_hi_soft
  sleep 0.125
  sample :drum_tom_hi_soft
  sleep 0.125
  sample :drum_bass_soft
  sample :drum_cymbal_closed
  sample :drum_tom_mi_soft, amp: 2
  sleep 0.125
  sample :drum_tom_mi_soft, amp: 2
  sleep 0.125
  sample :drum_bass_hard
  sample :drum_splash_hard, attack: 0.01, sustain: 0, release: 1
end

1.times do
  normaler_takt
end

ende_takt
