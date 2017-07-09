# Understands managing the scores of bowling games
class Game
  attr_reader :ten_frames

  def initialize(frame = Frame.new)
    @ten_frames = frame.create_frame(10)
  end

  def add_first_roll(knocked_over_pins, frame)
    if frame[0] == '-'
      first_pin = knocked_over_pins[0]
      frame[0] = first_pin
    end
    frame[0]
  end

  def add_second_roll(knocked_over_pins, frame)
    if frame[1] == '-'
      second_pin = knocked_over_pins[1]
      frame[1] = second_pin
    end
    frame[1]
  end

  def finish_frame(knocked_over_pins, frame)
    add_first_roll(knocked_over_pins, frame)
    add_second_roll(knocked_over_pins, frame)
    frame
  end
end
