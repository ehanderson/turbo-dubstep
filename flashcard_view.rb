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

  def take_answer
    @guess = gets.chomp
  end

  

end
