play 20, amp: 1
play 22, amp: 0.6
play 24, amp: 0.6
sleep 2

# immer lauter
play 50, amp: 0.1
sleep 0.25
play 55, amp: 0.2
sleep 0.25
play 57, amp: 0.4
sleep 0.25
play 62, amp: 1
sleep 0.25
play 64, amp: 2
sleep 0.25
play 68, amp: 50
sleep 2

# stereo rechts links
play 60, pan: -1 # links
sleep 0.25
play 60, pan: 1 # rechts
sleep 0.25
play 60, pan: -1 # links
sleep 0.25
play 60, pan: 1 # rechts
sleep 0.25
play 60, pan: -1 # links
sleep 0.25
play 60, pan: 1 # rechts
sleep 2

# synths wechseln
use_synth :saw
play 38
sleep 0.25
play 50
sleep 0.25
play 62
sleep 1
use_synth :prophet
play 38
sleep 0.25
play 50
sleep 0.25
play 62

# synths wechseln gleichzeitig
use_synth :tb303
play 38
sleep 0.25
use_synth :saw
play 50
sleep 0.25
use_synth :prophet
play 57
sleep 2
