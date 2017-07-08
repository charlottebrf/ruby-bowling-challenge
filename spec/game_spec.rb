require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe "#initialize" do
    it "is initialized with ten frames" do
      frames = game.total_frames
      expect(frames.length).to equal 1
    end
  end

  describe "#add_first_roll" do
    it "adds the number of knocked over pins from the first roll to the frames" do
      result = game.add_first_roll([1, 7], ["-", "-"])
      expect(result).to equal 1
    end
  end

end
