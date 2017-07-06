require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe "#initialize" do
    it "is initialized with ten frames" do
      frames = game.total_frames
      expect(frames.length).to equal 10
    end
  end

end
