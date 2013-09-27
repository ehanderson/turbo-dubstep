require 'pry'
class Flashcard
  attr_reader :answer, :question
  def initialize(question, answer)
    @answer = answer
    @question = question
  end
end


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
    all_answer_and_deffinitions_and_spaces = all_lines.each_slice(3).to_a
    all_answer_and_deffinitions_and_spaces.each do |x|
      x.pop if x[-1] == "\n"
      @flashcards << Flashcard.new(x[0],x[1])
    end
  end



  # something.each do |x|
  #   @flashcards << Flashcard.new(x)
  # end
end




  #fuckshitup
