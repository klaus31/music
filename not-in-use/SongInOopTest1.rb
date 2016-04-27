class SongParams

  def initialize()
    @play_inc = true

    @width = 5

    @sleep_inc_step = 0.1
    @sleep_min = 0.1
    @sleep_max = @sleep_min + @sleep_inc_step * @width
    @sleep = @sleep_min

    @play_inc_step = 1
    @play_min = 65
    @play_max = @play_min + @play_inc_step * @width
    @play = @play_min
  end

  def play
    @play_inc = false if @play >= @play_max
    @play_inc = true if @play <= @play_min
    @play = @play + @play_inc_step if @play_inc
    @play = @play - @play_inc_step if !@play_inc
    return @play
  end

  def sleep
    @sleep_inc = false if @sleep >= @sleep_max
    @sleep_inc = true if @sleep <= @sleep_min
    @sleep = @sleep + @sleep_inc_step if @sleep_inc
    @sleep = @sleep - @sleep_inc_step if !@sleep_inc
    return @sleep
  end

  def loops
    return 100
  end

end

song = SongParams.new
song.loops.times do
 play song.play
 sleep song.sleep
end
