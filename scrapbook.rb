[["-", "-"]]
[[1, 7]]

[0][1]
def roll(knocked_over_pins)

  @total_frames.each_with_index do |frame, index|
    if frame[0][0] == "-"
      frame = frame[0][0]
      replacer = frame.replace()
      p "frame in the for loop"
      p frame
    end
    p "frame in the for loop"
    p replacer

  end
  p "What total frames actually are"
  p @total_frames
end




  def finish_frame(first_roll, second_roll)
  end


  def add_second_roll(knocked_over_pins, frame)
    if frame[1] == "-"
      second_pin = knocked_over_pins[1]
      frame[1] = second_pin
    end
    frame[1]
  end

  describe "#add_second_roll" do
    it "adds the number of knocked over pins from the second roll to the frames" do
      result = game.add_second_roll([1, 7], ["-", "-"])
      expect(result).to equal 7
    end
  end
