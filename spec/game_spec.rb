require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#initialize' do
    it 'is initialized with a frame instance' do
      game_frame = game.frame
      expect(game_frame).equal? ['-', '-']
    end

    it 'is initialized an game_frames to store the frames' do
      all_frames = game.game_frames
      expect(all_frames).equal? []
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

  describe '#add_frame_game' do
    it 'adds the frame pins to the all_frames array' do
      game.add_frame_game([1, 7])
      expect(game.game_frames).equal? [[1, 7]]
    end
  end
end
