# alle meine entchen mit akkorden
use_synth :piano
var_tempo = 0.3
var_release = 0.8
var_shuffle = var_tempo * 0.6

define :akkord do |n|
  play chord(n, :minor), release: var_release
end

akkord  :C
sleep var_tempo + var_shuffle
akkord  :D
sleep var_tempo - var_shuffle
akkord  :E
sleep var_tempo
akkord  :F
sleep var_tempo
akkord  :G
sleep var_tempo * 2
akkord  :G
sleep var_tempo * 2
akkord  :A
sleep var_tempo + var_shuffle
akkord  :A
sleep var_tempo - var_shuffle
akkord  :A
sleep var_tempo
akkord  :A
sleep var_tempo
akkord  :G
sleep var_tempo * 3
akkord  :A
sleep var_tempo + var_shuffle
akkord  :A
sleep var_tempo - var_shuffle
akkord  :A
sleep var_tempo
akkord  :A
sleep var_tempo
akkord  :G
sleep var_tempo * 3
akkord  :F
sleep var_tempo + var_shuffle
akkord  :F
sleep var_tempo - var_shuffle
akkord  :F
sleep var_tempo
akkord  :F
sleep var_tempo
akkord  :E
sleep var_tempo * 2
akkord  :E
sleep var_tempo * 2
akkord  :G
sleep var_tempo + var_shuffle
akkord  :G
sleep var_tempo - var_shuffle
akkord  :G
sleep var_tempo
akkord  :G
sleep var_tempo
akkord  :C
