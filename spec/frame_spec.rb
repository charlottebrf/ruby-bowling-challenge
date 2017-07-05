require 'frame'

describe Frame do
  subject(:frame) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a frame' do
      expect(frame.frame).to eq frame.frame
    end
  end
end
