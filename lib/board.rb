class Board
  attr_accessor :my_array

  def initialize(player1, player2)
    @my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1 = player1
    @player2 = player2
  end
end
