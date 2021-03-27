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

  def winner1
    @winning_combos.each do |win|
      if win - @player1_selected_cell = []
        true
      end
    end
  end

  def winner2
    @winning_combos.each do |win|
      if win - @player1_selected_cell = []
        true
      end
    end
  end
end
