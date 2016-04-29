define :f3_bass_groove do |args=Hash.new|
  u2_default_args_if_not_set(args)

  14.times do
    sample args[:bass_sample], amp: args[:amp] * 2, pan: 0.9
    sleep args[:tempo]
    sample args[:bass_sample], amp: args[:amp], pan: -0.9 if one_in(2)
    sleep args[:tempo] * 3
  end

  sample args[:bass_sample], amp: args[:amp] * 2, rate: 0.8, pan: 0.9
  sleep args[:tempo] * 4

  sample args[:bass_sample], amp: args[:amp] * 2, rate: 1.2, pan: 0.9
end
