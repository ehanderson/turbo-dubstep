# Initialize Controller class
require_relative 'flashcard_models.rb'
require_relative 'flashcard_view.rb'

class FlashcardController
  attr_reader :stack, :view, :user_answer, :comp_answer
  def initialize
    @stack = Stack.new
    @view = FlashcardView.new
  end
end

game = FlashcardController.new
deck = game.stack
display = game.view

deck.shuffle!
while deck.cards_left?
  card = deck.serve
  display.show_question(card)
  guess = display.user_answer
  outcome = card.is_correct?(guess)
  display.result(outcome)
  deck.do_something_with_this_card(card)
end
final_results = deck.final_results
display.the_end(final_results)

