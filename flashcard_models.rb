require 'pry'



class Stack
  attr_reader :flashcards, :correct_cards, :incorrect_cards
  def initialize
    @flashcards = []
    @correct_cards = []
    @incorrect_cards = []
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
    flashcards.shift if cards_left?
  end
  
  def shuffle!
    @flashcards = flashcards.shuffle
  end

  def do_something_with_this_card(card)
    if card.correct
      @correct_cards << card
    elsif card.correct == false
      @incorrect_cards << card
      # put_on_bottom(card)
    else 
      puts "How did this get here?"
        put_on_bottom(card)
    end
  end

  def final_results
    right = @correct_cards.length
    wrong = @incorrect_cards.length
    [right, wrong]
  end

  def cards_left?
    @flashcards.any?
  end

  private

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
