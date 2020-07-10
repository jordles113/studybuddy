class Deck < ApplicationRecord
    has_many :flashcards
    validates :name, presence: true, uniqueness: true 

end
