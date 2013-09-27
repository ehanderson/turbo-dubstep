#Initialize View class

class FlashcardView

  def show_question
    puts question
  end

  def user_answer
    guess = gets.chomp
  end

  def correct_guess
    puts "Correct! Next card..."
  end

  def incorrect_guess
    puts "Wrong, loser! Next card..."
  end


end
