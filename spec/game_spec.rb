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

  describe '#add_roll' do
    it 'adds the number of pins from the first roll to the frames' do
      result = game.add_roll_to_frame([1, 7], ['-', '-'], 0)
      expect(result).to equal 1
    end

    it 'adds the number of pins from the second roll to the frames' do
      result = game.add_roll_to_frame([1, 7], ['-', '-'], 1)
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
      game.add_frame_to_game([1, 7])
      expect(game.game_frames).equal? [[1, 7]]
    end

    it 'if there are 10 frames it returns without adding the frames' do
      game1 = Game.new
      frames = 10.times { game1.add_frame_to_game([1,1]) }
      expect { game1.add_frame_to_game([2, 2]) }.to raise_error('Game over!!')
    end
  end

  describe '#ten_frames?' do
    it 'returns true if the array contains ten frames' do
      game1 = Game.new
      frames = 10.times { game1.add_frame_to_game([1,1]) }
      expect(game1.ten_frames?).to equal true
    end
  end
end
