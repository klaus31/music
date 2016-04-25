# hier ein erster versuch eines songs
# start coding: 22.4.2016

var_loop = 3
var_tempo = 0.18

var_aktivate_drum_line = true
var_aktivate_bass_line = true
var_aktivate_lead_line = true

if var_aktivate_drum_line
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

if var_aktivate_bass_line
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
    sleep args[:tempo] * 12
    sample args[:bass_sample], amp: args[:amp] * 2, pan: -1
  end
end

if var_aktivate_lead_line
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
