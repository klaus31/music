define :f5_lead_tones do |args=Hash.new|
  u2_default_args_if_not_set(args)

  f5_count = 0
  args[:tones].length.times do
    if args[:pan].kind_of?(Array)
      pan = args[:pan].ring[f5_count]
    else
      pan = args[:pan]
    end
    play scale(args[:tonic], args[:tonic_name])[args[:tones][f5_count]], amp: args[:amp], pan: pan
    sleep args[:tempo] * args[:sleeps].ring[f5_count]
    f5_count = (inc f5_count)
  end
end
