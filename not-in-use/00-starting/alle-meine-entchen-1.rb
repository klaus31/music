# Welcome to Sonic Pi v2.10

tempo = 0.3
var_release = 0.3
var_shuffle = tempo * 0.6

play  ring(:C4), release: var_release
sleep tempo + var_shuffle
play  ring(:D4), release: var_release
sleep tempo - var_shuffle
play  ring(:E4), release: var_release
sleep tempo
play  ring(:F4), release: var_release
sleep tempo
play  ring(:G4), release: var_release
sleep tempo * 2
play  ring(:G4), release: var_release
sleep tempo * 2
play  ring(:A4), release: var_release
sleep tempo + var_shuffle
play  ring(:A4), release: var_release
sleep tempo - var_shuffle
play  ring(:A4), release: var_release
sleep tempo
play  ring(:A4), release: var_release
sleep tempo
play  ring(:G4), release: var_release
sleep tempo * 3
play  ring(:A4), release: var_release
sleep tempo + var_shuffle
play  ring(:A4), release: var_release
sleep tempo - var_shuffle
play  ring(:A4), release: var_release
sleep tempo
play  ring(:A4), release: var_release
sleep tempo
play  ring(:G4), release: var_release
sleep tempo * 3
play  ring(:F4), release: var_release
sleep tempo + var_shuffle
play  ring(:F4), release: var_release
sleep tempo - var_shuffle
play  ring(:F4), release: var_release
sleep tempo
play  ring(:F4), release: var_release
sleep tempo
play  ring(:E4), release: var_release
sleep tempo * 2
play  ring(:E4), release: var_release
sleep tempo * 2
play  ring(:G4), release: var_release
sleep tempo + var_shuffle
play  ring(:G4), release: var_release
sleep tempo - var_shuffle
play  ring(:G4), release: var_release
sleep tempo
play  ring(:G4), release: var_release
sleep tempo
play  ring(:C4), release: var_release
