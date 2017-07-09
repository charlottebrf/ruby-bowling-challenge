# Understands the instantiation & creation of a frame
class Frame
  attr_reader :frame, :create_frame

  def initialize
    @frame = ['-', '-']
  end

  def create_frame(num)
    num.times.map { @frame }
  end
end
