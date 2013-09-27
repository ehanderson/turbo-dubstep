#Initialize View class

class FlashcardView

  def show_question(card)
    puts "QUESTION: " + card.question
  end

  def user_answer
    print "ANSWER: >"
    gets
  end

  def result(outcome)
    outcome ? correct_guess : incorrect_guess
  end

  def the_end(result_ratio)
    puts "You answered #{result_ratio[0]} correct.\nYou answered #{result_ratio[1]} incorrectly!!"
    puts "I'd totally go out with you!"
    puts "Yes. But no. But yes." 
  end

  private

  def correct_guess
    puts
    puts "Nice guess there, boy-o! Next card..."
    puts
  end

  def incorrect_guess
    puts
    puts "Wrong, loser! Next card..."
    puts
  end
end
