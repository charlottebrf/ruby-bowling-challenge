# Understands managing the scores of bowling games
class Game
  attr_accessor :frame, :game_frames

  def initialize(frame = Frame.new)
    @game_frames = []
    @frame = frame.create_frame(1)
  end

  def add_frame_game(knocked_over_pins)
    result = finish_frame(knocked_over_pins, @frame.flatten)
    @game_frames << result
  end

  def add_roll_to_frame(knocked_over_pins, frame, index)
    if frame[index] == '-'
      first_pin = knocked_over_pins[index]
      frame[index] = first_pin
    end
    frame[index]
  end

  def finish_frame(knocked_over_pins, frame)
    add_roll_to_frame(knocked_over_pins, frame, 0)
    add_roll_to_frame(knocked_over_pins, frame, 1)
    frame
  end
end
