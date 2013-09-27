#Initialize View class

class FlashcardView

  def show_question(card)
    puts "QUESTION:" + card.question
  end

  def user_answer
    print "ANSWER: >"
    gets
  end

def result(outcome)
  outcome ? correct_guess : incorrect_guess
end

  private

  def correct_guess
    puts "Correct! Next card..."
  end

  def incorrect_guess
    puts "Wrong, loser! Next card..."
  end


end
