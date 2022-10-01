class Knight
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    a = 0; b =0
    @sign = "♘"
    @dif_moves = [ 
    [a + 2, b + 1], [a + 1, b + 2], [a - 2, b + 1], [a - 1, b + 2],
    [a - 2, b - 1], [a - 1, b - 2], [a + 2, b - 1], [a - 1, b + 2]
    ]
    @beg_pos = [[0, 1], [0, 6]]
  end
end

class Bishop
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    @sign = "♗"
    @dif_moves = []
    a = 0; b =0
    num = 0
    until num == 8 do 
      @dif_moves.push(
        [a + num, b + num], [a - num, b + num], [a + num, b - num],
        [a - num, b - num]
      )
        num += 1
    end
    @beg_pos = [[0, 2], [0, 5]]
  end
end

class King
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    @sign = "♔"
    a = 0; b =0
    @dif_moves = [
    [a + 1, b], [a - 1, b], [a, b + 1], [a, b - 1], [a + 1, b + 1],
    [a + 1, b + 1], [a - 1, b + 1], [a + 1, b - 1], [a - 1, b - 1]
    ]
    @beg_pos = [[0, 4]]
  end
end

class Pawn
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    num = 0
    a = 0; b =0
    @sign = "♙"
    @dif_moves = [[a, b + 1], [a, b + 2]]
    @beg_pos = []
    until num == 8 do
      @beg_pos.push([1, num])
      num += 1
    end
  end
end

class Queen
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    @sign = "♕"
    @dif_moves = []
    @beg_pos = [[0, 3]]
  end
end

class Rook 
  attr_accessor :dif_moves, :sign, :beg_pos
  def initialize
    @sign = "♖"
    @dif_moves = []
    @beg_pos = [[0, 0], [0, 7]]
  end
end