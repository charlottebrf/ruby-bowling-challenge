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
