
class Knight
  def initialize
    @dif_moves = [ 
    [x + 2, y + 1], [x + 1, y + 2], [x - 2, y + 1], [x - 1, y + 2],
    [x - 2, y - 1], [x - 1, y - 2]
    ]
  end
end

class Bishop
  def initialize
    @dif_moves = []
    num = 0
    until num == 8 do 
      @dif_moves.push(
        [x + num, y + num], [x - num, y + num], [x + num, y - num],
        [x - num, y - num]
      )
    end
  end
end

class King
  def initialize
    @dif_moves = [
    [x + 1, y], [x - 1, y], [x, y + 1], [x, y - 1], [x + 1, y + 1],
    [x + 1, y + 1], [x - 1, y + 1], [x + 1, y - 1], [x - 1, y - 1]
    ]
  end
end