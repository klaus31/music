define :u1_rrand_i_list do |args=Hash.new|

  args[:number] = args[:number] || 20
  args[:min] = args[:min] || 0
  args[:max] = args[:max] || 8

  result = []
  args[:number].times do
    result.push(rrand_i(args[:min],args[:max]))
  end

  return result

end
