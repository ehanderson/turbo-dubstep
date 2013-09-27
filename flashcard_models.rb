require 'pry'



class Stack
  attr_reader :flashcards, :completed_card
  def initialize
    @flashcards = []
    @completed_card = []
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

  def do_something_with_this_card(card)
    if card.correct
      @completed_card << card
    elsif card.correct == false
      put_on_bottom(card)
    else 
      raise "How did this get here?"
    end
  end

  def put_on_bottom(flashcard)
    @flashcards << flashcard
  end
end

class Flashcard
  attr_reader :answer, :question, :correct
  def initialize(question, answer)
    @question = question
    @answer = answer
    @correct = nil
  end

  def is_correct?(guess)
    @correct = (answer == guess)
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
# card = Flashcard.new("yes?", "no")
# card.is_correct?("nope")
# puts card.correct
# card = Flashcard.new("cat","dog")
# card2 = Flashcard.new("cat","cat")
# bad_card = Flashcard.new("moose","cars")
# card.is_correct?("dog")
# stack.do_something_with_this_card(card)
# puts stack.completed_card[0].answer
# card2.is_correct?("dog")
# stack.do_something_with_this_card(card2)
# puts stack.flashcards[-1].answer
# stack.do_something_with_this_card(bad_card)

