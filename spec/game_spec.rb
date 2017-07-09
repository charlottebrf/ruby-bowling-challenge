require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a frame' do
      all_frames = game.ten_frames
      expect(all_frames.length).to equal 10
    end
  end

  describe '#add_first_roll' do
    it 'adds the number of pins from the first roll to the frames' do
      result = game.add_first_roll([1, 7], ['-', '-'])
      expect(result).to equal 1
    end
  end

  describe '#add_second_roll' do
    it 'adds the number of pins from the second roll to the frames' do
      result = game.add_second_roll([1, 7], ['-', '-'])
      expect(result).to equal 7
    end
  end

  describe '#finish_frame' do
    it 'adds the result of the first and second rolls to the frame' do
      result = game.finish_frame([1, 7], ['-', '-'])
      expect(result).equal? [1, 7]
    end
  end
end
