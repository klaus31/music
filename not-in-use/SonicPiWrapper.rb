# this is a dead-end road, because every
# functionality of sonig-pi has to be wrapped
# with this solution
class SonicPiWrapper

  def initialize(sonicPi)
    @sonicPi = sonicPi
  end

  def play
    @sonicPi.play 60
  end

end
