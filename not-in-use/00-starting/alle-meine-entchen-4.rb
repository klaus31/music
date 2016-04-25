# alle meine entchen
use_synth :piano
var_tempo = 0.3
var_bass_root = :c1
var_tone_root = :c3

var_tones = [0,1,2,3,4,4,5,5,5,5,4,5,5,5,5,4,3,3,3,3,2,2,4,4,4,4,0]
var_sleeps = [1.5,0.5,1,1,2,2,1.5,0.5,1,1,2.5,1,1,1,1,2,1,1,1,1,2,2,1.5,0.5,1,1,1]
var_sleeps_sum = 0
assert_equal var_tones.length, var_sleeps.length
var_count = 0

var_tones.length.times do
  # bass chord on full takt (if hit)
  play chord(scale(var_bass_root, :major)[var_tones[var_count]], :major) if var_sleeps_sum % 4 == 0
  play scale(var_tone_root, :major)[var_tones[var_count]]
  sleep var_tempo * var_sleeps[var_count]
  var_sleeps_sum += var_sleeps[var_count]
  var_count = (inc var_count)
end
