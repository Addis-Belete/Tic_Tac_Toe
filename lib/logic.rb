module Logic
  def validate_selected_cell(number)
    @total_selected_cell = @player1_selected_cell + @player2_selected_cell
    if (1..9).none? { |element| element == number }
      false
    elsif @total_selected_cell.any? { |element| element == number }
      false
    else
      true
    end
  end

  def winner
    @winning_combos.each do |win|
      if win - @player1_selected_cell == []
        @win = true
      elsif win - @player2_selected_cell == []
        @win = true
      end
    end
    @win
  end

  def change_icon(selected_cell, icon)
    target = @my_array.find { |element| element == selected_cell }
    @my_array[target - 1] = icon
    board
  end
end
