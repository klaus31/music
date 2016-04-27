class Drum
  def hit
    return :drum_snare_soft
  end
end

class SuperDrum < Drum
  def hit
    return :drum_snare_hard
  end
end

drum = SuperDrum.new
sample drum.hit
sleep 0.5
sample drum.hit
