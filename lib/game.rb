class Game

  attr_reader :total_frames

  def initialize(frame = Frame.new)
    @total_frames = frame.create_frame(10)
  end

end
