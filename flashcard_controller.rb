# Initialize Controller class
require_relative 'flashcard_models.rb'
require_relative 'flashcard_view.rb'

# class FlashcardController
#   def initialize

#   end

#   def get_stack_from_model
#     #Request stack instance from Model
#     flashcard_stack = Stack.new
#     return flashcard_stack
#   end

def true_or_false
    answer == guess ? true : false
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

# end

flashcard_stack = Stack.new
flashcard_view = FlashcardView.new(flashcard_stack.flashcards[0])


flashcard_view.correct_guess
flashcard_view.incorrect_guess
