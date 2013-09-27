require 'pry'



class Stack
  attr_reader :flashcards
  def initialize
    @flashcards = []
    add_cards
  end

  def add_cards
   all_lines = []
    File.open('flashcard_samples.txt').each do |line|
      all_lines << line
    end
    all_answer_and_definitions_and_spaces = all_lines.each_slice(3).to_a
    all_answer_and_definitions_and_spaces.each do |x|
      x.pop if x[-1] == "\n"
      @flashcards << Flashcard.new(x[0],x[1])
    end
  end

  def serve
    flashcards.shift
  end
  
  def shuffle!
    @flashcards = flashcards.shuffle
  end

  def put_on_bottom(flashcard)
    @flashcards << flashcard
  end
end

class Flashcard
  attr_reader :answer, :question
  def initialize(question, answer)
    @answer = answer
    @question = question
  end

  def is_correct?(guess)
    answer == guess
  end

end



  #fuckshitup
stack = Stack.new
# binding.pry
# stack.shuffle!
# checked_card = stack.serve
# puts checked_card.answer
# puts stack.flashcards[0].answer
# puts stack.flashcards[-1].answer
# stack.put_on_bottom(checked_card)
# puts stack.flashcards[-2].answer
# puts stack.flashcards[-1].answer

