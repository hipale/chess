require_relative 'figures'

class Player
  def initialize
  end

  def pick_figure(num)
    board = Board.new
    board.get_position(num)
  end

  def pick_pos(pos = nil)
    until $pos_moves.any? { |elm| elm == pos} do
       puts "Pick a valid position"
       pos = gets.chomp
    end
  end
end

class Board
  def initialize(y = 0)
    @pawn = Pawn.new
    figures = [Rook.new, Knight.new, Pawn.new, Bishop.new, King.new, Queen.new]
    @board_array = []
    pos_array = []
    figures.each do |figure|
      figure.beg_pos.each { |elm| pos_array.push([elm[0], elm[1], figure.sign]) }
    end
    pos_array = pos_array.sort
    until y == 8 do
      x_array = []
      x = 0
      until x == 8 do
        if  pos_array.any? { |elm| elm[0] == y && elm[1] == x }
          x_array.push(pos_array[y * 8 + x][2])
        else
          x_array.push("--")
        end
        x += 1
      end
      @board_array.push(x_array)
      x = 0
      y += 1
    end
    pp @board_array
  end

  def get_position(num)
    pos = [num / 8, num % 8 - 1]
    $beg_pos = pos
    possible_moves(Pawn.new)
  end

  def possible_moves(figure)
    $pos_moves = figure.dif_moves.select { |elm| elm.all? { |para| para >= 0 && para < 8} }
    return "Chose an move: #{$pos_moves}"
  end
end


 b = Board.new