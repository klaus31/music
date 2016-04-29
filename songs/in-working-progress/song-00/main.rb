# hier ein erster versuch eines songs
# start coding: 22.4.2016

var_loop = 3
var_tempo = 0.18

var_activate_drum_line_0 = true
var_activate_bass_line_0 = true
var_activate_lead_line_0 = true

var_activate_drum_line_1 = true

var_activate_drum_line_2 = true
var_activate_bass_line_2 = true

var_activate_end = true

var_activate_section_0 = var_activate_drum_line_0 || var_activate_bass_line_0 || var_activate_lead_line_0
var_activate_section_1 = var_activate_drum_line_1
var_activate_section_2 = var_activate_drum_line_2 || var_activate_bass_line_2

if var_activate_drum_line_0
  in_thread do
    args = Hash.new
    args[:tempo] = var_tempo
    args[:amp_cymbal] = 0.2
    var_loop.times do
      # 60 x tempo
      6.times do
        f2_drum_basic(args)
      end
      f4_drum_fill(args)
    end
  end
end

if var_activate_bass_line_0
  in_thread do
    args = Hash.new
    args[:tempo] = var_tempo
    args[:amp_cymbal] = 0.2
    args[:amp] = 0.15
    args[:pan] = -1
    args[:bass_sample] = :bass_woodsy_c
    var_loop.times do
      f3_bass_groove(args)
    end
  end
end

if var_activate_lead_line_0
  in_thread do
    use_synth :sine
    args = Hash.new
    args[:tones] = u1_rrand_i_list(:number => 14)
    args[:sleeps] = [1.25,0.75,1,1,1.25,0.75,1,1,1.25,0.75,1,1,1.25,1.75]
    args[:tempo] = var_tempo * 4
    args[:tonic] = :Fs
    args[:amp] = 0.25
    args[:pan] = [0.9, 0, -0.9, 0]
    args[:tonic_name] = :minor
    var_loop.times do
      f5_lead_tones(args)
    end
  end
end

if var_activate_section_0
  sleep var_tempo * var_loop * 60
end

if var_activate_drum_line_1
  in_thread do
    args = Hash.new
    args[:tempo] = var_tempo
    1.times do
      f6_drum_speed(args)
    end
    1.times do # x 8 tempo
      f7_drum_fill_speed(args)
    end
  end
end

if var_activate_section_1
  sleep (var_tempo * 8) * 2
end

if var_activate_drum_line_2
  in_thread do
    args = Hash.new
    args[:tempo] = var_tempo
    var_loop.times do
      f6_drum_speed(args)
    end
  end
end

if var_activate_bass_line_2
  in_thread do

    args = Hash.new
    args[:tempo] = var_tempo
    args[:amp_cymbal] = 0.2
    args[:amp] = 0.15
    args[:pan] = -1
    args[:bass_sample] = :bass_woodsy_c

    var_loop.times do
      f3_bass_groove(args)
    end
  end
end

# the end
if var_activate_end
  in_thread do
    sleep var_tempo * 12
    sample :bass_woodsy_c, amp: 2, pan: -1
  end
end
