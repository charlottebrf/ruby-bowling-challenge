require 'frame'

describe Frame do
  subject(:frame) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a frame' do
      expect(frame.frame).to eq frame.frame
    end
  end

  describe '#create_frame' do
    it 'has 10 frames' do
      p frame.create_frame(10)
      expect(frame.create_frame(10).length).to eq 10
    end
  end
end
