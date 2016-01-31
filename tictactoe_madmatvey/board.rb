class Board
  def initialize(rows = 3, cols = 3)
    @board = Array.new(rows) { Array.new(cols, nil) }
    @rows = rows
    @cols = cols
    @moves_left = @rows * @cols
  end

  def grid
    @board.map do |row|
      row.map { |e| e == nil ? " " : "#{e}" }
        .join(' | ')
    end.join("\n" + '---' * dashes(@cols) + "\n")
  end

  # to make shit pretty...we print out the dashes differently depending on how many columns the grid
  def dashes(cols)
    ((cols > 3) ? (cols <= 9 ? cols + 2 : cols + 3) : cols)
  end

  def print_board
    print "\n"
    print grid
    print "\n"
  end

  def to_s
    print_board
  end

end

class TicTacToeGame
  def initialize
    @board = Board.new
    @players = [:X, :O].cycle
    @current_player = @players[0]
  end

  def start
    @board.print_board
  end

  def player_do_step
    puts "#{@current_player} >> "
  end

end

test_game = TicTacToeGame.new
test_game.start