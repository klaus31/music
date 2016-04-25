# Welcome to Sonic Pi v2.10

use_synth :dsaw
tempo = 0.3
var_release = 0.3
var_shuffle = tempo * 0.6

play  :C, release: var_release
sleep tempo + var_shuffle
play  :D, release: var_release
sleep tempo - var_shuffle
play  :E, release: var_release
sleep tempo
play  :F, release: var_release
sleep tempo
play  :G, release: var_release
sleep tempo * 2
play  :G, release: var_release
sleep tempo * 2
play  :A, release: var_release
sleep tempo + var_shuffle
play  :A, release: var_release
sleep tempo - var_shuffle
play  :A, release: var_release
sleep tempo
play  :A, release: var_release
sleep tempo
play  :G, release: var_release
sleep tempo * 3
play  :A, release: var_release
sleep tempo + var_shuffle
play  :A, release: var_release
sleep tempo - var_shuffle
play  :A, release: var_release
sleep tempo
play  :A, release: var_release
sleep tempo
play  :G, release: var_release
sleep tempo * 3
play  :F, release: var_release
sleep tempo + var_shuffle
play  :F, release: var_release
sleep tempo - var_shuffle
play  :F, release: var_release
sleep tempo
play  :F, release: var_release
sleep tempo
play  :E, release: var_release
sleep tempo * 2
play  :E, release: var_release
sleep tempo * 2
play  :G, release: var_release
sleep tempo + var_shuffle
play  :G, release: var_release
sleep tempo - var_shuffle
play  :G, release: var_release
sleep tempo
play  :G, release: var_release
sleep tempo
play  :C, release: var_release
