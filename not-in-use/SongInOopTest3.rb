class Drums < self
  def snare
    play 69
    sleep 1
    sample :drum_snare_soft
  end
end

drums = Drums.new
drums.snare
