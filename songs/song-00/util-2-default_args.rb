# global arguments used, if nothing else set in given arguments.
define :u2_default_args_if_not_set do |args=Hash.new|

  args[:amp] = args[:amp] || 1
  args[:amp_cymbal] = args[:amp_cymbal] || 1
  args[:bass_sample] = args[:bass_sample] || :bass_woodsy_c
  args[:pan] = args[:pan] || 0
  args[:sleeps] = args[:sleeps] || [1.5,0.5,1,1,2,2,1.5,0.5,1,1,2.5,1,1,1,1,2,1,1,1,1,2,2,1.5,0.5,1,1,1]
  args[:tempo] = args[:tempo] || 0.5
  args[:tones] = args[:tones] || [0,1,2,3,4,4,5,5,5,5,4,5,5,5,5,4,3,3,3,3,2,2,4,4,4,4,0] # alle meine entchen
  args[:tonic] = args[:tonic] || :C
  args[:tonic_name] = args[:tonic_name] || :major

end
