#Initialize View class

class FlashcardView

  def show_question(card)
    puts card.question
  end

  def user_answer
    gets
  end

  def correct_guess
    puts "Correct! Next card..."
  end

  def incorrect_guess
    puts "Wrong, loser! Next card..."
  end


end
