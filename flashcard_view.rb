#Initialize View class

class FlashcardView
  attr_reader :question, :answer, :guess
  def initialize(card)
    @question = card.question
    @answer = card.answer
  end

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
