require 'frame'

describe Frame do
  subject(:frame) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a frame' do
      expect(frame.frame).to eq ['-', '-']
    end
  end

  describe '#create_frame' do
    it 'has 10 frames' do
      expect(frame.create_frame(10).length).to eq 10
    end

    it 'creates a frame' do
      expect(frame.create_frame(1)).to eq [['-', '-']]
    end
  end
end
