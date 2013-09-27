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

#   def 
#   end


# end

flashcard_stack = Stack.new
flashcard_view = Flashcardview.new(flashcard_stack.flashcards[0])

flashcard_view.show_question
flashcard_view.take_answer

puts flashcard_view.answer
