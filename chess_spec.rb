require '.lib/main'

describe Player do
  let (:subject) {Player.new}
  
  describe "#pick_figure" do
    it "gives number value to the created board" do 
      num = 5
      expect(subject.pick_figure(num)).to eq(5)
    end
  end

  describe "#pick_pos" do
    it "creates new board with your changes" do
      pos = [1][2]
      expect(subject.pick_pos).to eq(12)
    end
  end
end

describe Board do
  let (:subject) {Board.new}
  
  describe "#get_position" do
    it "returns position of the picked figure" do
      num = 1
      expect(subject.position(num)).to eq([0][0])
    end
  end

  describe "#possible_moves" do
    it "returns the possible move of the figure" do
      pos = [0][0]
      figure = "knight"
      expect(subject.possible_moves([0][0], "knight")).to eq([[1][2]])
    end

    it "returns the possible moves of the figure" do
      pos = [0][1]
      figure = "knight"
      expect(subject.possible_moves([0][0], "knight")).to eq([[0][2], [0][3]])
    end
  end



end
