class Game

  attr_reader :total_frames

  def initialize(frame = Frame.new)
    @total_frames = frame.create_frame(1)
  end

  def add_first_roll(knocked_over_pins, frame)
    if frame[0] == "-"
      first_pin = knocked_over_pins[0]
      frame[0] = first_pin
    end
    frame[0]
  end

  def add_second_roll(knocked_over_pins, frame)
    if frame[1] == "-"
      second_pin = knocked_over_pins[1]
      frame[1] = second_pin
    end
    frame[1]
  end

end
