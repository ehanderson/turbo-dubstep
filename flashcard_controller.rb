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
  #   answer == guess ? true : false
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

# game.stack.serve




# flashcard_view.correct_guess
# flashcard_view.incorrect_guess
