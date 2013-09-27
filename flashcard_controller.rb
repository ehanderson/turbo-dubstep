# Initialize Controller class
require_relative 'flashcard_models.rb'
require_relative 'flashcard_view.rb'

class FlashcardController
  attr_reader :stack, :view
  def initialize
    @stack = Stack.new
    @view = FlashcardView.new
  end



  # def true_or_false
  #   guess == answer ? true : false
  # end

#   def determine correct?
# =>   return true if answer == user_answer
# =>   return false if answer != user_answer
# =>   (next_card)
#--------------------------------
#     until answer == user_answer
#       puts "Nope. Try again:"
#     else
#       puts "Correct! Next card:"
#   end

#  def next_card
#
#  end

end

game = FlashcardController.new
display = game.view
deck = game.stack
card = deck.serve
display.show_question(card)
display.prompt_for_answer
display.user_answer
display.show_answer(card)




# flashcard_view.correct_guess
# flashcard_view.incorrect_guess
