# Initialize Controller class
require_relative 'flashcard_models.rb'
require_relative 'flashcard_view.rb'

class FlashcardController
  attr_reader :stack, :view
  def initialize
    @stack = Stack.new
    @view = FlashcardView.new
  end



  def true_or_false
    comp_answer == user_answer
  end

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

card = game.stack.serve
game.view.show_question(card)
user_answer = game.view.user_answer
comp_answer = card.answer
# puts comp_answer
# puts user_answer
puts comp_answer == user_answer




# flashcard_view.correct_guess
# flashcard_view.incorrect_guess
