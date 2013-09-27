#Initialize View class

class FlashcardView

  def show_question(card)
    puts card.question
  end

  def show_answer(card)
    puts card.answer
  end

  def prompt_for_answer
    puts "....whats the answer?"
    print ">"
  end

  def user_answer
    guess = gets
  end

  def correct_guess
    puts "Correct! Next card..."
  end

  def incorrect_guess
    puts "Wrong, loser! Next card..."
  end


end
