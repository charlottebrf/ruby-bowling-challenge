class Frame

  attr_reader :frame

  def initialize
    @frame = ['-','-']
  end

  def create_frame(num)
    num.times.map {|frame| @frame }
  end

end
