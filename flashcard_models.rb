class Flashcard
  attr_reader :answer, :question
  def initialize(answer, question)
    @answer = answer
    @question = question
end


class Stack
  attr_reader :flashcards
  def initialize
    @flashcards = []
    add_cards
  end

  def add_cards
    @flashcards = Flashcard.new("Feline", "Stupid name for cat")
  end
end




  #fuckshitup
